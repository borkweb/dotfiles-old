#!/bin/bash

codesniffer=~/pear/data/PHP_CodeSniffer
standards=$1
standards_file="CodeSniffer.${1}.conf"
standards_path="${codesniffer}/${standards_file}"
current_file_path="${codesniffer}/CodeSniffer.conf"

if [ -d ~/pear/data/PHP_CodeSniffer ]; then
	if [ -f $standards_path ]; then
		cp $standards_path $current_file_path
	fi
fi
