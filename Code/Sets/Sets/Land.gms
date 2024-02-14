SETS LAND_ALL Land classes from LUH dataset
/
primf
primn 
secdf
secdn 
urban 
c3ann
c4ann
c3per
c4per
c3nfx      
pastr
range  
nonforest
agric
/ ;

SET LAND(LAND_ALL) S"ubset of land_class"
/
primf, secdf, nonforest, urban, agric, pastr, range
/ ;


SET LAND_MAP(LAND, LAND_ALL)
/
primf    . (primf)
secdf    . (secdf)
nonforest. (primn, secdn)
urban    . (urban)
agric    . (c3ann, c4ann, c3per, c4per, c3nfx)
pastr    . (pastr)
range    . (range)
/
;

ALIAS(LAND,LAND_FROM);
ALIAS(LAND,LAND_TO);


SET  land_avl_conversion(LAND_FROM)
        / nonforest, pastr, range /
;