#!/bin/bash
echo
echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l
echo

echo "#==========================================================="
echo "Start Times"

for file in *slurm*.out; do
	if [[ "$file" == "slurm-16.out" ]] || [[ "$file" == "slurm-17.out" ]]; then
        	continue
	fi
        echo "==> $file <=="
        head -n 1 "$file"
        echo
done

echo "End Times"

for file in *slurm*.out; do
	if [[ "$file" == "slurm-16.out" ]] || [[ "$file" == "slurm-17.out" ]]; then
                continue
        fi
        echo "==> $file <=="
        tail -n 5 "$file"
        echo
done

echo "#==========================================================="
echo
