#!/usr/bin/env bash
# Copyright 2019, Dawid Kurek, <dawikur@gmail.com>

for theme in ./autoload/airline/themes/*; do
	env mv -f ${theme} ${theme//-/_} 2>/dev/null
done
