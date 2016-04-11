#pragma once
//==============================================================================
///
///    File: EdLevelManipRotate.hpp
///
/// Copyright (C) 2000-2014 by Smells Like Donkey Software Inc. All rights reserved.
///
/// This file is subject to the terms and conditions defined in
/// file 'LICENSE.txt', which is part of this source code package.
///
//==============================================================================

// Editor include
#include "EdLevelTool.hpp"

//==============================================================================
/// Forward declarations
//==============================================================================

namespace DT3 {
    class PlaceableObject;
    class CameraObject;
    class Matrix4;
    class MaterialResource;
    class ShaderResource;
}

class EdLevelToolWindow;
class EdLevelToolEvent;

//==============================================================================
/// Class
//==============================================================================

class EdLevelManipRotate : public EdLevelTool
{
    Q_OBJECT
    Q_CLASSINFO("tool_name", "Rotate")
public:
    EdLevelManipRotate(QObject *p=nullptr);
    virtual ~EdLevelManipRotate(void) = default;

public:
    virtual void draw(const std::shared_ptr<DT3::CameraObject> &camera, float scale);

    virtual void doEvent(const EdLevelToolEvent &event);

    virtual DT3::Matrix4 getManipulatorTransform(void) const;

private:
    enum
    {
        ROTATE_X      = 1,
        ROTATE_Y      = 2,
        ROTATE_Z      = 3,
        ROTATE_SCREEN = 4,
        ROTATE        = 5
    };

    std::shared_ptr<DT3::MaterialResource> _tool_material;
    std::shared_ptr<DT3::ShaderResource>   _shader;

    unsigned int _starting_axis;
    int          _mouse_x;
    int          _mouse_y;
};

//==============================================================================
//==============================================================================
