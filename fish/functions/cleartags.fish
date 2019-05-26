function cleartags --description 'alias cleartags=git tag -l | xargs git tag -d && git fetch --tags'
	git tag -l | xargs git tag -d && git fetch --tags
end
