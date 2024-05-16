Pod::Spec.new do |spec|
  spec.name         = "CustomCalculatorFramework"
  spec.version      = "1.0.0"
  spec.summary      = "Creating a Custom Calculator Framework."
  spec.description  = "The CustomCalculatorFramework provides a solution for implementing basic arithmetic operations."
  spec.homepage     = "https://github.com/SmitaKankayya/CustomCalculatorFramework"
  spec.license      = "MIT"
  spec.author       = { "SmitaKankayya" => "smitakankayya@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/SmitaKankayya/CustomCalculatorFramework.git", :tag => spec.version.to_s }
  spec.source_files = "CustomCalculatorFramework/**/*.swift"
  spec.swift_versions = "5.0"
end
