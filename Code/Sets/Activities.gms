SET   activity    "All activities" 
/  jbeef    Cattle
   jpork	   Pigs
   jlamb	   Sheep and Goats
   jpoul	   Poultry
   jeggs	   Eggs
   jmilk	   Dairy
   jbarl	   Barley
   jmaiz	   Maize
   jmill	   Millet
   jrice	   Rice
   jrice2	Rice for water model
   jrice3	Rice for water model
   jsorg	   Sorghum
   jwhea	   Wheat
   jocer	   Other Cereals
   jcass	   Cassava and Other R&T
   jpota	   Potato
   jswpt	   Sweet Potatoes
   jyams	   Yams
   jorat	   Other Roots & Tubers
   jbean	   Beans
   jchkp	   Chickpeas
   jcowp	   Cowpeas
   jlent	   Lentils
   jpigp	   Pigeonpeas
   jopul	   Other Pulses
   jbana	   Bananas
   jplnt	   Plantains
   jsubf	   Sub-Tropical Fruits
   jtemf	   Temperate Fruits
   jvege	   Vegetables
   jsugc	   Sugarcane
   jsugb	   Sugarbeet
   jsugr	   Sugar
   jsugrc	Cane Sugar
   jsugrb	Beet Sugar
   jgrnd	   Groundnuts
   jgdnt	   Groundnuts for Oil
   jgdol	   Groundnut oil
   jrpsd	   Rapeseed
   jrpnt	   Rapeseed for Oil
   jrpol	   Rapeseed oil
   jsoyb	   Soybeans
   jsbnt	   Soybeans for Oil
   jsbol	   Soybean oil
   jsnfl	   Sunflower Seeds
   jsfnt	   Sunflower seeds for Oil
   jsfol	   Sunflower oil
   jpalm	   Oil Palm Fruit
   jplol    Palm Oil
   jpkol	   Palm Kernal Oil
   jtols	   Total Other Oilseeds
   jtont	   Total Other Oilseeds for Oil
   jtool	   Total Other Oils
   jgdoln	Groundnut oil from gdnt
   jrpoln	Rapeseed oil from rpnt
   jsboln	Soybean Oil from sbnt
   jsfoln	Sunflower Oil from sfnt
   jtooln	Total Other oils from tont
   jgdolt	Groundnut oil from grnd
   jrpolt	Rapeseed oil from rpsd
   jsbolt	Soybean Oil from soyb
   jsfolt	Sunflower Oil from snfl
   jtoolt	Total other oils from tols
   jcoco	   Cocoa
   jcafe	   Coffee
   jcott	   Cotton
   jteas	   Tea
   jothr	   Other Crops
   jfodr	   Fodder Crops
   jpstr	   Pasture and Meadows
/                  ;

SET   activity_crop(activity)  "Crop activities"
                /
                jbarl	Barley
                jmaiz	Maize
                jmill	Millet
                jrice	Rice
                jsorg	Sorghum
                jwhea	Wheat
                jocer	Other Cereals
                jcass	Cassava and Other R&T
                jpota	Potato
                jswpt	Sweet Potatoes
                jyams	Yams
                jorat	Other Roots & Tubers
                jbean	Beans
                jchkp	Chickpeas
                jcowp	Cowpeas
                jlent	Lentils
                jpigp	Pigeonpeas
                jopul	Other Pulses
                jbana	Bananas
                jplnt	Plantains
                jsubf	Sub-Tropical Fruits
                jtemf	Temperate Fruits
                jvege	Vegetables
                jsugc	Sugarcane
                jsugb	Sugarbeet
                jsugr	Sugar
                jsugrc	Cane Sugar
                jsugrb	Beet Sugar
                jgrnd	Groundnuts
                jgdnt	Groundnuts for Oil
                jgdol	Groundnut oil
                jrpsd	Rapeseed
                jrpnt	Rapeseed for Oil
                jrpol	Rapeseed oil
                jsoyb	Soybeans
                jsbnt	Soybeans for Oil
                jsbol	Soybean oil
                jsnfl	Sunflower Seeds
                jsfnt	Sunflower seeds for Oil
                jsfol	Sunflower oil
                jpalm	Oil Palm Fruit
                jplol	Palm Oil
                jpkol	Palm Kernal Oil
                jtols	Total Other Oilseeds
                jtont	Total Other Oilseeds for Oil
                jtool	Total Other Oils
                jgdoln	Groundnut oil from gdnt
                jrpoln	Rapeseed oil from rpnt
                jsboln	Soybean Oil from sbnt
                jsfoln	Sunflower Oil from sfnt
                jtooln	Total Other oils from tont
                jgdolt	Groundnut oil from grnd
                jrpolt	Rapeseed oil from rpsd
                jsbolt	Soybean Oil from soyb
                jsfolt	Sunflower Oil from snfl
                jtoolt	Total other oils from tols
                jcoco	Cocoa
                jcafe	Coffee
                jcott	Cotton
                jteas	Tea
                jothr	Other Crops
                /
;        

ALIAS(activity_crop, activity_crop2);

SET   irr   "All irrigation types" / air, arf, gir, grf/ ;

SET   irr_agr(irr) "Agricultural Irrigation" / air, arf /;

ALIAS(irr, irr2);
