#!/usr/bin/env bash
#
# Open manpages in Dash.app via:
#
# man <something>
#
cite about-plugin
about-plugin "Dash.app integration"

# set the name of your "manpages" docset.
DOCSET='manpages'

function dash_man {
 	/usr/bin/open dash://${DOCSET}:${1}
}

[[ -d /Applications/Dash.app ]] && {
	alias man=dash_man
}
