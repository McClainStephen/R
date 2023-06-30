SA <- read.csv('Final_SA.csv')

eletric <- lm(AEC ~ Mean.HH.Income + ABMC + AGTC + ANGC + RNETMIG2014 + RDEATH2014 + RBIRTH2014 + Coast + Region + Great.Lakes + Division, data=SA)
summary(eletric)

hydroelectric <- lm(AHEC ~ Mean.HH.Income + ABMC + AFFC + AGTC + ANGC + RNETMIG2014 + RDEATH2014 + RBIRTH2014 + Coast + Region + Great.Lakes + Division, data=SA)
summary(hydroelectric)

naturalgas <- lm(ANGC ~ Mean.HH.Income + ABMC + AEC + AFFC + AGTC + AHEC + RNETMIG2014 + RDEATH2014 + RBIRTH2014 + Coast + Region + Great.Lakes + Division, data=SA)
summary(naturalgas)

income <- lm(Mean.HH.Income ~ ABMC + ACC + AEC + AFFC + AGTC + AHEC +ANGC + RNETMIG2014 + RDEATH2014 + RBIRTH2014 + Coast + Region + Great.Lakes + Division, data=SA)
summary(income)

#/Not Used Energy Types/#
biomass <- lm(ABMC ~ Mean.HH.Income + ACC + AEC + AFFC + AGTC + AHEC + ANGC + RNETMIG2014 + RDEATH2014 + RBIRTH2014 + Coast + Region + Great.Lakes + Division, data=SA)
summary(biomass)

coal <- lm(ACC ~ Mean.HH.Income + ABMC + AEC + AGTC + AHEC + ANGC + RNETMIG2014 + RDEATH2014 + RBIRTH2014 + Coast + Region + Great.Lakes + Division, data=SA)
summary(coal)

fossil <- lm(AFFC ~ Mean.HH.Income + ABMC + AEC + AGTC + AHEC + ANGC + RNETMIG2014 + RDEATH2014 + RBIRTH2014 + Coast + Region + Great.Lakes + Division, data=SA)
summary(fossil)

geothermal <- lm(AGTC ~ Mean.HH.Income + ABMC + ACC + AEC + AFFC + AHEC + ANGC + RNETMIG2014 + RDEATH2014 + RBIRTH2014 + Coast + Region + Great.Lakes + Division, data=SA)
summary(geothermal)

