# Defined in - @ line 0
function simurl --description 'alias simurl=xcrun simctl openurl'
	xcrun simctl openurl booted $argv;
end
