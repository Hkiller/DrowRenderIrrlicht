product:=irrlicht
$(product).type:=lib
$(product).depends:=opengl zlib bz2 jpeg png
$(product).version:=1.9.0-ogl-es
$(product).product.c.includes:=drow_irrlicht/3rdTools/irrlicht/include

$(product).c.sources := $(addprefix $(product-base)/source/Irrlicht/, \
                             CBSPMeshFileLoader.cpp \
                             CMD2MeshFileLoader.cpp \
                             CMD3MeshFileLoader.cpp \
                             CMS3DMeshFileLoader.cpp \
                             CB3DMeshFileLoader.cpp \
                             C3DSMeshFileLoader.cpp \
                             COgreMeshFileLoader.cpp \
                             COBJMeshFileLoader.cpp \
                             CColladaFileLoader.cpp \
                             CCSMLoader.cpp \
                             CDMFLoader.cpp \
                             CLMTSMeshFileLoader.cpp \
                             CMY3DMeshFileLoader.cpp \
                             COCTLoader.cpp \
                             CXMeshFileLoader.cpp \
                             CIrrMeshFileLoader.cpp \
                             CSTLMeshFileLoader.cpp \
                             CLWOMeshFileLoader.cpp \
                             CPLYMeshFileLoader.cpp \
                             CSMFMeshFileLoader.cpp \
                             CMeshTextureLoader.cpp \
                             CColladaMeshWriter.cpp \
                             CIrrMeshWriter.cpp \
                             CSTLMeshWriter.cpp \
                             COBJMeshWriter.cpp \
                             CPLYMeshWriter.cpp \
                             CB3DMeshWriter.cpp \
                             CSkinnedMesh.cpp \
                             CBoneSceneNode.cpp \
                             CMeshSceneNode.cpp \
                             CAnimatedMeshSceneNode.cpp \
                             CAnimatedMeshMD2.cpp \
                             CAnimatedMeshMD3.cpp \
                             CQ3LevelMesh.cpp \
                             CQuake3ShaderSceneNode.cpp \
                             CAnimatedMeshHalfLife.cpp \
                             CBillboardSceneNode.cpp \
                             CCameraSceneNode.cpp \
                             CDummyTransformationSceneNode.cpp \
                             CEmptySceneNode.cpp \
                             CGeometryCreator.cpp \
                             CLightSceneNode.cpp \
                             CMeshManipulator.cpp \
                             CMetaTriangleSelector.cpp \
                             COctreeSceneNode.cpp \
                             COctreeTriangleSelector.cpp \
                             CSceneCollisionManager.cpp \
                             CSceneManager.cpp \
                             CShadowVolumeSceneNode.cpp \
                             CSkyBoxSceneNode.cpp \
                             CSkyDomeSceneNode.cpp \
                             CTerrainSceneNode.cpp \
                             CTerrainTriangleSelector.cpp \
                             CVolumeLightSceneNode.cpp \
                             CCubeSceneNode.cpp \
                             CSphereSceneNode.cpp \
                             CTextSceneNode.cpp \
                             CTriangleBBSelector.cpp \
                             CTriangleSelector.cpp \
                             CWaterSurfaceSceneNode.cpp \
                             CMeshCache.cpp \
                             CDefaultSceneNodeAnimatorFactory.cpp \
                             CDefaultSceneNodeFactory.cpp \
                             CSceneLoaderIrr.cpp \
                             CParticleAnimatedMeshSceneNodeEmitter.cpp \
                             CParticleBoxEmitter.cpp \
                             CParticleCylinderEmitter.cpp \
                             CParticleMeshEmitter.cpp \
                             CParticlePointEmitter.cpp \
                             CParticleRingEmitter.cpp \
                             CParticleSphereEmitter.cpp \
                             CParticleAttractionAffector.cpp \
                             CParticleFadeOutAffector.cpp \
                             CParticleGravityAffector.cpp \
                             CParticleRotationAffector.cpp \
                             CParticleSystemSceneNode.cpp \
                             CParticleScaleAffector.cpp \
                             CSceneNodeAnimatorCameraFPS.cpp \
                             CSceneNodeAnimatorCameraMaya.cpp \
                             CSceneNodeAnimatorCollisionResponse.cpp \
                             CSceneNodeAnimatorDelete.cpp \
                             CSceneNodeAnimatorFlyCircle.cpp \
                             CSceneNodeAnimatorFlyStraight.cpp \
                             CSceneNodeAnimatorFollowSpline.cpp \
                             CSceneNodeAnimatorRotation.cpp \
                             CSceneNodeAnimatorTexture.cpp \
                             CNullDriver.cpp \
                             COpenGLCacheHandler.cpp \
                             COpenGLDriver.cpp \
                             COpenGLNormalMapRenderer.cpp \
                             COpenGLParallaxMapRenderer.cpp \
                             COpenGLShaderMaterialRenderer.cpp \
                             COpenGLSLMaterialRenderer.cpp \
                             COpenGLExtensionHandler.cpp \
                             CD3D9Driver.cpp \
                             CD3D9HLSLMaterialRenderer.cpp \
                             CD3D9NormalMapRenderer.cpp \
                             CD3D9ParallaxMapRenderer.cpp \
                             CD3D9ShaderMaterialRenderer.cpp \
                             CD3D9Texture.cpp \
                             COGLESDriver.cpp \
                             COGLESExtensionHandler.cpp \
                             COGLES2Driver.cpp \
                             COGLES2ExtensionHandler.cpp \
                             COGLES2FixedPipelineRenderer.cpp \
                             COGLES2MaterialRenderer.cpp \
                             COGLES2NormalMapRenderer.cpp \
                             COGLES2ParallaxMapRenderer.cpp \
                             COGLES2Renderer2D.cpp \
                             CGLXManager.cpp \
                             CWGLManager.cpp \
                             CEGLManager.cpp \
                             CColorConverter.cpp \
                             CImage.cpp \
                             CImageLoaderBMP.cpp \
                             CImageLoaderDDS.cpp \
                             CImageLoaderJPG.cpp \
                             CImageLoaderPCX.cpp \
                             CImageLoaderPNG.cpp \
                             CImageLoaderPSD.cpp \
                             CImageLoaderPVR.cpp \
                             CImageLoaderTGA.cpp \
                             CImageLoaderPPM.cpp \
                             CImageLoaderWAL.cpp \
                             CImageLoaderRGB.cpp \
                             CImageWriterBMP.cpp \
                             CImageWriterJPG.cpp \
                             CImageWriterPCX.cpp \
                             CImageWriterPNG.cpp \
                             CImageWriterPPM.cpp \
                             CImageWriterPSD.cpp \
                             CImageWriterTGA.cpp \
                             CVideoModeList.cpp \
                             CFPSCounter.cpp \
                             CSoftwareDriver.cpp \
                             CSoftwareTexture.cpp \
                             CTRFlat.cpp \
                             CTRFlatWire.cpp \
                             CTRGouraud.cpp \
                             CTRGouraudWire.cpp \
                             CTRNormalMap.cpp \
                             CTRStencilShadow.cpp \
                             CTRTextureFlat.cpp \
                             CTRTextureFlatWire.cpp \
                             CTRTextureGouraud.cpp \
                             CTRTextureGouraudAdd.cpp \
                             CTRTextureGouraudNoZ.cpp \
                             CTRTextureGouraudWire.cpp \
                             CZBuffer.cpp \
                             CTRTextureGouraudVertexAlpha2.cpp \
                             CTRTextureGouraudNoZ2.cpp \
                             CTRTextureLightMap2_M2.cpp \
                             CTRTextureLightMap2_M4.cpp \
                             CTRTextureLightMap2_M1.cpp \
                             CSoftwareDriver2.cpp \
                             CSoftwareTexture2.cpp \
                             CTRTextureGouraud2.cpp \
                             CTRGouraud2.cpp \
                             CTRGouraudAlpha2.cpp \
                             CTRGouraudAlphaNoZ2.cpp \
                             CTRTextureDetailMap2.cpp \
                             CTRTextureGouraudAdd2.cpp \
                             CTRTextureGouraudAddNoZ2.cpp \
                             CTRTextureWire2.cpp \
                             CTRTextureLightMap2_Add.cpp \
                             CTRTextureLightMapGouraud2_M4.cpp \
                             IBurningShader.cpp \
                             CTRTextureBlend.cpp \
                             CTRTextureGouraudAlpha.cpp \
                             CTRTextureGouraudAlphaNoZ.cpp \
                             CDepthBuffer.cpp \
                             CBurningShader_Raster_Reference.cpp \
                             CFileList.cpp \
                             CFileSystem.cpp \
                             CLimitReadFile.cpp \
                             CMemoryFile.cpp \
                             CReadFile.cpp \
                             CWriteFile.cpp \
                             CXMLReader.cpp \
                             CXMLWriter.cpp \
                             CWADReader.cpp \
                             CZipReader.cpp \
                             CPakReader.cpp \
                             CNPKReader.cpp \
                             CTarReader.cpp \
                             CMountPointReader.cpp \
                             irrXML.cpp \
                             CAttributes.cpp \
                             lzma/LzmaDec.c \
                             CIrrDeviceSDL.cpp \
                             CIrrDeviceLinux.cpp \
                             CIrrDeviceConsole.cpp \
                             CIrrDeviceStub.cpp \
                             CIrrDeviceWin32.cpp \
                             CIrrDeviceFB.cpp \
                             CLogger.cpp \
                             COSOperator.cpp \
                             os.cpp \
                             leakHunter.cpp \
                             CProfiler.cpp \
                             utf8.cpp \
                             CGUIButton.cpp \
                             CGUICheckBox.cpp \
                             CGUIComboBox.cpp \
                             CGUIContextMenu.cpp \
                             CGUIEditBox.cpp \
                             CGUIEnvironment.cpp \
                             CGUIFileOpenDialog.cpp \
                             CGUIFont.cpp \
                             CGUIImage.cpp \
                             CGUIInOutFader.cpp \
                             CGUIListBox.cpp \
                             CGUIMenu.cpp \
                             CGUIMeshViewer.cpp \
                             CGUIMessageBox.cpp \
                             CGUIModalScreen.cpp \
                             CGUIScrollBar.cpp \
                             CGUISpinBox.cpp \
                             CGUISkin.cpp \
                             CGUIStaticText.cpp \
                             CGUITabControl.cpp \
                             CGUITable.cpp \
                             CGUIToolBar.cpp \
                             CGUIWindow.cpp \
                             CGUIColorSelectDialog.cpp \
                             CDefaultGUIElementFactory.cpp \
                             CGUISpriteBank.cpp \
                             CGUIImageList.cpp \
                             CGUITreeView.cpp \
                             CGUIProfiler.cpp \
                     )

$(eval $(call product-def,$(product)))
