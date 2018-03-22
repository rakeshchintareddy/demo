#!/usr/bin/env bash
cd $(dirname $0)

mvn clean compile
ret=$?
if [ $ret -ne 0 ]; then
exit $ret
fi
rm -rf target

mvn clean package
rm -rf target
rm -rf build

exit