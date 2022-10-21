#! /bin/bash
for p in `pgrep -f ya.ru`
        do
        kill $p
        done
for p in `pgrep -f youareanidiot.cc`
        do
        kill $p
        done
