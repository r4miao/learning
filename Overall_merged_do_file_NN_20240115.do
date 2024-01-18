
cd "D:\OneDrive - Clemson University\My Teaching\Clemson\MA_Thesis_committees\Noor_Nishan\Data"
//2007-2011//

import delimited "nhgis0033_ds184_20115_zcta.csv", clear
rename mnte001 totalpop
label var totalpop "total population"
rename mnue002 whitepop
label var whitepop "total white population"
rename mnue003 blackpop
label var blackpop "total black population"
rename mn2e012 latinopop
label var latinopop "total latino population"
gen male_prop = mnie002/mnie001
label var male_prop "Male Proportion"
gen female_prop = mnie026/mnie001
label var female_prop "Female Proportion"
gen colpercent = (mpse032 + mpse033 + mpse034 + mpse035 + mpse015 + mpse016 + mpse017 + mpse018)/mpse001
label var colpercent "percentage of college degree or above"
gen poverty = (mpve002 + mpve003 + mpve004)/mpve001
label var poverty "poverty rate"
rename mp1e001 medincome
label var medincome "household median income"
rename mp3e001 medincome_black
label var medincome_black "household median income Black"
rename mp9e001 medincome_white
label var medincome_white "household median income White"
gen unemploy = msoe005/msoe001 
label var unemploy "unemployment rate"
gen rent= ms4e003/ms4e001
label var rent "house rental rate"
rename mnje001 medage
label var medage "median age"
gen age60 = (mnie018 + mnie019 + mnie020 + mnie021 + mnie022 + mnie023 + mnie024 + mnie025 + mnie042 + mnie043 + mnie044 + mnie045 + mnie046 + mnie047 + mnie048 + mnie049)/mnie001
label var age60 "population proportion 60+"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e totalpop whitepop blackpop latinopop male_prop female_prop colpercent poverty medincome medincome_black medincome_white unemploy rent medage age60 //keep only necessary variables from this table
save "2007_2011temp1.dta",replace

import delimited "nhgis0033_ds185_20115_zcta.csv", clear
rename m6de001 gini
label var gini "Gini index"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e gini
save "2007_2011temp2.dta", replace

merge 1:1 zcta5a using "2007_2011temp1.dta"
drop _merge
gen wave=1
save"2007_2011merged.dta", replace  
//N=32,989

************************************************************************************************************************


************************************************************************************************************************
//2008-2012//


import delimited "nhgis0030_ds191_20125_zcta.csv", clear
rename qspe001 totalpop
label var totalpop "total population"
rename qsqe002 whitepop
label var whitepop "total white population"
rename qsqe003 blackpop
label var blackpop "total black population"
rename qsye012 latinopop
label var latinopop "total latino population"
gen male_prop = qsee002/qsee001
label var male_prop "Male Proportion"
gen female_prop = qsee026/qsee001
label var female_prop "Female Proportion"
gen colpercent = (qure015 + qure016 + qure017 + qure018 + qure032 + qure033 + qure034 + qure035)/qure001
label var colpercent "percentage of college degree or above"
gen poverty = (quye002 + quye003 + quye004)/quye001
label var poverty "poverty rate"
rename qu1e001 medincome
label var medincome "household median income"
rename qu3e001 medincome_black
label var medincome_black "household median income Black"
rename qu9e001 medincome_white
label var medincome_white "household median income White"
gen unemploy = qxse005/qxse001
label var unemploy "unemployment rate"
gen rent = qx8e003/qx8e001
label var rent "house rental rate"
rename qsfe001 medage
label var medage "median age"
gen age60 = (qsee018 + qsee019 + qsee020 + qsee021 + qsee022 + qsee023 + qsee024 + qsee025 + qsee042 + qsee043 + qsee044 + qsee045 + qsee046 + qsee047 + qsee048 + qsee049)/qsee001
label var age60 "population proportion 60+"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e totalpop whitepop blackpop latinopop male_prop female_prop colpercent poverty medincome medincome_black medincome_white unemploy rent medage age60 //keep only necessary variables from this table
save "2008_2012temp1.dta", replace

import delimited "nhgis0030_ds192_20125_zcta.csv", clear
rename rcbe001 gini
label var gini "Gini index"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e gini
save  "2008_2012temp2.dta", replace


merge 1:1 zcta5a using  "2008_2012temp1.dta"
drop _merge
gen wave=2
save"2008_2012merged.dta", replace  //N=32,989
************************************************************************************************************************

//2009-2013//

import delimited "nhgis0034_ds201_20135_zcta.csv", clear


rename ueee001 totalpop
label var totalpop "total population"
rename ueqe002 whitepop
label var whitepop "total white population"
rename ueqe003 blackpop
label var blackpop "total black population"
rename ueye012 latinopop
label var latinopop "total latino population"
gen male_prop = ueem002/ueem001
label var male_prop "Male Proportion"
gen female_prop = ueem026/ueem001
label var female_prop "Female Proportion"
gen colpercent = (ugre032 + ugre033 + ugre034 + ugre035 + ugre015 + ugre016 + ugre017 + ugre018)/ugre001
label var colpercent "percentage of college degree or above"
gen poverty = (ug7e002 + ug7e003 + ug7e004)/ug7e001
label var poverty "poverty rate"
rename uhde001 medincome
label var medincome "household median income"
rename uhfe001 medincome_black
label var medincome_black "household median income Black"
rename uhee001 medincome_white
label var medincome_white "household median income White"
gen unemploy = uj8e005/uj8e001 
label var unemploy "unemployment rate"
gen rent= ukoe003/ukoe001
label var rent "house rental rate"
rename uefm001 medage
label var medage "median age"
gen age60 = (ueem018 + ueem019 + ueem020 + ueem021 + ueem022 + ueem023 + ueem024 + ueem025 + ueem042 + ueem043 + ueem044 + ueem045 + ueem046 + ueem047 + ueem048 + ueem049)/ueem001
label var age60 "population proportion 60+"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e totalpop whitepop blackpop latinopop male_prop female_prop colpercent poverty medincome medincome_black medincome_white unemploy rent medage age60 //keep only necessary variables from this table
save "2009_2013temp1.dta", replace

import delimited "nhgis0034_ds201_20135_zcta.csv", clear

rename uile001 gini
label var gini "Gini index"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e gini
save "2009_2013_temp2.dta", replace

merge 1:1 zcta5a using "2009_2013temp1.dta"
drop _merge
gen wave=3
save"2009_2013merged.dta", replace
 //N=32,989
************************************************************************************************************************

//2010-2014//

import delimited "nhgis0028_ds206_20145_zcta.csv", clear

rename aba1e001 totalpop
label var totalpop "total population"
rename aba2e002 whitepop
label var whitepop "total white population"
rename aba2e003 blackpop
label var blackpop "total black population"
rename abbae012 latinopop
label var latinopop "total latino population"
gen male_prop = abaqe002/abaqe001
label var male_prop "Male Proportion"
gen female_prop = abaqe026/abaqe001
label var female_prop "Female Proportion"
gen colpercent = (abc3e032 + abc3e033 + abc3e034 + abc3e035 + abc3e015 + abc3e016 + abc3e017 + abc3e018)/abc3e001
label var colpercent "percentage of college degree or above"
gen poverty = (abdje002 + abdje003 + abdje004)/abdje001
label var poverty "poverty rate"
rename abdpe001 medincome
label var medincome "household median income"
rename  abdre001 medincome_black
label var medincome_black "household median income Black"
rename abdxe001 medincome_white
label var medincome_white "household median income White"
gen unemploy = abgfe005/abgfe001 
label var unemploy "unemployment rate"
gen rent= abgxe003/abgxe001
label var rent "house rental rate"
rename abare001 medage
label var medage "median age"
gen age60 = (abaqe018 + abaqe019 + abaqe020 + abaqe021 + abaqe022 + abaqe023 + abaqe024 + abaqe025 + abaqe042 + abaqe043 + abaqe044 + abaqe045 + abaqe046 + abaqe047 + abaqe048 + abaqe049)/abaqe001
label var age60 "population proportion 60+"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e totalpop whitepop blackpop latinopop male_prop female_prop colpercent poverty medincome medincome_black medincome_white unemploy rent medage age60 //keep only necessary variables from this table
save "2010_2014temp1.dta", replace


import delimited "nhgis0028_ds207_20145_zcta.csv", clear

rename abu0e001 gini
label var gini "Gini index"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e gini
save "2010_2014temp2.dta", replace


merge 1:1 zcta5a using "2010_2014temp1.dta"
drop _merge
gen wave=4
save"2010_2014merged.dta", replace  
//N=32989
************************************************************************************************************************


//2011_2015//


import delimited "nhgis0026_ds215_20155_zcta.csv", clear

rename adkwe001 totalpop
label var totalpop "total population"
rename adkxe002 whitepop
label var whitepop "total white population"
rename adkxe003 blackpop
label var blackpop "total black population"
rename adk5e012 latinopop
label var latinopop "total latino population"
gen male_prop = adkle002/adkle001
label var male_prop "Male Proportion"
gen female_prop = adkle026/adkle001
label var female_prop "Female Proportion"
gen colpercent = (admye032 + admye033 + admye034 + admye035 + admye015 + admye016 + admye017 + admye018)/admye001
label var colpercent "percentage of college degree or above"
gen poverty = (adnee002 + adnee003 + adnee004)/adnee001
label var poverty "poverty rate"
rename adnke001 medincome
label var medincome "household median income"
gen unemploy = adpie005/adpie001 
label var unemploy "unemployment rate"
gen rent= adp0e003/adp0e001
label var rent "house rental rate"
rename adkme001 medage
label var medage "median age"
gen age60 = (adkle018 + adkle019 + adkle020 + adkle021 + adkle022 + adkle023 + adkle024 + adkle025 + adkle042 + adkle043 + adkle044 + adkle045 + adkle046 + adkle047 + adkle048 + adkle049)/adkle001
label var age60 "population proportion 60+"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e totalpop whitepop blackpop latinopop male_prop female_prop colpercent poverty medincome unemploy rent medage age60 //keep only necessary variables from this table
save "2011_2015temp1.dta", replace


import delimited "nhgis0026_ds216_20155_zcta.csv", clear

rename ad4be001 gini
label var gini "Gini index"
rename ad3pe001 medincome_black
label var medincome_black "household median income Black"
rename ad3ve001 medincome_white
label var medincome_white "household median income White"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e gini medincome_black medincome_white
save "2011_2015temp2.dta", replace


merge 1:1 zcta5a using "2011_2015temp1.dta"
drop _merge
gen wave=5
save"2011_2015merged.dta", replace  
//N=32989
************************************************************************************************************************


//2012-2016//
  

import delimited "nhgis0029_ds225_20165_zcta.csv", clear
  
rename af2le001 totalpop
label var totalpop "total population"
rename af2me002 whitepop
label var whitepop "total white population"
rename af2me003 blackpop
label var blackpop "total black population"
rename af2ue012 latinopop
label var latinopop "total latino population"
gen male_prop = af2ae002/af2ae001
label var male_prop "Male Proportion"
gen female_prop = af2ae026/af2ae001
label var female_prop "Female Proportion"
gen colpercent = (af4ne032 + af4ne033 + af4ne034 + af4ne035 + af4ne015 + af4ne016 + af4ne017 + af4ne018)/af4ne001
label var colpercent "percentage of college degree or above"
gen poverty = (af43e002 + af43e003 + af43e004)/af43e001
label var poverty "poverty rate"
rename af49e001 medincome
label var medincome "household median income"
gen unemploy = af67e005/af67e001 
label var unemploy "unemployment rate"
gen rent= af7pe003/af7pe001
label var rent "house rental rate"
rename af2be001 medage
label var medage "median age"
gen age60 = (af2ae018 + af2ae019 + af2ae020 + af2ae021 + af2ae022 + af2ae023 + af2ae024 + af2ae025 + af2ae042 + af2ae043 + af2ae044 + af2ae045 + af2ae046 + af2ae047 + af2ae048 + af2ae049)/af2ae001
label var age60 "population proportion 60+"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e totalpop whitepop blackpop latinopop male_prop female_prop colpercent poverty medincome unemploy rent medage age60 //keep only necessary variables from this table
save "2012_2016temp1.dta", replace


import delimited "nhgis0029_ds226_20165_zcta.csv", clear
rename agl1e001 gini
label var gini "Gini index"
rename aglfe001 medincome_black
label var medincome_black "household median income Black"
rename aglle001 medincome_white
label var medincome_white "household median income White"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e gini medincome_black medincome_white
save "2012_2016temp2.dta", replace


merge 1:1 zcta5a using "2012_2016temp1.dta"
drop _merge
gen wave=6
save"2012_2016merged.dta", replace  
//N=32989

************************************************************************************************************************


//2013-2017//

import delimited "nhgis0031_ds233_20175_zcta.csv", clear

rename ahy1e001 totalpop
label var totalpop "total population"
rename ahy2e002 whitepop
label var whitepop "total white population"
rename ahy2e003 blackpop
label var blackpop "total black population"
rename ahzae012 latinopop
label var latinopop "total latino population"
gen male_prop = ahyqe002/ahyqe001
label var male_prop "Male Proportion"
gen female_prop = ahyqe026/ahyqe001
label var female_prop "Female Proportion"
gen colpercent = (ah03e032 + ah03e033 + ah03e034 + ah03e035 + ah03e015 + ah03e016 + ah03e017 + ah03e018)/ah03e001
label var colpercent "percentage of college degree or above"
gen poverty = (ah1je002 + ah1je003 + ah1je004)/ah1je001
label var poverty "poverty rate"
rename ah1pe001 medincome
label var medincome "household median income"
gen unemploy = ah3pe005/ah3pe001 
label var unemploy "unemployment rate"
gen rent= ah37e003/ah37e001
label var rent "house rental rate"
rename ahyre001 medage
label var medage "median age"
gen age60 = (ahyqe018 + ahyqe019 + ahyqe020 + ahyqe021 + ahyqe022 + ahyqe023 + ahyqe024 + ahyqe025 + ahyqe042 + ahyqe043 + ahyqe044 + ahyqe045 + ahyqe046 + ahyqe047 + ahyqe048 + ahyqe049)/ahyqe001
label var age60 "population proportion 60+"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e totalpop whitepop blackpop latinopop male_prop female_pro colpercent poverty medincome unemploy rent medage age60 //keep only necessary variables from this table
save "2013_2017temp1.dta", replace



import delimited "nhgis0031_ds234_20175_zcta.csv", clear
rename aiije001 gini
label var gini "Gini index"
rename aihxe001 medincome_black
label var medincome_black "household median income Black"
rename aih3e001 medincome_white
label var medincome_white "household median income White"
drop if stusab == "PR"  //drop zipcode areas in Puerto Rico
keep gisjoin year zcta5a geoid name_e gini medincome_black medincome_white
save "2013_2017temp2.dta", replace

merge 1:1 zcta5a using "2013_2017temp1.dta"
drop _merge
gen wave=7
save"2013_2017merged.dta", replace  
//N=32989

************************************************************************************************************************
stop
************************************************************************************************************************


//All waves merged//

use    "2007_2011merged.dta" , clear
append using "2008_2012merged.dta"
append using "2009_2013merged.dta"
append using "2010_2014merged.dta"
append using "2011_2015merged.dta"
append using "2012_2016merged.dta"
append using "2013_2017merged.dta"
label define waves 1 "2007-2011" 2 "2008-2012" 3 "2009-2013" 4 "2010-2014" 5 "2011-2015" 6 "2012-2016" 7 "2013-2017"
label values wave waves
sort zcta5a wave
order zcta5a wave
drop year
save "allyear_merged.dta", replace




************************************************************************************************************************
 * To merge the two data files, both of them shall be sorted first. In sorting, please put the ID variables in correct order (i.e., higher order first, then followed by lower order ID variables)

use "allyear_merged.dta",clear
recode wave (1=2011) (2=2012) (3=2013) (4=2014) (5=2015) (6=2016) (7=2017), gen(YODX)
gen zipcode = zcta5a
sort zipcode YODX
merge 1:1 zipcode YODX using "zipcode_incidence_data.dta"

keep if _merge==3

label var wave "Time-intervals"


////////////////////////////////////////////////////////////////////////////////


///I created a weighted index with Factor Analysis as Dr.Luo suggested//
//factor analysis for variable deduction code//
factor medincome colpercent poverty, pcf  
predict SES   //default: higher score indicates better SES
replace SES = SES * -1   //this is to reverse code SES, such that higher score represents higher level of socioeconomic deprivation
label var SES "Area Based Socio-economic Measure"

*create dependent variables
gen ADRD_Total = ceil(case/totalpop* 10000)
label var ADRD_Total "ADRD Incidence per 10k"
drop if ADRD_Total > 10000
gen ADRD_White = ceil(case_w/whitepop* 10000)
label var ADRD_White "ADRD Incidence per 10k WHITE"
gen ADRD_Black = ceil(case_b/blackpop* 10000)
label var ADRD_Black "ADRD Incidence per 10k BLACK"


 


//Descriptive Statistics//
 
 summarize wave medage ADRD_Total ADRD_White ADRD_Black SES male_prop female_prop
 
 //As all the variables are continous//
 
 //Multivariate Analysis//
 
 reg ADRD_Total SES medage male_prop female_prop
 reg ADRD_Total SES wave medage male_prop female_prop
 reg ADRD_Total medage male_prop female_prop c.SES##c.wave
 
reg ADRD_White SES medage male_prop female_prop
reg ADRD_White SES wave medage male_prop female_prop
reg ADRD_White medage male_prop female_prop c.SES##c.wave

reg ADRD_Black SES medage male_prop female_prop
reg ADRD_Black SES wave medage male_prop female_prop
reg ADRD_Black medage male_prop female_prop c.SES##c.wave
 
/// As I have three dependent variable , I have to do multiple regression with each separately.
// I wanted to conduct hierachial regression but as I have an interaction term, I have to do it step by step.














