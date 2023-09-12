#from cgem.nml
nospA <- 1
nospZ <- 2

#&optics
##------------------------------------------------------------------------
##optics - needed for the light model
##------------------------------------------------------------------------
##namelist /optics/ Kw,Kcdom,Kspm,Kchla,astar490,aw490,astarOMA,astarOMZ,astarOMR,astarOMBC,PARfac,sinkCDOM
Kw <- 0.146            #Kw: AOP, light attenuation due to water
Kcdom <- 0.001         #Kcdom: AOP, light attenuation due to CDOM
Kspm <- 0.029          #Kspm: AOP, light attenuation due to SPM
Kchla <- 0.024         #Kchla: AOP, light attenuation due to chla
astar490 <- 0.0375     #astar490: Chla specific absorption at 490 nm
aw490 <- 0.015         #aw490: seawater absorption at 490 nm
astarOMA <- 0.01       #astarOMA: OM_A specific absorption at 490 nm
astarOMZ <- 0.01       #astarOMZ: OM_Z specific absorption at 490 nm
astarOMR <- 0.01       #astarOMR: OM_R specific absorption at 490 nm
astarOMBC <- 0.01      #astarOMBC: OM_BC specific absorption at 490 nm
PARfac <- 1.           #PARfac: Multiplies surface PAR
sinkCDOM <- 0.         #sinkCDOM: sinking rate of CDOM
##------------------------------------------------------------------------
#/

#&temperature
##--------------------------------------------------------------------------
##temperature - phyto/zooplankton growth
##--------------------------------------------------------------------------
##namelist /temperature/ Tref,KTg1,KTg2,Ea
TrefA <- c(17.,22.,26.)            #Tref(nospA+nospZ): Optimum temperature for growth(C)
KTg1 <- c(0.0035,0.0035,0.0035)     #KTg1(nospA+nospZ): Effect of T below Topt(C^2)
KTg2 <- c(0.001,0.001,0.001)       #KTg2(nospA+nospZ): Effect of T above Topt(C^2)
Ea   <- c(0.61,0.61,0.61)          #Ea(nospA+nospZ): Slope of Arrhenius plot(eV)
##------------------------------------------------------------------------
#/

#&phytoplankton
##------------------------------------------------------------------------
##Phytoplankton, up to 3 types
##------------------------------------------------------------------------
##namelist /phytoplankton/ umax,CChla,alpha,beta,respg,respb,
##QminN,QminP,QmaxN,QmaxP,Kn,Kp,Ksi,KQn,KQp,nfQs,vmaxN,vmaxP,vmaxSi,aN,volcell,Qc,Athresh,sinkA,mA,A_wt
umax <- 1.12                  #umax: maximum growth rate
CChla <- 181.477        #CChla: Fixed C:Chla ratio
alpha <- 3.96e-16     #alpha: initial slope of the photosynthesis-irradiance relationship
beta <- 1.1e-18         #beta: photoinhibition constant
respg <- 0.1 	      #respg: phytoplankton growth respiration coefficient
respb <- 0.02                 #respb: phytoplankton basal respiration coefficient 
QminN <- 1.53e-10     #QminN: minimum N cell-quota
QminP <- 1.07e-11     #QminP: minimum P cell-quota
QmaxN <- 6.85e-9      #QmaxN: maximum N cell-quota
QmaxP <- 4.28e-10    #QmaxP: maximum P cell-quota
Kn <- 1.13  #Kn: half-saturation constant for N 
Kp <- 0.51  #Kp: half-saturation constant for P
Ksi <- 1.13 #Ksi: half-saturation constant for Si uptake 
KQn <- 5.                 #KQn: Qn constant for Flynn nutrient dependent growth model
KQp <- 0.2           #KQp: Qp constant for Flynn nutrient dependent growth model 
nfQs <- 1.                 #nfQs: exponent for Geider nutrient uptake model 
vmaxN <- 1.33e-09     #vmaxN: N-uptake rate measured at umax
vmaxP <- 4.07e-10     #vmaxP: P-uptake rate measured at umax
vmaxSi <- 1.33e-09    #vmaxSi: Si-uptake rate measured at umax
aN <- 1.              #aN: coefficient for non-limiting nutrient
volcell <- 513.           #volcell: phytoplankton volume/cell
Qc <- 4.54e-08        #Qc: phytoplankton carbon/cell
Athresh <- 7e+07   #Athresh: Phytoplankton threshold for grazing, is multiplied by VOLcell 
sinkA <- 0.001 		      #sinkA: sinking rate of phytoplankton cells
mA <- 0.11 		      #mA: mortality coefficient 
A_wt <- 1.                           #A_wt: Relative proportion of total chlA for initializing phytoplankton
##------------------------------------------------------------------------
#/

#&zooplankton
##------------------------------------------------------------------------
##Zooplankton - up to 2 types 
##------------------------------------------------------------------------
##namelist /zooplankton/ ediblevector,Zeffic,Zslop,Zvolcell,ZQc,ZQn,ZQp,ZKa,Zrespg,Zrespb,Zumax,Zm 
ediblevector <- c(0.4,0.4) #edibility vector for Z1(A1), Z2(A2)
Zeffic <- c(0.4,0.4)		#Zeffic: assimilation efficiency as a fraction of ingestion
Zslop <- c(0.25,.0)	        #Zslop: proportion of grazed phytoplankton lost to sloppy feeding
Zvolcell <- c(2.98e+07,6.74e5)      #Zvolcell: zooplankton volume/individual
ZQc <- c(3.13e-4,7.08e-07)	        #ZQc: zooplankton carbon/individual
ZQn <- c(6.95e-05,1.57e-07)	        #ZQn: zooplankton nitrogen/individual
ZQp <- c(3.77e-06,8.53e-09)        #ZQp: zooplankton phosphorus/individual
ZKa <- c(1.12e+12,1.12e+12)	        #ZKa: half saturation coefficient for grazing
Zrespg <- c(0.2,0.3)		#Zrespg: Zooplankton growth-dependent respiration factor
Zrespb <- c(0.1,0.416)		#Zrespb: Zooplankton biomass-dependent respiration factor
Zumax <- c(9.45e+08,2.98e+07)	#Zumax: maximum growth rate of zooplankton
Zm <- c(0.00072,0.00001)         #0.00072		#Zm: Zooplankton mortality constant for quadratic mortality
##------------------------------------------------------------------------ 
#/

#&OM
##------------------------------------------------------------------------ 
##Organic Matter
##------------------------------------------------------------------------ 
##namelist /OM/ KG1,KG2,KG1_R,KG2_R,KG1_BC,KG2_BC,KNH4,nitmax,KO2,KstarO2,KNO3,pCO2,
##stoich_x1R,stoich_y1R,stoich_x2R,stoich_y2R,stoich_x1BC,stoich_y1BC,stoich_x2BC,stoich_y2BC,
##sinkOM1_A,sinkOM2_A,sinkOM1_Z,sinkOM2_Z,sinkOM1_R,sinkOM2_R,sinkOM1_BC,sinkOM2_BC,KGcdom,CF_SPM,KG_bot
KG1 <- 30.		#KG1: turnover rate for OM1_A and OM1_Z
KG2 <- 30.		#KG2: turnover rate for OM2_A and OM2_Z
KG1_R <- 11.		#KG1_R: OM1 turnover rate for riverine
KG2_R <- 3.7		#KG2_R: OM2 turnover rate for riverine
KG1_BC <- 1.              #KG1_BC: OM1 turnover rate for initial and bc
KG2_BC <- 1.              #KG2_BC: OM2 turnover rate for initial and bc
KNH4 <- 1.                #KNH4: NH4 rate constant for nitrification
nitmax <- 0.52           #nitmax: maximum rate of nitrification per day
KO2 <- 10.		#KO2: half-saturation concentration for O2 utilization
KstarO2 <- 10.		#KstarO2: O2 concentration that inhibits denitrification
KNO3 <- 5.		#KNO3: half-saturation concentration for NO3 used in denitrification
pCO2 <- 380.		#pCO2: atmospheric CO2 

##--OM sinking rates
sinkOM1_A <- .025		#sinkOM1_A:  sinking rate
sinkOM2_A <- 0.		#sinkOM2_A:  sinking rate
sinkOM1_Z <- 0.025		#sinkOM1_Z:  sinking rate
sinkOM2_Z <- 0.		#sinkOM2_Z:  sinking rate
sinkOM1_R <- 0.05		#sinkOM1_R:  sinking rate
sinkOM2_R <- 0.		#sinkOM2_R:  sinking rate
sinkOM1_BC <- 0.1         #sinkOM1_BC: sinking rate
sinkOM2_BC <- 0.          #sinkOM2_BC: sinking rate
KGcdom <- 0.01		#KGcdom: decay rate of CDOM, 1/day
CF_SPM <- 0.018		#CF_SPM: conversion factor for river OM to river SPM
KG_bot <- 92000.	        #KG_bot, turnover rate for k<-20 if Instant Remineralization is used (see Which_fluxes above)
#/
