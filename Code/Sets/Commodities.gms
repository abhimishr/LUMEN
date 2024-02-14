SET   commodity   "Master set of all commodities"
                /
                cbeef	Cattle
                cpork	Pigs
                clamb	Sheep and Goats
                cpoul	Poultry
                ceggs	Eggs
                cmilk	Dairy
                cbarl	Barley
                cmaiz	Maize
                cmill	Millet
                crice	Rice
                csorg	Sorghum
                cwhea	Wheat
                cocer	Other Cereals
                ccass	Cassava
                cpota	Potato
                cswpt	Sweet Potatoes
                cyams	Yams
                corat	Other Roots & Tubers
                cbean	Beans
                cchkp	Chickpeas
                ccowp	Cowpeas
                clent	Lentils
                cpigp	Pigeonpeas
                copul	Other Pulses
                cbana	Bananas
                cplnt	Plantains
                csubf	Sub-Tropical Fruits
                ctemf	Temperate Fruits
                cvege	Vegetables
                csugc	Sugarcane
                csugb	Sugarbeet
                csugr	Refined Sugar
                cgrnd	Groundnuts
                cgdnt	Groundnuts for Oil
                cgdol	Groundnut Oil
                cgdml	Groundnut Meal
                crpsd	Rapeseed
                crpnt	Rapeseed for Oil
                crpol	Rapeseed Oil
                crpml	Rapeseed Meal
                csoyb	Soybeans
                csbnt	Soybeans for Oil
                csbol	Soybean Oil
                csbml	Soybean Meal
                csnfl	Sunflower Seeds
                csfnt	Sunflower Seeds for Oil
                csfol	Sunflower Oil
                csfml	Sunflower Meal
                cpalm	Oil Palm Fruit
                cplol	Palm Oil
                cpkrl	Palm Kernal
                cpkol	Palm Kernal Oil
                cpkml	Palm Kernal Meal
                ctols	Total Other Oilseeds
                ctont	Total Other Oilseeds for Oil
                ctool	Total Other Oils
                ctoml	Total Other Oilseed Meal
                ccoco	Cocoa
                ccafe	Coffee
                ccott	Cotton
                cteas	Tea
                cothr	Other Crops
                cfodr	Fodders
                cgrss	Grass
                /
;

SETS    c_trade(commodity)
        / cbarl, cmaiz, cmill, crice, csorg, cwhea /

    c_non_trade(commodity)
        /  cbeef, cpork, clamb, cpoul, ceggs, cmilk,       
        cocer, ccass, cpota, cswpt, cyams, corat, cbean, cchkp, ccowp, clent, 
        cpigp, copul, cbana, cplnt, csubf, ctemf, cvege, csugc, csugb, csugr, cgrnd, 
        cgdnt, cgdol, cgdml, crpsd, crpnt, crpol, crpml, csoyb, csbnt, csbol, csbml,
        csnfl, csfnt, csfol, csfml, cpalm, cplol, cpkrl, cpkol, cpkml, ctols, ctont, 
        ctool, ctoml, ccoco, ccafe, ccott, cteas, cothr, cfodr, cgrss/
        
;