#INCLUDEPATH += ../ $$PWD
#DEPENDPATH += ../ $$PWD/
message($$PWD)


ios:macosx:{
}
linux:{
    HEADERS += $$PWD/../DT3Linux/HAL.hpp \

    SOURCES += $$PWD/../DT3Linux/HAL.cpp \


    HEADERS += $$PWD/../DT3OpenGL/DT3OpenGL.hpp \
                $$PWD/../DT3OpenGL/DT3OpenGLResources.hpp \

    SOURCES += $$PWD/../DT3OpenGL/DT3OpenGL.cpp  \
                 $$PWD/../DT3OpenGL/DT3OpenGLResources.cpp \

}
win32:{}

HEADERS += \
    $$PWD/Components/ComponentBase.hpp \
    $$PWD/Components/ComponentDrawCamera.hpp \
    $$PWD/Components/ComponentDrawGridImagePlane.hpp \
    $$PWD/Components/ComponentDrawImagePlane.hpp \
    $$PWD/Components/ComponentDrawMesh.hpp \
    $$PWD/Components/ComponentGUIButton.hpp \
    $$PWD/Components/ComponentGUIDrawButton.hpp \
    $$PWD/Components/ComponentGUIDrawIcon.hpp \
    $$PWD/Components/ComponentGUIDrawText.hpp \
    $$PWD/Components/ComponentGUIScroller.hpp \
    $$PWD/Components/ComponentGUIScrollerLayout.hpp \
    $$PWD/Components/ComponentGUIToggleButton.hpp \
    $$PWD/Devices/DeviceAudio.hpp \
    $$PWD/Devices/DeviceBase.hpp \
    $$PWD/Devices/DeviceGraphics.hpp \
    $$PWD/Devices/DeviceInput.hpp \
    $$PWD/Devices/DeviceMusic.hpp \
    $$PWD/Devices/DeviceNetwork.hpp \
    $$PWD/Entry/GameMainThread.hpp \
    $$PWD/Objects/CameraObject.hpp \
    $$PWD/Objects/GameController.hpp \
    $$PWD/Objects/GUIController.hpp \
    $$PWD/Objects/GUIObject.hpp \
    $$PWD/Objects/LightObject.hpp \
    $$PWD/Objects/ObjectBase.hpp \
    $$PWD/Objects/ParticleSystem.hpp \
    $$PWD/Objects/PlaceableObject.hpp \
    $$PWD/Objects/PlayerController.hpp \
    $$PWD/Objects/SimpleSoundSourceObject.hpp \
    $$PWD/Objects/SoundBusSourceObject.hpp \
    $$PWD/Objects/SoundSourceObject.hpp \
    $$PWD/Resources/Importers/ImporterAnimation.hpp \
    $$PWD/Resources/Importers/ImporterAnimationTWA.hpp \
    $$PWD/Resources/Importers/ImporterFont.hpp \
    $$PWD/Resources/Importers/ImporterFontTTF.hpp \
    $$PWD/Resources/Importers/ImporterGeometry.hpp \
    $$PWD/Resources/Importers/ImporterGeometry3DS.hpp \
    $$PWD/Resources/Importers/ImporterGeometryOBJ.hpp \
    $$PWD/Resources/Importers/ImporterGeometryTWM.hpp \
    $$PWD/Resources/Importers/ImporterImage.hpp \
    $$PWD/Resources/Importers/ImporterImageJPG.hpp \
    $$PWD/Resources/Importers/ImporterImagePNG.hpp \
    $$PWD/Resources/Importers/ImporterImagePVR.hpp \
    $$PWD/Resources/Importers/ImporterMaterial.hpp \
    $$PWD/Resources/Importers/ImporterMaterialMAT.hpp \
    $$PWD/Resources/Importers/ImporterShader.hpp \
    $$PWD/Resources/Importers/ImporterShaderSHDR.hpp \
    $$PWD/Resources/Importers/ImporterSound.hpp \
    $$PWD/Resources/Importers/ImporterSoundWAV.hpp \
    $$PWD/Resources/ResourceTypes/AnimationResource.hpp \
    $$PWD/Resources/ResourceTypes/FontResource.hpp \
    $$PWD/Resources/ResourceTypes/GeometryResource.hpp \
    $$PWD/Resources/ResourceTypes/MaterialResource.hpp \
    $$PWD/Resources/ResourceTypes/Resource.hpp \
    $$PWD/Resources/ResourceTypes/ShaderResource.hpp \
    $$PWD/Resources/ResourceTypes/SoundResource.hpp \
    $$PWD/Resources/ResourceTypes/TextureResource2D.hpp \
    $$PWD/Resources/ResourceTypes/TextureResource3D.hpp \
    $$PWD/Resources/ResourceTypes/TextureResourceCube.hpp \
    $$PWD/Scripting/ScriptingABS.hpp \
    $$PWD/Scripting/ScriptingAccelerometer.hpp \
    $$PWD/Scripting/ScriptingAdd.hpp \
    $$PWD/Scripting/ScriptingAnalytics.hpp \
    $$PWD/Scripting/ScriptingAND.hpp \
    $$PWD/Scripting/ScriptingAnimation.hpp \
    $$PWD/Scripting/ScriptingAnimationCycler.hpp \
    $$PWD/Scripting/ScriptingARTracker.hpp \
    $$PWD/Scripting/ScriptingATAN2.hpp \
    $$PWD/Scripting/ScriptingBase.hpp \
    $$PWD/Scripting/ScriptingBoolSwitcher.hpp \
    $$PWD/Scripting/ScriptingBoolToEvent.hpp \
    $$PWD/Scripting/ScriptingCameraPredictor.hpp \
    $$PWD/Scripting/ScriptingCameraShake.hpp \
    $$PWD/Scripting/ScriptingCeil.hpp \
    $$PWD/Scripting/ScriptingChangeRange.hpp \
    $$PWD/Scripting/ScriptingClamp.hpp \
    $$PWD/Scripting/ScriptingColorInterpolator.hpp \
    $$PWD/Scripting/ScriptingColorToComponents.hpp \
    $$PWD/Scripting/ScriptingComponentsToColor.hpp \
    $$PWD/Scripting/ScriptingComponentsToVector2.hpp \
    $$PWD/Scripting/ScriptingComponentsToVector3.hpp \
    $$PWD/Scripting/ScriptingCompute.hpp \
    $$PWD/Scripting/ScriptingConversions.hpp \
    $$PWD/Scripting/ScriptingCOS.hpp \
    $$PWD/Scripting/ScriptingCounter.hpp \
    $$PWD/Scripting/ScriptingCRC32.hpp \
    $$PWD/Scripting/ScriptingDelayOff.hpp \
    $$PWD/Scripting/ScriptingDelayOn.hpp \
    $$PWD/Scripting/ScriptingDivide.hpp \
    $$PWD/Scripting/ScriptingEaseInEaseOut.hpp \
    $$PWD/Scripting/ScriptingEqual.hpp \
    $$PWD/Scripting/ScriptingEqualInt.hpp \
    $$PWD/Scripting/ScriptingEventGate.hpp \
    $$PWD/Scripting/ScriptingFilter2Pole.hpp \
    $$PWD/Scripting/ScriptingFLIPFLOP.hpp \
    $$PWD/Scripting/ScriptingFloatSwitcher.hpp \
    $$PWD/Scripting/ScriptingFloor.hpp \
    $$PWD/Scripting/ScriptingFrac.hpp \
    $$PWD/Scripting/ScriptingGeometry.hpp \
    $$PWD/Scripting/ScriptingGlobalPoll.hpp \
    $$PWD/Scripting/ScriptingGlobalReader.hpp \
    $$PWD/Scripting/ScriptingGlobalWriter.hpp \
    $$PWD/Scripting/ScriptingGreaterThan.hpp \
    $$PWD/Scripting/ScriptingGreaterThanEqual.hpp \
    $$PWD/Scripting/ScriptingGyro.hpp \
    $$PWD/Scripting/ScriptingInRange.hpp \
    $$PWD/Scripting/ScriptingIntSwitcher.hpp \
    $$PWD/Scripting/ScriptingIsTransitioning.hpp \
    $$PWD/Scripting/ScriptingKeyDown.hpp \
    $$PWD/Scripting/ScriptingKeyframes.hpp \
    $$PWD/Scripting/ScriptingKeyframesBool.hpp \
    $$PWD/Scripting/ScriptingKeyframesColor.hpp \
    $$PWD/Scripting/ScriptingKeyframesEvent.hpp \
    $$PWD/Scripting/ScriptingKeyframesFloat.hpp \
    $$PWD/Scripting/ScriptingKeyframesGridImageData.hpp \
    $$PWD/Scripting/ScriptingKeyframesMaterialResource.hpp \
    $$PWD/Scripting/ScriptingKeyframesMatrix3.hpp \
    $$PWD/Scripting/ScriptingKeyframesRoot.hpp \
    $$PWD/Scripting/ScriptingKeyframesVector2.hpp \
    $$PWD/Scripting/ScriptingKeyframesVector3.hpp \
    $$PWD/Scripting/ScriptingLessThan.hpp \
    $$PWD/Scripting/ScriptingLessThanEqual.hpp \
    $$PWD/Scripting/ScriptingLoadConfig.hpp \
    $$PWD/Scripting/ScriptingMaterial.hpp \
    $$PWD/Scripting/ScriptingMaterialAnimator.hpp \
    $$PWD/Scripting/ScriptingMaterialBuilder.hpp \
    $$PWD/Scripting/ScriptingMaterialSwitcher.hpp \
    $$PWD/Scripting/ScriptingMatrix3Inverse.hpp \
    $$PWD/Scripting/ScriptingMatrix3Multiply.hpp \
    $$PWD/Scripting/ScriptingMatrix3ToComponents.hpp \
    $$PWD/Scripting/ScriptingMatrix3Transpose.hpp \
    $$PWD/Scripting/ScriptingMax.hpp \
    $$PWD/Scripting/ScriptingMin.hpp \
    $$PWD/Scripting/ScriptingMultiply.hpp \
    $$PWD/Scripting/ScriptingMusicPlayer.hpp \
    $$PWD/Scripting/ScriptingNOT.hpp \
    $$PWD/Scripting/ScriptingNotEqual.hpp \
    $$PWD/Scripting/ScriptingOpenURL.hpp \
    $$PWD/Scripting/ScriptingOR.hpp \
    $$PWD/Scripting/ScriptingOrientTowards.hpp \
    $$PWD/Scripting/ScriptingParticleAccelerator.hpp \
    $$PWD/Scripting/ScriptingParticleCollisionPlane.hpp \
    $$PWD/Scripting/ScriptingParticleColorRandomizer.hpp \
    $$PWD/Scripting/ScriptingParticleColorSequencer.hpp \
    $$PWD/Scripting/ScriptingParticleDirectionalVelocityRandomizer.hpp \
    $$PWD/Scripting/ScriptingParticleEmitter.hpp \
    $$PWD/Scripting/ScriptingParticleEmitterBurst.hpp \
    $$PWD/Scripting/ScriptingParticleEmitterPeriodic.hpp \
    $$PWD/Scripting/ScriptingParticleFriction.hpp \
    $$PWD/Scripting/ScriptingParticleKillZone.hpp \
    $$PWD/Scripting/ScriptingParticlePath.hpp \
    $$PWD/Scripting/ScriptingParticlePointAttractor.hpp \
    $$PWD/Scripting/ScriptingParticlePositionRandomizer.hpp \
    $$PWD/Scripting/ScriptingParticleRepel.hpp \
    $$PWD/Scripting/ScriptingParticleSizeRandomizer.hpp \
    $$PWD/Scripting/ScriptingParticleSizeSequencer.hpp \
    $$PWD/Scripting/ScriptingParticleStamFluids.hpp \
    $$PWD/Scripting/ScriptingParticleTimeFader.hpp \
    $$PWD/Scripting/ScriptingParticleTimeRotator.hpp \
   $$PWD/Scripting/ScriptingParticleTimeScaler.hpp \
   $$PWD/Scripting/ScriptingParticleVelocityAdder.hpp \
   $$PWD/Scripting/ScriptingParticleVelocityRandomizer.hpp \
   $$PWD/Scripting/ScriptingParticleVelocityRing.hpp \
   $$PWD/Scripting/ScriptingParticleVelocityRotator.hpp \
   $$PWD/Scripting/ScriptingParticleVelocityUniformRing.hpp \
   $$PWD/Scripting/ScriptingParticleVelocityWake.hpp \
   $$PWD/Scripting/ScriptingPower.hpp \
   $$PWD/Scripting/ScriptingPulse.hpp \
   $$PWD/Scripting/ScriptingPulseNoReset.hpp \
   $$PWD/Scripting/ScriptingRadioButton.hpp \
   $$PWD/Scripting/ScriptingRandom.hpp \
   $$PWD/Scripting/ScriptingRotateX.hpp \
   $$PWD/Scripting/ScriptingRotateY.hpp \
   $$PWD/Scripting/ScriptingRotateZ.hpp \
   $$PWD/Scripting/ScriptingScreen.hpp \
   $$PWD/Scripting/ScriptingSequencer.hpp \
   $$PWD/Scripting/ScriptingSIN.hpp \
   $$PWD/Scripting/ScriptingSinSuperposition.hpp \
   $$PWD/Scripting/ScriptingSlerp.hpp \
   $$PWD/Scripting/ScriptingSound.hpp \
   $$PWD/Scripting/ScriptingSoundBase.hpp \
   $$PWD/Scripting/ScriptingSoundBiQuadFilter.hpp \
   $$PWD/Scripting/ScriptingSoundBusIn.hpp \
   $$PWD/Scripting/ScriptingSoundBusOut.hpp \
   $$PWD/Scripting/ScriptingSoundGain.hpp \
   $$PWD/Scripting/ScriptingSoundHighPassFilter3db.hpp \
   $$PWD/Scripting/ScriptingSoundHRTF.hpp \
   $$PWD/Scripting/ScriptingSoundHRTFData.hpp \
   $$PWD/Scripting/ScriptingSoundLowPassFilter3db.hpp \
   $$PWD/Scripting/ScriptingSoundMixer.hpp \
   $$PWD/Scripting/ScriptingSoundRandomizer.hpp \
   $$PWD/Scripting/ScriptingSoundResample.hpp \
   $$PWD/Scripting/ScriptingSoundReverb.hpp \
   $$PWD/Scripting/ScriptingSpline.hpp \
   $$PWD/Scripting/ScriptingStringConcat.hpp \
   $$PWD/Scripting/ScriptingStringEquals.hpp \
   $$PWD/Scripting/ScriptingStringSwitcher.hpp \
   $$PWD/Scripting/ScriptingStringToPath.hpp \
   $$PWD/Scripting/ScriptingSubtitleDriver.hpp \
   $$PWD/Scripting/ScriptingSubtract.hpp \
   $$PWD/Scripting/ScriptingTexture2D.hpp \
   $$PWD/Scripting/ScriptingTimer.hpp \
   $$PWD/Scripting/ScriptingTimerActive.hpp \
   $$PWD/Scripting/ScriptingTimerRanged.hpp \
   $$PWD/Scripting/ScriptingTimerSuper.hpp \
   $$PWD/Scripting/ScriptingTimerUpDown.hpp \
   $$PWD/Scripting/ScriptingTimerUpReset.hpp \
   $$PWD/Scripting/ScriptingTouch.hpp \
   $$PWD/Scripting/ScriptingTransitionLevel.hpp \
   $$PWD/Scripting/ScriptingVector2ToComponents.hpp \
   $$PWD/Scripting/ScriptingVector3Add.hpp \
   $$PWD/Scripting/ScriptingVector3Clip.hpp \
   $$PWD/Scripting/ScriptingVector3Filter2Pole.hpp \
   $$PWD/Scripting/ScriptingVector3Mul.hpp \
   $$PWD/Scripting/ScriptingVector3Mul3.hpp \
   $$PWD/Scripting/ScriptingVector3Normalize.hpp \
   $$PWD/Scripting/ScriptingVector3Passthrough.hpp \
   $$PWD/Scripting/ScriptingVector3Project.hpp \
   $$PWD/Scripting/ScriptingVector3Random.hpp \
   $$PWD/Scripting/ScriptingVector3Smooth.hpp \
   $$PWD/Scripting/ScriptingVector3Subtract.hpp \
   $$PWD/Scripting/ScriptingVector3Switcher.hpp \
   $$PWD/Scripting/ScriptingVector3ToComponents.hpp \
   $$PWD/Scripting/ScriptingVector3ToLength.hpp \
   $$PWD/Scripting/ScriptingVector3ToLengthSquared.hpp \
   $$PWD/Scripting/ScriptingVector3Transform.hpp \
   $$PWD/Scripting/ScriptingVector3Unproject.hpp \
   $$PWD/Scripting/ScriptingVector3UnprojectToZ.hpp \
   $$PWD/Scripting/ScriptingXOR.hpp \
   $$PWD/System/AppConfig.hpp \
   $$PWD/System/Application.hpp \
   $$PWD/System/Command.hpp \
   $$PWD/System/Configure.hpp \
   $$PWD/System/Console.hpp \
   $$PWD/System/Factory.hpp \
   $$PWD/System/FileManager.hpp \
   $$PWD/System/Globals.hpp \
   $$PWD/System/Profiler.hpp \
   $$PWD/System/StaticInitializer.hpp \
   $$PWD/System/System.hpp \
   $$PWD/System/SystemCallbacks.hpp \
   $$PWD/System/UnitTest.hpp \
   $$PWD/Transitions/TransitionBase.hpp \
   $$PWD/Transitions/TransitionFadeOutIn.hpp \
   $$PWD/Types/Animation/AnimationKeyframe.hpp \
   $$PWD/Types/Animation/AnimationPose.hpp \
   $$PWD/Types/Animation/AnimationPoseJoint.hpp \
   $$PWD/Types/Animation/AnimationTrack.hpp \
   $$PWD/Types/Animation/PropertyAnimator.hpp \
   $$PWD/Types/Animation/Skeleton.hpp \
   $$PWD/Types/Animation/SkeletonJoint.hpp \
   $$PWD/Types/Base/BaseClass.hpp \
   $$PWD/Types/Base/BaseInclude.hpp \
   $$PWD/Types/FileBuffer/Archive.hpp \
   $$PWD/Types/FileBuffer/ArchiveBinaryBufferReader.hpp \
   $$PWD/Types/FileBuffer/ArchiveBinaryBufferWriter.hpp \
   $$PWD/Types/FileBuffer/ArchiveBinaryReader.hpp \
   $$PWD/Types/FileBuffer/ArchiveBinaryWriter.hpp \
   $$PWD/Types/FileBuffer/ArchiveData.hpp \
   $$PWD/Types/FileBuffer/ArchiveObjectQueue.hpp \
   $$PWD/Types/FileBuffer/ArchiveProcess.hpp \
   $$PWD/Types/FileBuffer/ArchiveProcessEvents.hpp \
   $$PWD/Types/FileBuffer/ArchiveProcessPlugs.hpp \
   $$PWD/Types/FileBuffer/ArchiveProcessPointers.hpp \
   $$PWD/Types/FileBuffer/ArchivePropertyReaderWriter.hpp \
   $$PWD/Types/FileBuffer/ArchiveTextBufferReader.hpp \
   $$PWD/Types/FileBuffer/ArchiveTextBufferWriter.hpp \
   $$PWD/Types/FileBuffer/ArchiveTextReader.hpp \
   $$PWD/Types/FileBuffer/ArchiveTextWriter.hpp \
   $$PWD/Types/FileBuffer/BinaryBufferStream.hpp \
   $$PWD/Types/FileBuffer/BinaryFileStream.hpp \
   $$PWD/Types/FileBuffer/BinaryStream.hpp \
   $$PWD/Types/FileBuffer/FileHandle.hpp \
   $$PWD/Types/FileBuffer/FileHandleCompressed.hpp \
   $$PWD/Types/FileBuffer/FileHandleCompressedFD.hpp \
   $$PWD/Types/FileBuffer/FileHandleUncompressed.hpp \
   $$PWD/Types/FileBuffer/FileHandleUncompressedFD.hpp \
   $$PWD/Types/FileBuffer/FilePath.hpp \
   $$PWD/Types/FileBuffer/Package.hpp \
   $$PWD/Types/FileBuffer/Stream.hpp \
   $$PWD/Types/FileBuffer/TextBufferStream.hpp \
   $$PWD/Types/FileBuffer/TextFileStream.hpp \
   $$PWD/Types/FileBuffer/TextStream.hpp \
   $$PWD/Types/Graphics/BitFont.hpp \
   $$PWD/Types/Graphics/DrawBatcher.hpp \
   $$PWD/Types/Graphics/DrawUtils.hpp \
   $$PWD/Types/Graphics/Framebuffer.hpp \
   $$PWD/Types/Graphics/Mesh.hpp \
   $$PWD/Types/Graphics/Particles.hpp \
   $$PWD/Types/GUI/GUIAnimKey.hpp \
   $$PWD/Types/GUI/GUIGridLayout.hpp \
   $$PWD/Types/GUI/GUILayout.hpp \
   $$PWD/Types/GUI/GUILayoutPolicy.hpp \
   $$PWD/Types/GUI/GUITouchEvent.hpp \
   $$PWD/Types/Math/Box.hpp \
   $$PWD/Types/Math/Color4b.hpp \
   $$PWD/Types/Math/Color4f.hpp \
   $$PWD/Types/Math/ExpressionParser.hpp \
   $$PWD/Types/Math/Filters.hpp \
   $$PWD/Types/Math/GPSCoord.hpp \
   $$PWD/Types/Math/Matrix2.hpp \
   $$PWD/Types/Math/Matrix3.hpp \
   $$PWD/Types/Math/Matrix4.hpp \
   $$PWD/Types/Math/MoreMath.hpp \
   $$PWD/Types/Math/Perlin.hpp \
   $$PWD/Types/Math/Plane.hpp \
   $$PWD/Types/Math/PrimitiveCollisions.hpp \
   $$PWD/Types/Math/Quaternion.hpp \
   $$PWD/Types/Math/Rectangle.hpp \
   $$PWD/Types/Math/Sphere.hpp \
   $$PWD/Types/Math/SphericalHarmonics.hpp \
   $$PWD/Types/Math/Triangle.hpp \
   $$PWD/Types/Math/Vector2.hpp \
   $$PWD/Types/Math/Vector3.hpp \
   $$PWD/Types/Math/Vector4.hpp \
   $$PWD/Types/Math/Weights.hpp \
   $$PWD/Types/Math/WeightsIndex.hpp \
   $$PWD/Types/Media/PNGWriter.hpp \
   $$PWD/Types/Media/TWMWriter.hpp \
   $$PWD/Types/Media/WAVWriter.hpp \
   $$PWD/Types/Memory/Memory.hpp \
   $$PWD/Types/Memory/MemoryAllocator.hpp \
   $$PWD/Types/Memory/MemoryAllocatorTrace.hpp \
   $$PWD/Types/Memory/RefCounter.hpp \
   $$PWD/Types/Network/AssetDownloader.hpp \
   $$PWD/Types/Network/NetworkAddress.hpp \
   $$PWD/Types/Network/NetworkPacket.hpp \
   $$PWD/Types/Network/NetworkSocket.hpp \
   $$PWD/Types/Network/URL.hpp \
   $$PWD/Types/Node/Event.hpp \
   $$PWD/Types/Node/EventInfo.hpp \
   $$PWD/Types/Node/Group.hpp \
   $$PWD/Types/Node/Plug.hpp \
   $$PWD/Types/Node/PlugInfo.hpp \
   $$PWD/Types/Node/PlugNode.hpp \
   $$PWD/Types/Node/PlugNodeUtils.hpp \
   $$PWD/Types/Sound/SoundPacket.hpp \
   $$PWD/Types/Sound/SoundSource.hpp \
   $$PWD/Types/Sound/SoundSourceCallback.hpp \
   $$PWD/Types/Sound/SoundSourceQueue.hpp \
   $$PWD/Types/Text/GlyphCache.hpp \
   $$PWD/Types/Text/GlyphCacheEntry.hpp \
   $$PWD/Types/Text/TextCharacter.hpp \
   $$PWD/Types/Text/TextLines.hpp \
   $$PWD/Types/Text/TextRenderer.hpp \
   $$PWD/Types/Threads/ThreadMainTaskQueue.hpp \
   $$PWD/Types/Threads/ThreadTaskQueue.hpp \
   $$PWD/Types/Threads/ThreadTaskRef.hpp \
   $$PWD/Types/Utility/Analytics.hpp \
   $$PWD/Types/Utility/Assert.hpp \
   $$PWD/Types/Utility/Callback.hpp \
   $$PWD/Types/Utility/CallbackList.hpp \
   $$PWD/Types/Utility/CheckedCast.hpp \
   $$PWD/Types/Utility/CommandContext.hpp \
   $$PWD/Types/Utility/CommandParams.hpp \
   $$PWD/Types/Utility/CommandRegistry.hpp \
   $$PWD/Types/Utility/CommandResult.hpp \
   $$PWD/Types/Utility/Compressor.hpp \
   $$PWD/Types/Utility/Config.hpp \
   $$PWD/Types/Utility/ConsoleStream.hpp \
   $$PWD/Types/Utility/ContextSwitcher.hpp \
   #$$PWD/Types/Utility/ContextSwitcher_asm.S \
   $$PWD/Types/Utility/Error.hpp \
   $$PWD/Types/Utility/Coroutine.hpp \
   $$PWD/Types/Utility/Debug.hpp \
   $$PWD/Types/Utility/DirectoryLister.hpp \
   $$PWD/Types/Utility/DisplayMode.hpp \
   $$PWD/Types/Utility/Endian.hpp \
   $$PWD/Types/Utility/Error.hpp \
   $$PWD/Types/Utility/GridImageData.hpp \
   $$PWD/Types/Utility/LatentCall.hpp \
   $$PWD/Types/Utility/MonkeyTest.hpp \
   $$PWD/Types/Utility/MoreStrings.hpp \
   $$PWD/Types/Utility/Progress.hpp \
   $$PWD/Types/Utility/Session.hpp \
   $$PWD/Types/Utility/SmartPtr.hpp \
   $$PWD/Types/Utility/Time.hpp \
   $$PWD/Types/Utility/TimerHires.hpp \
   $$PWD/Types/Utility/TimerLores.hpp \
   $$PWD/Types/Utility/Tokenizer.hpp \
   $$PWD/Types/Utility/TouchEvent.hpp \
   $$PWD/Types/Utility/TypeTraits.hpp \
   $$PWD/World/World.hpp \
   $$PWD/World/WorldEntry.hpp \
   $$PWD/World/WorldNode.hpp \

SOURCES += \
   $$PWD/Components/ComponentBase.cpp \
   $$PWD/Components/ComponentDrawCamera.cpp \
   $$PWD/Components/ComponentDrawGridImagePlane.cpp \
   $$PWD/Components/ComponentDrawImagePlane.cpp \
   $$PWD/Components/ComponentDrawMesh.cpp \
   $$PWD/Components/ComponentGUIButton.cpp \
   $$PWD/Components/ComponentGUIDrawButton.cpp \
   $$PWD/Components/ComponentGUIDrawIcon.cpp \
   $$PWD/Components/ComponentGUIDrawText.cpp \
   $$PWD/Components/ComponentGUIScroller.cpp \
   $$PWD/Components/ComponentGUIScrollerLayout.cpp \
   $$PWD/Components/ComponentGUIToggleButton.cpp \
   $$PWD/Devices/DeviceAudio.cpp \
   $$PWD/Devices/DeviceBase.cpp \
   $$PWD/Devices/DeviceGraphics.cpp \
   $$PWD/Devices/DeviceInput.cpp \
   $$PWD/Devices/DeviceMusic.cpp \
   $$PWD/Devices/DeviceNetwork.cpp \
   $$PWD/Entry/GameMainThread.cpp \
   $$PWD/Objects/CameraObject.cpp \
   $$PWD/Objects/GameController.cpp \
   $$PWD/Objects/GUIController.cpp \
   $$PWD/Objects/GUIObject.cpp \
   $$PWD/Objects/LightObject.cpp \
   $$PWD/Objects/ObjectBase.cpp \
   $$PWD/Objects/ObjectBase_cmd.cpp \
   $$PWD/Objects/ParticleSystem.cpp \
   $$PWD/Objects/ParticleSystem_cmd.cpp \
   $$PWD/Objects/PlaceableObject.cpp \
   $$PWD/Objects/PlaceableObject_cmd.cpp \
   $$PWD/Objects/PlayerController.cpp \
   $$PWD/Objects/SimpleSoundSourceObject.cpp \
   $$PWD/Objects/SoundBusSourceObject.cpp \
   $$PWD/Objects/SoundSourceObject.cpp \
   $$PWD/Resources/Importers/ImporterAnimation.cpp \
   $$PWD/Resources/Importers/ImporterAnimationTWA.cpp \
   $$PWD/Resources/Importers/ImporterFont.cpp \
   $$PWD/Resources/Importers/ImporterFontTTF.cpp \
   $$PWD/Resources/Importers/ImporterGeometry.cpp \
   $$PWD/Resources/Importers/ImporterGeometry3DS.cpp \
   $$PWD/Resources/Importers/ImporterGeometryOBJ.cpp \
   $$PWD/Resources/Importers/ImporterGeometryTWM.cpp \
   $$PWD/Resources/Importers/ImporterImage.cpp \
   $$PWD/Resources/Importers/ImporterImageJPG.cpp \
   $$PWD/Resources/Importers/ImporterImagePNG.cpp \
   $$PWD/Resources/Importers/ImporterImagePVR.cpp \
   $$PWD/Resources/Importers/ImporterMaterial.cpp \
   $$PWD/Resources/Importers/ImporterMaterialMAT.cpp \
   $$PWD/Resources/Importers/ImporterShader.cpp \
   $$PWD/Resources/Importers/ImporterShaderSHDR.cpp \
   $$PWD/Resources/Importers/ImporterSound.cpp \
   $$PWD/Resources/Importers/ImporterSoundWAV.cpp \
   $$PWD/Resources/ResourceTypes/AnimationResource.cpp \
   $$PWD/Resources/ResourceTypes/FontResource.cpp \
   $$PWD/Resources/ResourceTypes/GeometryResource.cpp \
   $$PWD/Resources/ResourceTypes/GeometryResource_cmd.cpp \
   $$PWD/Resources/ResourceTypes/MaterialResource.cpp \
   $$PWD/Resources/ResourceTypes/Resource.cpp \
   $$PWD/Resources/ResourceTypes/ShaderResource.cpp \
   $$PWD/Resources/ResourceTypes/SoundResource.cpp \
   $$PWD/Resources/ResourceTypes/TextureResource2D.cpp \
   $$PWD/Resources/ResourceTypes/TextureResource3D.cpp \
   $$PWD/Resources/ResourceTypes/TextureResourceCube.cpp \
   $$PWD/Scripting/ScriptingABS.cpp \
   $$PWD/Scripting/ScriptingAccelerometer.cpp \
   $$PWD/Scripting/ScriptingAdd.cpp \
   $$PWD/Scripting/ScriptingAnalytics.cpp \
   $$PWD/Scripting/ScriptingAND.cpp \
   $$PWD/Scripting/ScriptingAnimation.cpp \
   $$PWD/Scripting/ScriptingAnimationCycler.cpp \
   $$PWD/Scripting/ScriptingARTracker.cpp \
   $$PWD/Scripting/ScriptingATAN2.cpp \
   $$PWD/Scripting/ScriptingBase.cpp \
   $$PWD/Scripting/ScriptingBoolSwitcher.cpp \
   $$PWD/Scripting/ScriptingBoolToEvent.cpp \
   $$PWD/Scripting/ScriptingCameraPredictor.cpp \
   $$PWD/Scripting/ScriptingCameraShake.cpp \
   $$PWD/Scripting/ScriptingCeil.cpp \
   $$PWD/Scripting/ScriptingChangeRange.cpp \
   $$PWD/Scripting/ScriptingClamp.cpp \
   $$PWD/Scripting/ScriptingColorInterpolator.cpp \
   $$PWD/Scripting/ScriptingColorToComponents.cpp \
   $$PWD/Scripting/ScriptingComponentsToColor.cpp \
   $$PWD/Scripting/ScriptingComponentsToVector2.cpp \
   $$PWD/Scripting/ScriptingComponentsToVector3.cpp \
   $$PWD/Scripting/ScriptingCompute.cpp \
   $$PWD/Scripting/ScriptingConversions.cpp \
   $$PWD/Scripting/ScriptingCOS.cpp \
   $$PWD/Scripting/ScriptingCounter.cpp \
   $$PWD/Scripting/ScriptingCRC32.cpp \
   $$PWD/Scripting/ScriptingDelayOff.cpp \
   $$PWD/Scripting/ScriptingDelayOn.cpp \
   $$PWD/Scripting/ScriptingDivide.cpp \
   $$PWD/Scripting/ScriptingEaseInEaseOut.cpp \
   $$PWD/Scripting/ScriptingEqual.cpp \
   $$PWD/Scripting/ScriptingEqualInt.cpp \
   $$PWD/Scripting/ScriptingEventGate.cpp \
   $$PWD/Scripting/ScriptingFilter2Pole.cpp \
   $$PWD/Scripting/ScriptingFLIPFLOP.cpp \
   $$PWD/Scripting/ScriptingFloatSwitcher.cpp \
   $$PWD/Scripting/ScriptingFloor.cpp \
   $$PWD/Scripting/ScriptingFrac.cpp \
   $$PWD/Scripting/ScriptingGeometry.cpp \
   $$PWD/Scripting/ScriptingGlobalPoll.cpp \
   $$PWD/Scripting/ScriptingGlobalReader.cpp \
   $$PWD/Scripting/ScriptingGlobalWriter.cpp \
   $$PWD/Scripting/ScriptingGreaterThan.cpp \
   $$PWD/Scripting/ScriptingGreaterThanEqual.cpp \
   $$PWD/Scripting/ScriptingGyro.cpp \
   $$PWD/Scripting/ScriptingInRange.cpp \
   $$PWD/Scripting/ScriptingIntSwitcher.cpp \
   $$PWD/Scripting/ScriptingIsTransitioning.cpp \
   $$PWD/Scripting/ScriptingKeyDown.cpp \
   $$PWD/Scripting/ScriptingKeyframes.cpp \
   $$PWD/Scripting/ScriptingKeyframes_cmd.cpp \
   $$PWD/Scripting/ScriptingKeyframesBool.cpp \
   $$PWD/Scripting/ScriptingKeyframesColor.cpp \
   $$PWD/Scripting/ScriptingKeyframesEvent.cpp \
   $$PWD/Scripting/ScriptingKeyframesFloat.cpp \
   $$PWD/Scripting/ScriptingKeyframesGridImageData.cpp \
   $$PWD/Scripting/ScriptingKeyframesMaterialResource.cpp \
   $$PWD/Scripting/ScriptingKeyframesMatrix3.cpp \
   $$PWD/Scripting/ScriptingKeyframesRoot.cpp \
   $$PWD/Scripting/ScriptingKeyframesVector2.cpp \
   $$PWD/Scripting/ScriptingKeyframesVector3.cpp \
   $$PWD/Scripting/ScriptingLessThan.cpp \
   $$PWD/Scripting/ScriptingLessThanEqual.cpp \
   $$PWD/Scripting/ScriptingLoadConfig.cpp \
   $$PWD/Scripting/ScriptingMaterial.cpp \
   $$PWD/Scripting/ScriptingMaterialAnimator.cpp \
   $$PWD/Scripting/ScriptingMaterialBuilder.cpp \
   $$PWD/Scripting/ScriptingMaterialSwitcher.cpp \
   $$PWD/Scripting/ScriptingMatrix3Inverse.cpp \
   $$PWD/Scripting/ScriptingMatrix3Multiply.cpp \
   $$PWD/Scripting/ScriptingMatrix3ToComponents.cpp \
   $$PWD/Scripting/ScriptingMatrix3Transpose.cpp \
   $$PWD/Scripting/ScriptingMax.cpp \
   $$PWD/Scripting/ScriptingMin.cpp \
   $$PWD/Scripting/ScriptingMultiply.cpp \
   $$PWD/Scripting/ScriptingMusicPlayer.cpp \
   $$PWD/Scripting/ScriptingNOT.cpp \
   $$PWD/Scripting/ScriptingNotEqual.cpp \
   $$PWD/Scripting/ScriptingOpenURL.cpp \
   $$PWD/Scripting/ScriptingOR.cpp \
   $$PWD/Scripting/ScriptingOrientTowards.cpp \
   $$PWD/Scripting/ScriptingParticleAccelerator.cpp \
   $$PWD/Scripting/ScriptingParticleCollisionPlane.cpp \
   $$PWD/Scripting/ScriptingParticleColorRandomizer.cpp \
   $$PWD/Scripting/ScriptingParticleColorSequencer.cpp \
   $$PWD/Scripting/ScriptingParticleDirectionalVelocityRandomizer.cpp \
   $$PWD/Scripting/ScriptingParticleEmitter.cpp \
   $$PWD/Scripting/ScriptingParticleEmitterBurst.cpp \
   $$PWD/Scripting/ScriptingParticleEmitterPeriodic.cpp \
   $$PWD/Scripting/ScriptingParticleFriction.cpp \
   $$PWD/Scripting/ScriptingParticleKillZone.cpp \
   $$PWD/Scripting/ScriptingParticlePath.cpp \
   $$PWD/Scripting/ScriptingParticlePointAttractor.cpp \
   $$PWD/Scripting/ScriptingParticlePositionRandomizer.cpp \
   $$PWD/Scripting/ScriptingParticleRepel.cpp \
   $$PWD/Scripting/ScriptingParticleSizeRandomizer.cpp \
   $$PWD/Scripting/ScriptingParticleSizeSequencer.cpp \
   $$PWD/Scripting/ScriptingParticleStamFluids.cpp \
   $$PWD/Scripting/ScriptingParticleTimeFader.cpp \
   $$PWD/Scripting/ScriptingParticleTimeRotator.cpp \
   $$PWD/Scripting/ScriptingParticleTimeScaler.cpp \
   $$PWD/Scripting/ScriptingParticleVelocityAdder.cpp \
   $$PWD/Scripting/ScriptingParticleVelocityRandomizer.cpp \
   $$PWD/Scripting/ScriptingParticleVelocityRing.cpp \
   $$PWD/Scripting/ScriptingParticleVelocityRotator.cpp \
   $$PWD/Scripting/ScriptingParticleVelocityUniformRing.cpp \
   $$PWD/Scripting/ScriptingParticleVelocityWake.cpp \
   $$PWD/Scripting/ScriptingPower.cpp \
   $$PWD/Scripting/ScriptingPulse.cpp \
   $$PWD/Scripting/ScriptingPulseNoReset.cpp \
   $$PWD/Scripting/ScriptingRadioButton.cpp \
   $$PWD/Scripting/ScriptingRandom.cpp \
   $$PWD/Scripting/ScriptingRotateX.cpp \
   $$PWD/Scripting/ScriptingRotateY.cpp \
   $$PWD/Scripting/ScriptingRotateZ.cpp \
   $$PWD/Scripting/ScriptingScreen.cpp \
   $$PWD/Scripting/ScriptingSequencer.cpp \
   $$PWD/Scripting/ScriptingSIN.cpp \
   $$PWD/Scripting/ScriptingSinSuperposition.cpp \
   $$PWD/Scripting/ScriptingSlerp.cpp \
   $$PWD/Scripting/ScriptingSound.cpp \
   $$PWD/Scripting/ScriptingSoundBase.cpp \
   $$PWD/Scripting/ScriptingSoundBiQuadFilter.cpp \
   $$PWD/Scripting/ScriptingSoundBusIn.cpp \
   $$PWD/Scripting/ScriptingSoundBusOut.cpp \
   $$PWD/Scripting/ScriptingSoundGain.cpp \
   $$PWD/Scripting/ScriptingSoundHighPassFilter3db.cpp \
   $$PWD/Scripting/ScriptingSoundHRTF.cpp \
   $$PWD/Scripting/ScriptingSoundLowPassFilter3db.cpp \
   $$PWD/Scripting/ScriptingSoundMixer.cpp \
   $$PWD/Scripting/ScriptingSoundRandomizer.cpp \
   $$PWD/Scripting/ScriptingSoundResample.cpp \
   $$PWD/Scripting/ScriptingSoundReverb.cpp \
   $$PWD/Scripting/ScriptingSpline.cpp \
   $$PWD/Scripting/ScriptingStringConcat.cpp \
   $$PWD/Scripting/ScriptingStringEquals.cpp \
   $$PWD/Scripting/ScriptingStringSwitcher.cpp \
   $$PWD/Scripting/ScriptingStringToPath.cpp \
   $$PWD/Scripting/ScriptingSubtitleDriver.cpp \
   $$PWD/Scripting/ScriptingSubtract.cpp \
   $$PWD/Scripting/ScriptingTexture2D.cpp \
   $$PWD/Scripting/ScriptingTimer.cpp \
   $$PWD/Scripting/ScriptingTimerActive.cpp \
   $$PWD/Scripting/ScriptingTimerRanged.cpp \
   $$PWD/Scripting/ScriptingTimerSuper.cpp \
   $$PWD/Scripting/ScriptingTimerUpDown.cpp \
   $$PWD/Scripting/ScriptingTimerUpReset.cpp \
   $$PWD/Scripting/ScriptingTouch.cpp \
   $$PWD/Scripting/ScriptingTransitionLevel.cpp \
   $$PWD/Scripting/ScriptingVector2ToComponents.cpp \
   $$PWD/Scripting/ScriptingVector3Add.cpp \
   $$PWD/Scripting/ScriptingVector3Clip.cpp \
   $$PWD/Scripting/ScriptingVector3Filter2Pole.cpp \
   $$PWD/Scripting/ScriptingVector3Mul.cpp \
   $$PWD/Scripting/ScriptingVector3Mul3.cpp \
   $$PWD/Scripting/ScriptingVector3Normalize.cpp \
   $$PWD/Scripting/ScriptingVector3Passthrough.cpp \
   $$PWD/Scripting/ScriptingVector3Project.cpp \
   $$PWD/Scripting/ScriptingVector3Random.cpp \
   $$PWD/Scripting/ScriptingVector3Smooth.cpp \
   $$PWD/Scripting/ScriptingVector3Subtract.cpp \
   $$PWD/Scripting/ScriptingVector3Switcher.cpp \
   $$PWD/Scripting/ScriptingVector3ToComponents.cpp \
   $$PWD/Scripting/ScriptingVector3ToLength.cpp \
   $$PWD/Scripting/ScriptingVector3ToLengthSquared.cpp \
   $$PWD/Scripting/ScriptingVector3Transform.cpp \
   $$PWD/Scripting/ScriptingVector3Unproject.cpp \
   $$PWD/Scripting/ScriptingVector3UnprojectToZ.cpp \
   $$PWD/Scripting/ScriptingXOR.cpp \
   $$PWD/System/AppConfig.cpp \
   $$PWD/System/Application.cpp \
   $$PWD/System/Application_cmd.cpp \
   $$PWD/System/Command.cpp \
   $$PWD/System/Command_cmd.cpp \
   $$PWD/System/Command_test.cpp \
   $$PWD/System/Configure.cpp \
   $$PWD/System/Console.cpp \
   $$PWD/System/Console_cmd.cpp \
   $$PWD/System/Factory.cpp \
   $$PWD/System/Factory_test.cpp \
   $$PWD/System/FileManager.cpp \
   $$PWD/System/FileManager_cmd.cpp \
   $$PWD/System/Globals.cpp \
   $$PWD/System/Globals_cmd.cpp \
   $$PWD/System/Globals_test.cpp \
   $$PWD/System/Profiler.cpp \
   $$PWD/System/StaticInitializer.cpp \
   $$PWD/System/System.cpp \
   $$PWD/System/SystemCallbacks.cpp \
   $$PWD/System/UnitTest.cpp \
   $$PWD/Tools/ChecksumTools_cmd.cpp \
   $$PWD/Tools/LightingTools_cmd.cpp \
   $$PWD/Tools/ModelTools_cmd.cpp \
   $$PWD/Tools/PackageTools_cmd.cpp \
   $$PWD/Transitions/TransitionBase.cpp \
   $$PWD/Transitions/TransitionFadeOutIn.cpp \
   $$PWD/Types/Animation/AnimationKeyframe.cpp \
   $$PWD/Types/Animation/AnimationPose.cpp \
   $$PWD/Types/Animation/AnimationPoseJoint.cpp \
   $$PWD/Types/Animation/AnimationTrack.cpp \
   $$PWD/Types/Animation/PropertyAnimator.cpp \
   $$PWD/Types/Animation/Skeleton.cpp \
   $$PWD/Types/Animation/SkeletonJoint.cpp \
   $$PWD/Types/Base/BaseClass.cpp \
   $$PWD/Types/Base/BaseInclude.cpp \
   $$PWD/Types/FileBuffer/Archive.cpp \
   $$PWD/Types/FileBuffer/ArchiveBinaryBufferReader.cpp \
   $$PWD/Types/FileBuffer/ArchiveBinaryBufferWriter.cpp \
   $$PWD/Types/FileBuffer/ArchiveBinaryReader.cpp \
   $$PWD/Types/FileBuffer/ArchiveBinaryWriter.cpp \
   $$PWD/Types/FileBuffer/ArchiveData.cpp \
   $$PWD/Types/FileBuffer/ArchiveObjectQueue.cpp \
   $$PWD/Types/FileBuffer/ArchiveProcess.cpp \
   $$PWD/Types/FileBuffer/ArchivePropertyReaderWriter.cpp \
   $$PWD/Types/FileBuffer/ArchiveTextBufferReader.cpp \
   $$PWD/Types/FileBuffer/ArchiveTextBufferWriter.cpp \
   $$PWD/Types/FileBuffer/ArchiveTextReader.cpp \
   $$PWD/Types/FileBuffer/ArchiveTextWriter.cpp \
   $$PWD/Types/FileBuffer/BinaryBufferStream.cpp \
   $$PWD/Types/FileBuffer/BinaryFileStream.cpp \
   $$PWD/Types/FileBuffer/BinaryStream.cpp \
   $$PWD/Types/FileBuffer/FileHandle.cpp \
   $$PWD/Types/FileBuffer/FileHandleCompressed.cpp \
   $$PWD/Types/FileBuffer/FileHandleCompressedFD.cpp \
   $$PWD/Types/FileBuffer/FileHandleUncompressed.cpp \
   $$PWD/Types/FileBuffer/FileHandleUncompressedFD.cpp \
   $$PWD/Types/FileBuffer/FileHandleUncompressedFD_test.cpp \
   $$PWD/Types/FileBuffer/FilePath.cpp \
   $$PWD/Types/FileBuffer/FilePath_test.cpp \
   $$PWD/Types/FileBuffer/Package.cpp \
   $$PWD/Types/FileBuffer/Stream.cpp \
   $$PWD/Types/FileBuffer/TextBufferStream.cpp \
   $$PWD/Types/FileBuffer/TextFileStream.cpp \
   $$PWD/Types/FileBuffer/TextStream.cpp \
   $$PWD/Types/Graphics/BitFont.cpp \
   $$PWD/Types/Graphics/DrawBatcher.cpp \
   $$PWD/Types/Graphics/DrawUtils.cpp \
   $$PWD/Types/Graphics/Framebuffer.cpp \
   $$PWD/Types/Graphics/Mesh.cpp \
   $$PWD/Types/Graphics/Particles.cpp \
   $$PWD/Types/GUI/GUIAnimKey.cpp \
   $$PWD/Types/GUI/GUIGridLayout.cpp \
   $$PWD/Types/GUI/GUILayout.cpp \
   $$PWD/Types/GUI/GUILayoutPolicy.cpp \
   $$PWD/Types/GUI/GUITouchEvent.cpp \
   $$PWD/Types/Math/Box.cpp \
   $$PWD/Types/Math/Color4b.cpp \
   $$PWD/Types/Math/Color4f.cpp \
   $$PWD/Types/Math/ExpressionParser.cpp \
   $$PWD/Types/Math/ExpressionParser_test.cpp \
   $$PWD/Types/Math/Filters.cpp \
   $$PWD/Types/Math/GPSCoord.cpp \
   $$PWD/Types/Math/Matrix2.cpp \
   $$PWD/Types/Math/Matrix3.cpp \
   $$PWD/Types/Math/Matrix4.cpp \
   $$PWD/Types/Math/MoreMath.cpp \
   $$PWD/Types/Math/Perlin.cpp \
   $$PWD/Types/Math/Plane.cpp \
   $$PWD/Types/Math/PrimitiveCollisions.cpp \
   $$PWD/Types/Math/Quaternion.cpp \
   $$PWD/Types/Math/Rectangle.cpp \
   $$PWD/Types/Math/Sphere.cpp \
   $$PWD/Types/Math/SphericalHarmonics.cpp \
   $$PWD/Types/Math/Triangle.cpp \
   $$PWD/Types/Math/Vector2.cpp \
   $$PWD/Types/Math/Vector3.cpp \
   $$PWD/Types/Math/Vector4.cpp \
   $$PWD/Types/Math/Weights.cpp \
   $$PWD/Types/Math/WeightsIndex.cpp \
   $$PWD/Types/Media/PNGWriter.cpp \
   $$PWD/Types/Media/TWMWriter.cpp \
   $$PWD/Types/Media/WAVWriter.cpp \
   $$PWD/Types/Memory/Memory.cpp \
   $$PWD/Types/Memory/MemoryAllocator.cpp \
   $$PWD/Types/Memory/MemoryAllocatorTrace.cpp \
   $$PWD/Types/Memory/MemoryAllocatorTrace_cmd.cpp \
   $$PWD/Types/Network/AssetDownloader.cpp \
   $$PWD/Types/Network/AssetDownloader_cmd.cpp \
   $$PWD/Types/Network/NetworkAddress.cpp \
   $$PWD/Types/Network/NetworkPacket.cpp \
   $$PWD/Types/Network/NetworkSocket.cpp \
   $$PWD/Types/Network/URL.cpp \
   $$PWD/Types/Network/URL_test.cpp \
   $$PWD/Types/Node/Event.cpp \
   $$PWD/Types/Node/EventInfo.cpp \
   $$PWD/Types/Node/Group.cpp \
   $$PWD/Types/Node/Plug.cpp \
   $$PWD/Types/Node/PlugInfo.cpp \
   $$PWD/Types/Node/PlugNode.cpp \
   $$PWD/Types/Node/PlugNode_cmd.cpp \
   $$PWD/Types/Node/PlugNode_test.cpp \
   $$PWD/Types/Node/PlugNodeUtils.cpp \
   $$PWD/Types/Sound/SoundPacket.cpp \
   $$PWD/Types/Sound/SoundSource.cpp \
   $$PWD/Types/Sound/SoundSourceCallback.cpp \
   $$PWD/Types/Sound/SoundSourceQueue.cpp \
   $$PWD/Types/Text/GlyphCache.cpp \
   $$PWD/Types/Text/GlyphCacheEntry.cpp \
   $$PWD/Types/Text/TextCharacter.cpp \
   $$PWD/Types/Text/TextLines.cpp \
   $$PWD/Types/Text/TextRenderer.cpp \
   $$PWD/Types/Threads/ThreadMainTaskQueue.cpp \
   $$PWD/Types/Threads/ThreadTaskQueue.cpp \
   $$PWD/Types/Threads/ThreadTaskRef.cpp \
   $$PWD/Types/Utility/Analytics.cpp \
   $$PWD/Types/Utility/Assert.cpp \
   $$PWD/Types/Utility/CommandContext.cpp \
   $$PWD/Types/Utility/CommandParams.cpp \
   $$PWD/Types/Utility/CommandRegistry.cpp \
   $$PWD/Types/Utility/CommandResult.cpp \
   $$PWD/Types/Utility/Compressor.cpp \
   $$PWD/Types/Utility/Config.cpp \
   $$PWD/Types/Utility/ConsoleStream.cpp \
   $$PWD/Types/Utility/ContextSwitcher.cpp \
   $$PWD/Types/Utility/ContextSwitcher_asm.S \
   #$$PWD/Types/Utility/ContextSwitcher.S \
   #$$PWD/Types/Utility/ContextSwitcher.asm \
   $$PWD/Types/Utility/Coroutine.cpp \
   $$PWD/Types/Utility/Coroutine_test.cpp \
   $$PWD/Types/Utility/DirectoryLister.cpp \
   $$PWD/Types/Utility/DisplayMode.cpp \
   $$PWD/Types/Utility/Error.cpp \
   $$PWD/Types/Utility/GridImageData.cpp \
   $$PWD/Types/Utility/MonkeyTest.cpp \
   $$PWD/Types/Utility/MoreStrings.cpp \
   $$PWD/Types/Utility/MoreStrings_test.cpp \
   $$PWD/Types/Utility/Progress.cpp \
   $$PWD/Types/Utility/Session.cpp \
   $$PWD/Types/Utility/SmartPtr_test.cpp \
   $$PWD/Types/Utility/Time.cpp \
   $$PWD/Types/Utility/TimerHires.cpp \
   $$PWD/Types/Utility/TimerLores.cpp \
   $$PWD/Types/Utility/Tokenizer.cpp \
   $$PWD/Types/Utility/TouchEvent.cpp \
   $$PWD/World/World.cpp \
   $$PWD/World/World_cmd.cpp \
   $$PWD/World/World_test.cpp \
   $$PWD/World/WorldEntry.cpp \
   $$PWD/World/WorldNode.cpp \
   $$PWD/World/WorldNode_cmd.cpp \
