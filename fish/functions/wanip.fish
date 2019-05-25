# Defined in - @ line 0
function wanip --description 'alias wanip=dig +short myip.opendns.com @resolver1.opendns.com'
	dig +short myip.opendns.com @resolver1.opendns.com $argv;
end
