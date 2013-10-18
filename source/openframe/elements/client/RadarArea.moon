class RadarArea extends Element
    new: (lx, by, sx, sy, r, g, b, a) =>
        @element = createRadarArea(lx, by, sx, sy, r, g, b, a)
            
    inside: (x, y) => isInsideRadarArea(@element, x, y)
    amount: => getPickupAmount @element
    weapon: => getPickupWeapon @element
    
    color: (r, g, b, a) =>
        if r and g and b and a
            return setRadarAreaColor @element, r, g, b, a
        getRadarAreaColor @element

    flashing: (bool) =>
    	if bool
    		return setRadarAreaFlashing @element, bool
    	isRadarAreaFlashing @element

    size: (x, y) =>
        if x and y
            return setRadarAreaSize @element, x, y
        getRadarAreaSize @element
