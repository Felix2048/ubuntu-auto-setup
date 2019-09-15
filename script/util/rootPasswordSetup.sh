#!/bin/bash

expect << EOF
spawn passwd root
expect "Enter new UNIX password: "
send "${UserPassword}\r"
expect "Retype new UNIX password: "
send "${UserPassword}\r"
EOF
