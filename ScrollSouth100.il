;ScrollSouth100 by David Fink 2023-12-15
;this routine scrolls by a whole screen like page up/down in a word app
;the easy implementation is to have four of these scripts, one for each direction
;I like to set the bindkey for this to <ctrl> + <arrow key>

;remember the orig scroll percentage setting
StartPercent= geGetScrollPercent()
;set scroll percentage to whole screen
geSetScrollPercent(100)
;scroll south by the percentage
;"s" is the cardinal direction, other settings are n,w or e
geScroll(nil "s"	nil)
;restore orig scroll percentage setting
geSetScrollPercent(StartPercent)