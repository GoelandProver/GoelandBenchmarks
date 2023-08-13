# Goeland's Proof Certification Tests

This folder contains the subset of problems that has been run to validate the proof certification process.  
To run the benchmarks at home, use the following commands:
```console
chmod +x run_tests.sh
./run_tests.sh
```
It is important to note that those tests can only be run if you have cloned Goeland's repository and added this repository as its submodule.

Each benchmark launched by the script will generate one folder and a file:
* A folder containing all the tableaux & Coq proofs of the problems proved. All Coq proofs are automatically compiled by the python's script used to launch the tests and a *résumé* of the benchmark will be displayed once it ends with three categories: problems which timeout, problems where Goeland fails and problems where an error has been found when compiling its Coq's proof.
* A CSV file containing the size of each proof and its augmentation factor between the tableaux proof & the Coq proof. The end of the file has two more rows, one which calculates the average size augmentation, and one which displays the maximum size augmentation.
