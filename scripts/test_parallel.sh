#!/bin/bash
# Script to run beastier in parallel
#
# ./test_parallel
#
echo "--------------"
echo "Bash command: "
echo "--------------"
cmd="Rscript -e \"beastier::do_minimal_run()\""
echo "${cmd}"

echo "--------------"
echo "RUN"
echo "--------------"
(echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}"; echo "${cmd}") | parallel && echo "All jobs went OK"
