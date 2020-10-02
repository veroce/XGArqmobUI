Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '11.0'
s.name = "XGArqmobUI"
s.summary = "XGArqmobUI componentes ui para las aplicaciones"
s.requires_arc = true

# 2
s.version = "0.4.9"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Xunta de Galicia" => "oficinaweb@xunta.gal" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/veroce/XGArqmobUI"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/veroce/XGArqmobUI.git",
             :tag => "#{s.version}" }

# 7
s.framework = 'UIKit', 'QuartzCore', 'CoreText'
s.dependency 'Kingfisher', '~> 5.14'

# 8
s.source_files = "XGArqmobUI/**/*.{swift}"

# 9
s.resources = "XGArqmobUI/**/*.{png,jpeg,jpg,storyboard,xib,xcassets,ttf}"

# 10
s.swift_version = "5.1"

end
