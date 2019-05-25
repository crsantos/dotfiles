function mergebranch
	git co $argv; git pull $ORIGIN_COMPANY_NAME $argv; git push $FORK_USERNAME $argv; git co -; git merge $argv; say "Merged";
end
