function rebasebranch
	git co $argv; git pull $ORIGIN_COMPANY_NAME $argv; git push $FORK_USERNAME $argv; git co -; git rebase $ORIGIN_COMPANY_NAME/$argv; say "Rebased";
end
