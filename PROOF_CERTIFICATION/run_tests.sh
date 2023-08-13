#! /bin/bash

GOELAND_DIR=../../src
GOELAND=../../src/_build/goeland
TEST_SCRIPT=../../external_scripts/run_proofs_tests.py
STATS_SCRIPT=../../external_scripts/stats_proof_size.py
STANDARD_GOELAND_BENCH=GOELAND_BENCHMARKS
DMT_GOELAND_BENCH=DMT_GOELAND_BENCHMARKS

# TODO: mkdir those
RESULT_DIR=RESULTS
VARIANT1=outer_proofs
VARIANT2=inner_proofs
VARIANT3=preinner_proofs
VARIANT4=dmtouter_proofs
VARIANT5=dmtinner_proofs
VARIANT6=dmtpreinner_proofs

if [ ! -d "$GOELAND_DIR" ]; then
    echo -e "Goeland's directory not found.\nPlease clone Goeland's repository using:\n\tgit clone --recursive-submodules git@github.com:GoelandProver/Goeland.git\nand launch this script back inside Goeland's folder."
    exit 1
fi

if [ ! -f "$GOELAND" ]; then
    cd $GOELAND_DIR && make
fi

launch_bench () {
    echo -e "================================================================================"
    echo -e "Launching Goeland's tests with the following options: $3"
    echo -e "================================================================================"
    mkdir -p $RESULT_DIR/$2
    python3 $TEST_SCRIPT $GOELAND $1 300 $RESULT_DIR/$2 2 $3
    python3 $STATS_SCRIPT $RESULT_DIR/$2 "$RESULT_DIR/${2}ize.csv"
}

launch_bench $STANDARD_GOELAND_BENCH $VARIANT1 
launch_bench $STANDARD_GOELAND_BENCH $VARIANT2 -inner 
launch_bench $STANDARD_GOELAND_BENCH $VARIANT3 -preinner
launch_bench $DMT_GOELAND_BENCH $VARIANT4 -dmt
launch_bench $DMT_GOELAND_BENCH $VARIANT5 -dmt -inner
launch_bench $DMT_GOELAND_BENCH $VARIANT6 -dmt -preinner