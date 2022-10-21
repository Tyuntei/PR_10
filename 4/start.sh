#! /bin/bash
for i in `seq 1 3`; do ping ya.ru > /dev/null & done
for i in `seq 1 2`; do ping youareanidiot.cc > /dev/null & done
