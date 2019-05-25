# Defined in - @ line 0
function sniff --description alias\ sniff=sudo\ ngrep\ -d\ \'en1\'\ -t\ \'\^\(GET\|POST\)\ \'\ \'tcp\ and\ port\ 80\'
	sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80' $argv;
end
