TARGETS=scgi-launch scgi2env-exec

all: scgi-launch scgi2env-exec


scgi-launch: scgi-launch.bash
	@which socket 2>&1 >/dev/null || { echo "Install socket program" ; false ; }
	@echo Validated: socket program exists
	cp scgi-launch.bash scgi-launch


scgi2env-exec: scgi2env-exec.c
	$(CC) -o scgi2env-exec scgi2env-exec.c


clean:
	$(RM) $(TARGETS)
	$(RM) *~
	$(RM) \#*




