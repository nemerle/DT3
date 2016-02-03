#pragma once
#ifndef DT3_SCRIPTINGKEYFRAMESFLOAT
#define DT3_SCRIPTINGKEYFRAMESFLOAT
//==============================================================================
///
///	File: ScriptingKeyframesFloat.hpp
///
/// Copyright (C) 2000-2014 by Smells Like Donkey Software Inc. All rights reserved.
///
/// This file is subject to the terms and conditions defined in
/// file 'LICENSE.txt', which is part of this source code package.
///
//==============================================================================

#include "DT3Core/Scripting/ScriptingKeyframes.hpp"

//==============================================================================
//==============================================================================

namespace DT3 {

//==============================================================================
/// Forward declarations
//==============================================================================

//==============================================================================
/// Keyframes for Float type.
//==============================================================================

class ScriptingKeyframesFloat: public ScriptingKeyframes {
    public:
        DEFINE_TYPE(ScriptingKeyframesFloat,ScriptingKeyframes)
        DEFINE_CREATE_AND_CLONE
        DEFINE_PLUG_NODE

                                    ScriptingKeyframesFloat	(void);
                                    ScriptingKeyframesFloat	(const ScriptingKeyframesFloat &rhs);
        ScriptingKeyframesFloat &	operator =				(const ScriptingKeyframesFloat &rhs);
        virtual						~ScriptingKeyframesFloat(void);

        virtual void				archive                 (const std::shared_ptr<Archive> &archive);

    public:
        /// Computes the value of the node
        /// \param plug plug to compute
        bool					compute					(const PlugBase *plug);

        /// Set a key at the current time
        virtual void				set_key					(void);

        /// Clear a key at the current time
        virtual void				clear_key				(void);

        /// Clear a key with index
        /// \param k key index
        virtual void				clear_key				(int32_t k);

        /// Get the number of keys
        /// \return number of keys
        virtual DTsize				num_keys                (void) const            {	return _keyframes.size();		}

        /// Returns a unique ID for this key
        /// \param k key index
        /// \return ID
        virtual int32_t               key_id                  (int32_t k) const        {   return _keyframes[k]._id;		}

        /// Get the time for the key
        /// \param k key index
        /// \return time
        virtual DTfloat				key_time                (int32_t k) const        {	return _keyframes[k]._time;		}

        /// Set the time for the key
        /// \param k key index
        /// \param time key time
        /// \return new index
        virtual int32_t				set_key_time            (int32_t k, DTfloat time);

    private:
        Plug<DTfloat>				_t;
        Plug<DTfloat>				_out;
        int32_t						_id;

        struct keyframe {
            int operator < (const keyframe& rhs) const	{	return _time < rhs._time;	}

            DTfloat                 _time;
            DTfloat                 _value;
            int32_t                   _id;
        };

        std::vector<keyframe>		_keyframes;
        mutable int32_t				_keyframe_cache;
};

//==============================================================================
//==============================================================================

} // DT3

#endif
