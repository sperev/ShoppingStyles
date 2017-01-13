Pod::Spec.new do |s|
  s.name        = "ShoppingStyles"
  s.version     = "0.0.1"
  s.summary     = "styles for shopping"
  s.homepage    = "https://github.com/sperev/ShoppingStyles"
  s.license     = { :type => "MIT" }
  s.authors     = { "Sergei Perevoznikov" => "sperev@bk.ru" }

  s.requires_arc = true
  s.ios.deployment_target = "8.0"
  s.source   = { :git => "https://github.com/sperev/ShoppingStyles.git", :tag => s.version }
  s.source_files = "Sources/*.swift", "Sources/**/*.swift"
  s.resources = "Resources/Images/**/*.jpg", "Resources/**/*.xib", "Resources/Fonts/*.otf"
end
