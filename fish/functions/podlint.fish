function podlint
	bundle exec pod lib lint "$argv[1]".podspec --private --no-clean --verbose --allow-warnings --sources=''"$COMPANY_SPECS_REPO"',https://github.com/CocoaPods/Specs';
end
