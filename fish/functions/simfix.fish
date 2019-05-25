# Defined in - @ line 0
function simfix --description 'alias simfix=killall -9 -v com.apple.CoreSimulator.CoreSimulatorService'
	killall -9 -v com.apple.CoreSimulator.CoreSimulatorService $argv;
end
