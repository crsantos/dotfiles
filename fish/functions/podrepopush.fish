function podrepopush
	bundle exec pod repo push $COMPANY_SPECS_REPO_NAME "$argv.podspec" --private --allow-warnings
end
