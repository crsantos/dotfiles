# Defined in - @ line 0
function cleanup --description alias\ cleanup=find\ .\ -type\ f\ -name\ \'\*.DS_Store\'\ -ls\ -delete
	find . -type f -name '*.DS_Store' -ls -delete $argv;
end
