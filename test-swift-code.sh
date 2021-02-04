#!/usr/bin/env bash

color_green="\n\e[1;32m"
color_red="\n\e[1;31m"
color_reset="\e[0m"

if swift test --enable-test-discovery
  then
    echo -e "${color_green}ALL TESTS PASSED SUCCESSFULLY${color_reset}"
    exit 0
  else
    echo -e "${color_red}TESTS FAILED${color_reset}"
    exit 1 # bash: A non-zero (1-255) exit status indicates failure; -1 is unknown status
fi
