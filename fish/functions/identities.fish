# Defined in - @ line 0
function identities --description 'alias identities=security find-identity -v -p codesigning'
	security find-identity -v -p codesigning $argv;
end
