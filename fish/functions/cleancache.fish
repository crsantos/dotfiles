# Defined in - @ line 0
function cleancache --description 'alias cleancache=brew cleanup; and gem cleanup; and yarn cache clean; and npm cache clean -f;
	brew cleanup; gem cleanup; yarn cache clean; npm cache clean -f; $argv
end
