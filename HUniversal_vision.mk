.PHONY: all
all:
	@echo Executing Pre Build commands ...
	@bash -c "source /opt/ros/groovy/setup.bash"
	@echo Done
	@bash -c "source rexos-build.sh"
