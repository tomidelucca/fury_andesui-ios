Pod::Spec.new do |s|
  s.name             = 'AndesUI'
  s.version          = '3.12.0'
  s.summary          = 'AndesUI library for ios app.'

  s.description      = 'AndesUI is the UI library of Mercado Libre. It provides the definitions, components and tools to build consistent experiences, with agility and visual quality.'

  s.homepage         = 'https://github.com/mercadolibre/fury_andesui-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Mercado Libre'
  s.source           = { :git => 'https://github.com/mercadolibre/fury_andesui-ios.git', :tag => s.version.to_s }

  s.platform         = :ios, '10.0'
  s.requires_arc     = true
  s.swift_version = '5.0'
  s.default_subspec = 'Core'
   
   s.subspec 'Core' do |core|
    core.source_files = 'LibraryComponents/Classes/Core/**/*.{h,m,swift}'
    core.resource_bundle = {'AndesUIResources' => ['LibraryComponents/Classes/Core/**/*.{xib}', 
      'LibraryComponents/Resources/Core/Assets/AndesPaletteColors.xcassets', 'LibraryComponents/Resources/Core/Strings/*.lproj']}
    
    # remove this if we start using remote strategy for icons
    core.dependency 'AndesUI/LocalIcons'
   end
   
   s.subspec 'AndesCoachmark' do |coachmark|
    coachmark.source_files = 'LibraryComponents/Classes/AndesCoachmark/**/*.{h,m,swift}'
    
    coachmark.dependency 'AndesUI/Core'
   end
   
   s.subspec 'LocalIcons' do |la|
    la.resource_bundle = {'AndesIcons' => ['LibraryComponents/Resources/LocalIcons/Assets/Images.xcassets']}
   end

end
