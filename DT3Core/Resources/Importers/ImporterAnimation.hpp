#pragma once
//==============================================================================
///
///    File: ImporterAnimation.hpp
///
/// Copyright (C) 2000-2014 by Smells Like Donkey Software Inc. All rights reserved.
///
/// This file is subject to the terms and conditions defined in
/// file 'LICENSE.txt', which is part of this source code package.
///
//==============================================================================

#include "DT3Core/Types/Base/BaseClass.hpp"
#include <string>

//==============================================================================
//==============================================================================

namespace DT3 {

//==============================================================================
/// Forward declarations
//==============================================================================

class AnimationResource;

//==============================================================================
/// Class
//==============================================================================

class ImporterAnimation: public BaseClass {
    public:
        DEFINE_TYPE(ImporterAnimation,BaseClass)

                                    ImporterAnimation        (void) = default;
        virtual                        ~ImporterAnimation        (void) = default;
                                    ImporterAnimation        (const ImporterAnimation &rhs) = delete;
        ImporterAnimation &            operator =                (const ImporterAnimation &rhs) = delete;

    public:
        /// Imports an animation into an AnimationResource
        /// \param target object to import animation into
        /// \param args arguments to importer
        /// \return error code
        virtual DTerr                import                    (AnimationResource *target, std::string args) = 0;

};

//==============================================================================
//==============================================================================

} // DT3
