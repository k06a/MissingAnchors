Pod::Spec.new do |s|
  s.name             = "MissingAnchors"
  s.version          = "0.5.2"
  s.summary          = "Backport of Apple NSLayoutAnchor API to iOS7 and some missings like `sizeAnchor` and `edgesAnchor`"
  s.description      = <<-DESC
                        Backport of Apple NSLayoutAnchor API to iOS7 and some missings
                        like `sizeAnchor` and `edgesAnchor`. Also introduced modern
                        pattern to create and activate several constraints.
                       DESC

  s.homepage         = "https://github.com/k06a/MissingAnchors"
  s.license          = 'MIT'
  s.author           = { "Anton Bukov" => "k06aaa@gmail.com" }
  s.source           = { :git => "https://github.com/k06a/MissingAnchors.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/k06a'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.subspec 'MissingAnchors' do |ss|
    ss.source_files = 'Pod/Classes/*'
    ss.public_header_files = 'Pod/Classes/*.{h}'
  end

  s.subspec 'NSLayoutAnchor' do |ss|
    ss.source_files = "Pod/Classes/ABLayoutAnchor/*"
    ss.public_header_files = 'Pod/Classes/ABLayoutAnchor/*.{h}'
  end

  s.default_subspec = 'MissingAnchors'
end
