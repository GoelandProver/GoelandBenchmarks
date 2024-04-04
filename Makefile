RESULTS=result
SYN=SYN/
SET=SET/
TIMEOUT=300
GOELAND=./Goeland/src

all: 
	git submodule update --init --recursive
	cd $(GOELAND) && make

test:
	python3 run_tests.py $(SYN) $(RESULTS) $(TIMEOUT)
	python3 run_tests.py $(SET) $(RESULTS) $(TIMEOUT)
