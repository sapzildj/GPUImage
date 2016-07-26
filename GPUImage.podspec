Pod::Spec.new do |s|
  s.name     = 'GPUImage'
  s.version  = '0.1.7'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/BradLarson/GPUImage'
  s.author   = { 'Brad Larson' => 'contact@sunsetlakesoftware.com' }
  s.source   = { :git => 'https://github.com/BradLarson/GPUImage.git', :tag => "#{s.version}" }
  
  s.source_files = [
	  "framework/Source/**/GPUImageLuminosity.{h,m}",
      "framework/Source/**/GPUImageAverageColor.{h,m}",
      "framework/Source/**/GPUImageGaussianBlurFilter.{h,m}",
      "framework/Source/**/GPUImageCropFilter.{h,m}",
      "framework/Source/**/GPUImageTwoPassFilter.{h,m}",
      "framework/Source/**/GPUImageColorConversion.{h,m}",
      "framework/Source/**/GPUImageTwoPassTextureSamplingFilter.{h,m}",
      "framework/Source/**/GPUImageSharpenFilter.{h,m}",
      "framework/Source/**/GLProgram.{h,m}",
      "framework/Source/**/GPUImageContext.{h,m}",            
      "framework/Source/**/GPUImageFilter.{h,m}",                  
      "framework/Source/**/GPUImageFilterGroup.{h,m}",                        
      "framework/Source/**/GPUImageFramebuffer.{h,m}",                              
      "framework/Source/**/GPUImageFramebufferCache.{h,m}",                                    
      "framework/Source/**/GPUImageOutput.{h,m}",                                          
      "framework/Source/**/GPUImageMovieWriter.{h,m}",                                                
      "framework/Source/**/GPUImagePicture.{h,m}",                                                      
      "framework/Source/**/GPUImageStillCamera.{h,m}",                                                            
      "framework/Source/**/GPUImageTwoInputFilter.{h,m}",                                                                  
      "framework/Source/**/GPUImageVideoCamera.{h,m}",                                                                        
      "framework/Source/**/GPUImageView.{h,m}",                                                                              
    ]
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  
  s.ios.deployment_target = '5.0'
  s.ios.exclude_files = 'framework/Source/Mac'
  s.ios.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']
  
  s.osx.deployment_target = '10.6'
  s.osx.exclude_files = 'framework/Source/iOS',
                        'framework/Source/GPUImageFilterPipeline.*',
                        'framework/Source/GPUImageMovieComposition.*',
                        'framework/Source/GPUImageVideoCamera.*',
                        'framework/Source/GPUImageStillCamera.*',
                        'framework/Source/GPUImageUIElement.*'
  s.osx.xcconfig = { 'GCC_WARN_ABOUT_RETURN_TYPE' => 'YES' }
end
