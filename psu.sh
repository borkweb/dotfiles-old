#!/bin/bash

export PATH=/facstaff/B/ambackstrom/bin/:/usr/local/server/git/bin:/usr/openv/java/jre/bin:$HOME/local/node/bin:$PATH
export PATH=$HOME/local/bin:$PATH
export LD_LIBRARY_PATH=/facstaff/B/ambackstrom/lib/:$LD_LIBRARY_PATH
export CDPATH=.:/web/pscpages/webapp

function b() { 
	cd ~/webapp/banner/"$*";
	pwd;
}

function wpt() { 
	cd /web/connect.plymouth.edu/wp-content/themes/"$*";
	pwd;
}

function e() { 
	cd ~/includes_external/"$*";
	pwd;
}

function e() { 
	cd ~/includes_external/"$*";
	pwd;
}

function i() { 
	cd ~/includes_psu/"$*";
	pwd;
}

function p() { 
	cd ~/webapp/portal/"$*";
	pwd;
}

function c() { 
	cd ~/webapp/portal/channel/"$*";
	pwd;
}

function wa() {
	cd ~/webapp/"$*";
	pwd;
}

alias cdweb='. ~/cdweb.sh'
