Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "AFHandy"
s.summary = "AFHandy lets a user select an ice cream flavor."
s.requires_arc = true
s.version = "0.1.0"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Marutharaj Kuppusamy" => "marutharajprc@yahoo.com" }
s.homepage = "https://github.com/marutharaj/AFHandy"
s.source = { :git => "https://github.com/marutharaj/AFHandy.git", :tag => "#{s.version}"}
s.dependency 'PromiseKit', '~> 6.0'
s.dependency 'SwiftLint'
s.source_files = "AFHandy/**/*.{swift}"
s.resources = "AFHandy/**/*.{json}"
s.swift_version = "5.0"

end
