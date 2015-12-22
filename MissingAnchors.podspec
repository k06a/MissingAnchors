Pod::Spec.new do |s|
  s.name             = "MissingAnchors"
  s.version          = "0.2.0"
  s.summary          = "Missing Anchors for iOS 9 API"
  s.description      = <<-DESC
                        Added classes to handle sizeAnchor and edgesAnchor easily.
                        Also introduced modern pattern to create and activate several constraints.
                       DESC

  s.homepage         = "https://github.com/k06a/MissingAnchors"
  s.license          = 'MIT'
  s.author           = { "Anton Bukov" => "k06aaa@gmail.com" }
  s.source           = { :git => "https://github.com/k06a/MissingAnchors.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/k06a'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/*.{h}'
  s.resource_bundles = {
    'MissingAnchors' => ['Pod/Assets/*.png']
  }
end
