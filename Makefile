
all: successfully-installed

successfully-installed:
	mkdir -p src
	touch src/successfully-installed

clean:
	-@rm -r src

.PHONY: successfully-installed clean
