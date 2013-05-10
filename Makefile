
all: successfully-installed

successfully-installed:
	mkdir -p src
	touch src/successfully-installed

clean:
	-@rm src/successfully-installed
	-@rmdir --ignore-fail-on-non-empty src

.PHONY: successfully-installed clean
