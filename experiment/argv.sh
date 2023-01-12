#! /bin/bash

function argv {
    for a in ${BASH_ARGV[*]} ; do
       echo -n "$a "
    done
    echo	
}

echo ${BASH_ARGV[0]}
submitfile="\n
executable=${BASH_ARGV[0]} \n
should_transfer_files = YES \n
transfer_input_files= \n
when_to_transfer_output = ON_EXIT \n
log = submitter.log \n
output = submitter.out \n
error = submitter.err \n
request_cpus = 1 \n
request_memory = 20MB \n
request_disk = 20MB \n
queue 1 \n
"
echo -e ${submitfile}>tempfile
#printf submitfile

