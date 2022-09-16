#!/bin/bash
ADB=${ADB:-./aperturedb}
CFG=${CFG:-./config.json}
echo "Running ${ADB} -cfg ${CFG}"
# logs to standarde error
# smushed stderr and stdout ( also seems to help with finishing faster? )
# removes debug we don't care about.
GLOG_logtostderr=1 "${ADB}" -cfg "${CFG}"  2>&1 | grep -v process_queue | grep -v PERIODIC
#| grep -v SSL_read
