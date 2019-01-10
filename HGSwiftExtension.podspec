
Pod::Spec.new do |spec|

  spec.name         = "HGSwiftExtension"
  spec.version      = "0.1.0"
  spec.summary      = "Useful Swift Extension Collection."
  spec.description  = <<-DESC
Presto's Useful Swift Extension Collection.
                   DESC
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.homepage     = "https://github.com/presto95/HGSwiftExtension"
  spec.author             = { "Presto" => "yoohan95@gmail.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/presto95/HGSwiftExtension.git", :tag => "#{spec.version}" }
  spec.source_files  = "Source/*.swift"
  spec.swift_version = "4.2" 

end
