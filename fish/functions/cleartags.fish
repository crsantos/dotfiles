function cleartags
	git tag -l | xargs git tag -d && git fetch --tags
end
