function podupi
	bundle exec pod repo update "$argv".podspec; and bundle exec pod install;
end
