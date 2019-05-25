# Defined in - @ line 0
function rmpod --description 'alias rmpod=rm -rf Pods Podfile.lock and bundle exec pod install'
	rm -rf Pods Podfile.lock and bundle exec pod install $argv;
end
