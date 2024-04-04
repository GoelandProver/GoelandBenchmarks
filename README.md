# GoelandBenchmarks

A repository storing the various benchmarks done on the Goéland automated theorem prover to reproduce them at home.

## Dependencies

Python3 (any version, download directly from the [site](https://www.python.org/downloads/)) is needed to perform tests on the given benchmark.

Goéland needs Go and goyacc. See the README.md file of the [Goéland repository](https://github.com/GoelandProver/Goeland).

## Usage

To build, use the `make` command in the root folder.

```console
$ make
```

Then, to run the tests, either use the `make test` command (which will run Goéland on the SYN and SET folder with a 300 seconds timeout) or run `run_tests.py`.

```console
$ make test
```

To run the `run_tests.py`, three parameters are required:

| Parameter | Description |
|--------------------------|-----------|
| problem_folder | The folder which contains the problems that will be used to run Goéland |
| prefix | The prefix of the .csv file that will be generated with the results |
| timeout | The amount of time in seconds that Goéland will be allowed to run on each problem |


```console
$ python3 run_tests.py SYN syn_result 300
```

The above command will run Goéland on each of the problems found in the SYN folder for a maximum of 300 seconds. The .csv file that will be created will contain the results of each of the problems.