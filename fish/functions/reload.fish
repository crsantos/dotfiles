# Defined in - @ line 0
function reload --description 'alias reload=exec /usr/local/bin/fish -l'
	exec /usr/local/bin/fish -l $argv;
end
