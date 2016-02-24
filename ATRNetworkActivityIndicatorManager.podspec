
Pod::Spec.new do |s|

	s.name         		= "ATRNetworkActivityIndicatorManager"
	s.version      		= "1.0"
	s.summary      		= "Simple UIApplication's NetworkActivityIndicator counter"
	s.description  		= "Simple UIApplication's NetworkActivityIndicator counter (https://github.com/alphatroya/NetworkActivityIndicatorManager)"
	s.homepage     		= "https://github.com/alphatroya/NetworkActivityIndicatorManager"
	s.license      		= { :type => 'MIT', :file => 'LICENSE' }
	s.author        	= { "Alexey Korolev" => "alphatroya@gmail.com" }
	s.source       		= { :git => "https://github.com/alphatroya/NetworkActivityIndicatorManager", :tag => s.version.to_s }
	s.source_files  	= "NetworkActivityIndicatorManager/"
	s.requires_arc 		= true

end
