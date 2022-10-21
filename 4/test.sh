#! /bin/bash
echo "ping ya.ru"
pgrep -f ya.ru | wc -l
echo "ping youareanidiot.cc"
pgrep -f youareanidiot.cc | wc -l
