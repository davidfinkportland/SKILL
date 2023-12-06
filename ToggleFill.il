;ToggleFill by David Fink 2023-12-05
;this routine will toggle between solid and stipple fill patterns on the selected active layer
;on via layers it will toggle between solid and X fills
currentPacket= techGetLPPacketName(techGetLP(techGetTechFile(geGetEditCellView()) leGetEntryLayer()))
current= drGetPacket("display" currentPacket)
currentLayer= leGetEntryLayer()
currentLayer= nth(0 currentLayer)
if ( upperCase(substring(currentLayer 1 3)) == "VIA"
		then isVia= 1
		else isVia= nil
)
if( nth(6 current) != "solid"
		then setf(nth(6 current) '"solid")
		else if( isVia
				then setf(nth(6 current) '"X")
				else setf(nth(6 current) '"outlineStipple")
				)
)
apply('drSetPacket current);
