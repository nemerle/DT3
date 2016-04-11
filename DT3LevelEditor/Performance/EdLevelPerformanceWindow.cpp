//==============================================================================
///
///    File: EdLevelPerformanceWindow.cpp
///
/// Copyright (C) 2000-2014 by Smells Like Donkey Software Inc. All rights reserved.
///
/// This file is subject to the terms and conditions defined in
/// file 'LICENSE.txt', which is part of this source code package.
///
//==============================================================================

// Editor include
#include "EdLevelPerformanceWindow.hpp"
#include "EdLevelDocument.hpp"

// Qt include
#include <QtCore/QDebug>

// Engine includes
#include "DT3Core/System/Profiler.hpp"

//==============================================================================
//==============================================================================

using namespace DT3;

//==============================================================================
//==============================================================================

const int EdLevelPerformanceWindow::NUM_SAMPLES = 150;
const float EdLevelPerformanceWindow::ENTRY_HEIGHT = 100.0F;
const float EdLevelPerformanceWindow::TITLE_WIDTH = 150.0F;
const float EdLevelPerformanceWindow::TITLE_HEIGHT = 20.0F;
const float EdLevelPerformanceWindow::LABEL_HEIGHT = 20.0F;

//==============================================================================
//==============================================================================

EdLevelPerformanceWindow::EdLevelPerformanceWindow(QWidget *parent, QToolBar *toolbar, EdLevelDocument *document)
    :   QWidget     (parent),
        _font       ("Arial", 12),
        _font_small ("Arial", 10)
{
    _document = document;
    _toolbar = toolbar;

    _vert_scrollbar = new QScrollBar(Qt::Vertical, this);
    _vert_scrollbar->setSingleStep(10);

    connect(    _vert_scrollbar,    SIGNAL(valueChanged(int)),
                this,               SLOT(onScroll(int))   );

    _scroll_width = _vert_scrollbar->sizeHint().width();

    // Copy categories
    std::list<ProfilerCategory*>& categories = profiler_categories ();

    for (auto &i : categories) {
        Data data;
        data._category = i;

        _data.push_back(data);
    }

    // For autoscroll

    connect(&_sample_timer,  &QTimer::timeout,  this, &EdLevelPerformanceWindow::onSample);

    _sample_timer.setSingleShot(false);
    _sample_timer.start(50);

}

//==============================================================================
//==============================================================================

void EdLevelPerformanceWindow::paintEvent(QPaintEvent * /* event */)
{
    QPainter painter(this);
    draw(&painter);
}

void EdLevelPerformanceWindow::draw(QPainter *painter)
{
    painter->translate(0, -_vert_scrollbar->value());

    painter->setRenderHint(QPainter::Antialiasing, true);

    float ypos = 0.0F;

    for (Data &i : _data) {
        QRectF rect(0,ypos,width(),ENTRY_HEIGHT);
        QRectF graph = rect.adjusted(TITLE_WIDTH, 5, -5-_scroll_width, -5);

        // Draw Border
        painter->setClipRect(rect);

        painter->setPen(QPen(QColor(70,70,70,255),0));
        painter->setBrush(QBrush(QColor(100,100,100,255)));
        painter->drawRect(rect);

        // Draw Title
        painter->setPen(QPen(QColor(0,0,0,255),1));
        painter->setFont(_font);
        painter->drawText( QRectF(10,ypos,TITLE_WIDTH, TITLE_HEIGHT), Qt::AlignLeft | Qt::AlignVCenter, i._category->category() );

        // Draw Graph
        painter->setClipRect(graph);

        painter->setPen(QPen(QColor(100,100,100,255),0));
        painter->setBrush(QBrush(QColor(70,70,70,255)));
        painter->drawRect(graph);

        float step = graph.width() / NUM_SAMPLES;

        if (step > 4) {
            // Draw Grid
            for (float x = 0.0F; x < rect.width(); x += step) {
                painter->drawLine ( x + graph.x(), graph.y() + graph.height(),
                                    x + graph.x(), graph.y() );

            }
        }


        float xpos_graph = 0.0F;
        float ypos_graph = 0.0F;

        // Find peak and move points to array
        float max_value = -std::numeric_limits<float>::infinity();
        float average_value = 0.0F;

        std::vector<QPoint> points;
        points.resize(i._values.size());

        std::list<float>::iterator j;
        int jj;

        // Find max
        for (float val : i._values) {
            average_value += val;
            if (val > max_value)    max_value = val;
        }

        average_value /= i._values.size();


        // Calculate points
        for (j = i._values.begin(), jj = 0; j != i._values.end(); ++j, ++jj) {
            float val = *j;

            // Position in graph
            ypos_graph = val / max_value * graph.height();

            points[jj] = QPoint(xpos_graph + graph.x(), graph.y() + graph.height() - ypos_graph);

            xpos_graph += step;
        }

        // Draw Graph
        painter->setPen(QPen(QColor(0,255,0,255),3));
        painter->drawPoints(&points[0],(int) points.size());

        painter->setPen(QPen(QColor(0,255,0,255),0));
        painter->drawPolyline(&points[0],(int) points.size());

        // Draw max value
        painter->setFont(_font_small);
        painter->drawText(  QRect(graph.x(), graph.y(), graph.width(), LABEL_HEIGHT),
                            Qt::AlignLeft | Qt::AlignTop, QString("%1 ms").arg(max_value * 1000) );

        // Draw average value
        ypos_graph = average_value / max_value * graph.height();
        ypos_graph = graph.y() + graph.height() - ypos_graph;

        painter->setPen(QPen(QColor(0,255,0,255),0,Qt::DotLine));
        painter->drawLine(graph.x(), ypos_graph, graph.x() + graph.width(), ypos_graph);
        painter->drawText(  QRect(graph.x(), ypos_graph - LABEL_HEIGHT, graph.width(), LABEL_HEIGHT),
                            Qt::AlignLeft | Qt::AlignBottom, QString("%1 ms").arg(average_value * 1000) );

        ypos += ENTRY_HEIGHT;
    }

}

//==============================================================================
//==============================================================================

void EdLevelPerformanceWindow::resizeEvent (QResizeEvent *event)
{
    // Setup scroll bar
    _vert_scrollbar->setPageStep(rect().height());
    _vert_scrollbar->setRange(0, (unsigned int) _data.size() * ENTRY_HEIGHT - rect().height());

    _vert_scrollbar->setGeometry(rect().width() - _scroll_width, 0, _scroll_width, rect().height());
}

//==============================================================================
//==============================================================================

void EdLevelPerformanceWindow::onSample (void)
{
    // Display all categories
    for (Data &i : _data) {
        ProfilerCategory *category = i._category;

        float accumulated_time = category->accumulated_time();

        // Add sample
        i._values.push_back(accumulated_time);
        while (i._values.size() > NUM_SAMPLES)
            i._values.pop_front();

        category->clear();
    }

    update();
}

void EdLevelPerformanceWindow::onScroll (int scroll)
{
    update();
}

void EdLevelPerformanceWindow::onRefreshPerformance()
{
    qDebug() << "unimplemented onRefreshPerformance()";
}

void EdLevelPerformanceWindow::wheelEvent (QWheelEvent *event)
{
    int move = -event->delta();

    if (event->orientation() == Qt::Vertical) {
        _vert_scrollbar->setValue(_vert_scrollbar->value() + move);
    }

    update();

    event->accept();
}

//==============================================================================
//==============================================================================
