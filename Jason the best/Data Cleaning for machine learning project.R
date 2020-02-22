library(dplyr)

#Columns 1 to 41 are your columns, so null 42:81

# train[42:81] = NULL
View(train)

#The code below is for the information in the Train data set. 

View(train$Alley)

train %>% distinct(Alley)

A= train %>% filter(Alley %in% c("Grvl"))
B= train %>% filter(Alley %in% c("Pave"))

#We can get rid of Alley, it only accounts for 91 rows in the data set 
View(A)
View(B)
train[7] = NULL
#__________________________________


train %>% distinct(Street)

A= train %>% filter(Street %in% c("Pave"))
B= train %>% filter(Street %in% c("Grvl"))

#there are only 6 Grvl streets, NULL this column, its not that relevant.
View(A)
View(B)
train[6] = NULL
#____________________________________


train %>% distinct(LandContour)

A= train %>% filter(LandContour %in% c("Lvl")) #1,311 rows
B= train %>% filter(LandContour %in% c("Bnk")) #63 rows
C= train %>% filter(LandContour %in% c("Low")) #36 rows 
D= train %>% filter(LandContour %in% c("HLS")) #50 rows 

#I would get rid of this column, Bnk, LOW, and HLS are all far lower than Lvl

train[7] = NULL
#____________________________________

train %>% distinct(Utilities)

A= train %>% filter(Utilities %in% c("AllPub"))
B= train %>% filter(Utilities %in% c("NoSeWa"))

#Drop the utilities column, there is literally only 1 NoSewa row in the data set. 


train[7] = NULL

#_____________________________________


train %>% distinct(LotConfig)

train %>% filter(LotConfig %in% c("Inside")) #1,042 rows
train %>% filter(LotConfig %in% c("FR2")) #37 rows
train %>% filter(LotConfig %in% c("Corner")) #253 rows
train %>% filter(LotConfig %in% c("CulDSac")) #84 rows
train %>% filter(LotConfig %in% c("FR3")) #70 rows

#This may be a good column to keep seeing as there are a solid amount if Corner rows to go along with inside rows. 

#________________________________________


#Drop Land Slope, Sev and Mod do not total 100 even, so that will not do much to the data in train. 

train[8] = NULL

#_________________________________________


train %>% distinct(Condition1)

View(train %>% filter(Condition1 %in% c("Norm"))) #1,260 rows
View(train %>% filter(Condition1 %in% c("Feedr"))) #81 rows      
View(train %>% filter(Condition1 %in% c("PosN"))) #19 rows      
View(train %>% filter(Condition1 %in% c("Artery"))) #48 rows    
View(train %>% filter(Condition1 %in% c("RRAe"))) #11 rows      
View(train %>% filter(Condition1 %in% c("RRNn"))) #5 rows     
View(train %>% filter(Condition1 %in% c("RRAn")))  #26 rows    
View(train %>% filter(Condition1 %in% c("PosA"))) #8 rows     
View(train %>% filter(Condition1 %in% c("RRNe"))) #2 rows


train[9] = NULL

#Norm over powers the other sections in this data set. 

#______________________________________


train %>% distinct(Condition2)

View(train %>% filter(Condition2 %in% c("Norm"))) #1,445 rows 
View(train %>% filter(Condition2 %in% c("Artery"))) #2 rows      
View(train %>% filter(Condition2 %in% c("RRNn"))) #2 rows      
View(train %>% filter(Condition2 %in% c("Feedr"))) #6 rows    
View(train %>% filter(Condition2 %in% c("PosN"))) #2 rows      
View(train %>% filter(Condition2 %in% c("PosA"))) #1 row     
View(train %>% filter(Condition2 %in% c("RRAn")))  #1 row    
View(train %>% filter(Condition2 %in% c("RRAe"))) #1 row




#_______________________________________


train %>% distinct(BldgType)

View(train %>% filter(BldgType %in% c("1Fam"))) #1,220 rows 
View(train %>% filter(BldgType %in% c("2fmCon"))) #31 rows      
View(train %>% filter(BldgType %in% c("Duplex"))) # 52 rows      
View(train %>% filter(BldgType %in% c("TwnhsE"))) #114 rows    
View(train %>% filter(BldgType %in% c("Twnhs"))) #43 rows


train[9] = NULL

#Drop BldgType 

#__________________________________________

#Keep HouseStyle columns 

#____________________________________


train %>% distinct(RoofStyle)

View(train %>% filter(RoofStyle %in% c("Gable"))) # 1,141 rows 
View(train %>% filter(RoofStyle %in% c("Hip"))) #286 rows      
View(train %>% filter(RoofStyle %in% c("Gambrel"))) #11  rows      
View(train %>% filter(RoofStyle %in% c("Mansard"))) #7 rows    
View(train %>% filter(RoofStyle %in% c("Flat"))) #13 rows
View(train %>% filter(RoofStyle %in% c("Shed"))) # 2 rows

#Consider keeping this column, seeing as there are 286 rows of Hip.


#_________________________________________


train %>% distinct(RoofMatl)

View(train %>% filter(RoofMatl %in% c("CompShg"))) # 1,434 rows 
View(train %>% filter(RoofMatl %in% c("WdShngl"))) #6 rows      
View(train %>% filter(RoofMatl %in% c("Metal"))) #1 rows      
View(train %>% filter(RoofMatl %in% c("WdShake"))) #5 rows    
View(train %>% filter(RoofMatl %in% c("Membran"))) #1 rows
View(train %>% filter(RoofMatl %in% c("Tar&Grv"))) #11 rows 
View(train %>% filter(RoofMatl %in% c("Roll"))) 
View(train %>% filter(RoofMatl %in% c("ClyTile")))



train[15] = NULL

#Delete this column, overwhelming number of CompShg rows. 


#_______________________________

#Coloumn: Exterior 1st 

train %>% distinct(Exterior1st)

View(train %>% filter(Exterior1st %in% c("VinylSd"))) #  515
View(train %>% filter(Exterior1st %in% c("MetalSd"))) #  220   
View(train %>% filter(Exterior1st %in% c("Wd Sdng"))) # 206      
View(train %>% filter(Exterior1st %in% c("HdBoard"))) #  222  
View(train %>% filter(Exterior1st %in% c("BrkFace"))) # 50
View(train %>% filter(Exterior1st %in% c("WdShing"))) # 26
View(train %>% filter(Exterior1st %in% c("CemntBd"))) # 61
View(train %>% filter(Exterior1st %in% c("Plywood"))) # 108
View(train %>% filter(Exterior1st %in% c("AsbShng"))) # 20
View(train %>% filter(Exterior1st %in% c("Stucco"))) # 25
View(train %>% filter(Exterior1st %in% c("BrkComm"))) # 2
View(train %>% filter(Exterior1st %in% c("AsphShn"))) #1
View(train %>% filter(Exterior1st %in% c("Stone"))) #2
View(train %>% filter(Exterior1st %in% c("ImStucc"))) #1
View(train %>% filter(Exterior1st %in% c("CBlock"))) #1



#Keep this column

#________________________________


#Exterior2nd, keep this column

#_______________________________


#MasVnrType

train %>% distinct(MasVnrType)

View(train %>% filter(MasVnrType %in% c("BrkFace"))) #445  
View(train %>% filter(MasVnrType %in% c("None"))) # 864    
View(train %>% filter(MasVnrType %in% c("Stone"))) #128       
View(train %>% filter(MasVnrType %in% c("BrkCmn"))) # 15  
View(train %>% filter(MasVnrType %in% c(NA))) # 8

#Keep this column


#________________________________

train %>% distinct(MasVnrArea)

View(train %>% filter(MasVnrArea %in% c("0"))) #800 rows are 0 roughly



#_________________________________


train %>% distinct(ExterQual)

View(train %>% filter(ExterQual %in% c("Gd"))) #488 rows
View(train %>% filter(ExterQual %in% c("TA"))) #906 rows 
View(train %>% filter(ExterQual %in% c("Ex"))) # 52 rows 
View(train %>% filter(ExterQual %in% c("Fa"))) # 14 rows

#________________________________

train %>% distinct(ExterCond)

View(train %>% filter(ExterCond %in% c("TA"))) #1,282 rows
View(train %>% filter(ExterCond %in% c("Gd"))) #146 rows 
View(train %>% filter(ExterCond %in% c("Fa"))) # 28 rows 
View(train %>% filter(ExterCond %in% c("Po"))) # 1 rows 
View(train %>% filter(ExterCond %in% c("Ex"))) # 3 rows


#Consider this column 

train[20] = NULL

#_______________________________________

train %>% distinct(Foundation)

View(train %>% filter(Foundation %in% c("PConc"))) #647 rows
View(train %>% filter(Foundation %in% c("CBlock"))) #634 rows 
View(train %>% filter(Foundation %in% c("BrkTil"))) # 146 rows 
View(train %>% filter(Foundation %in% c("Wood"))) # 3 rows 
View(train %>% filter(Foundation %in% c("Slab"))) # 24 rows
View(train %>% filter(Foundation %in% c("Stone"))) #6 rows

#_______________________________________

train %>% distinct(BsmtQual)

View(train %>% filter(BsmtQual %in% c("Gd"))) # 618 rows
View(train %>% filter(BsmtQual %in% c("TA"))) # 649 rows 
View(train %>% filter(BsmtQual %in% c("Ex"))) # 121 rows 
View(train %>% filter(BsmtQual %in% c("Fa"))) # 35 rows 
View(train %>% filter(BsmtQual %in% c(NA))) # 37 rows

#Keep this column 

#___________________________________________

train %>% distinct(BsmtCond)

View(train %>% filter(BsmtCond %in% c("TA"))) #  1,311 rows
View(train %>% filter(BsmtCond %in% c("Gd"))) # 65 rows 
View(train %>% filter(BsmtCond %in% c("Fa"))) # 45 rows 
View(train %>% filter(BsmtCond %in% c("Po"))) # 2 rows 
View(train %>% filter(BsmtCond %in% c(NA))) # 37 rows


train[22] = NULL

#Drop this column 

#_______________________________

train %>% distinct(BsmtExposure)

View(train %>% filter(BsmtExposure %in% c("No"))) # 953 rows
View(train %>% filter(BsmtExposure %in% c("Gd"))) # 134 rows 
View(train %>% filter(BsmtExposure %in% c("Mn"))) # 114 rows 
View(train %>% filter(BsmtExposure %in% c("Av"))) # 221 rows 
View(train %>% filter(BsmtExposure %in% c(NA))) # 38 rows

#Keep this column

#______________________________

train %>% distinct(BsmtFinType1)

View(train %>% filter(BsmtFinType1 %in% c("GLQ"))) # 418 rows
View(train %>% filter(BsmtFinType1 %in% c("ALQ"))) # 220 rows 
View(train %>% filter(BsmtFinType1 %in% c("Unf"))) # 430 rows 
View(train %>% filter(BsmtFinType1 %in% c("Rec"))) # 133 rows 
View(train %>% filter(BsmtFinType1 %in% c("BLQ"))) #148 rows 
View(train %>% filter(BsmtFinType1 %in% c("LwQ"))) # 74 rows
View(train %>% filter(BsmtFinType1 %in% c(NA))) # 37 rows


#Keep this column

#____________________________________

train %>% distinct(BsmtFinType2)

View(train %>% filter(BsmtFinType2 %in% c("Unf"))) # 1,256 rows
View(train %>% filter(BsmtFinType2 %in% c("BLQ"))) #33  rows 
View(train %>% filter(BsmtFinType2 %in% c("ALQ"))) #19  rows 
View(train %>% filter(BsmtFinType2 %in% c("Rec"))) # 54 rows 
View(train %>% filter(BsmtFinType2 %in% c("LwQ"))) # 46 rows 
View(train %>% filter(BsmtFinType2 %in% c("GLQ"))) # 14 rows
View(train %>% filter(BsmtFinType2 %in% c(NA))) #38 rows


train[25] = NULL

#Get rid of this column 

#________________________________

train %>% distinct(BsmtFinSF2)

View(train %>% filter(BsmtFinSF2 %in% c("0"))) #1,293 rows of 0

#Consider dropping this row, there are to many rows with 0 in it.

train[25] = NULL

#________________________________


train %>% distinct(Heating)

View(train %>% filter(Heating %in% c("GasA"))) # 1,428 rows
View(train %>% filter(Heating %in% c("GasW"))) # 18 rows 
View(train %>% filter(Heating %in% c("Grav"))) # 7 rows 
View(train %>% filter(Heating %in% c("Wall"))) #4 rows 
View(train %>% filter(Heating %in% c("OthW"))) # 2 rows 
View(train %>% filter(Heating %in% c("Floor"))) #1 rows


train[29] = NULL

#Get rid of this column

#_______________________________

train %>% distinct(HeatingQC)

View(train %>% filter(HeatingQC %in% c("Ex"))) # 741 rows
View(train %>% filter(HeatingQC %in% c("Gd"))) # 241 rows 
View(train %>% filter(HeatingQC %in% c("TA"))) # 428 rows 
View(train %>% filter(HeatingQC %in% c("Fa"))) #  49 rows 
View(train %>% filter(HeatingQC %in% c("Po"))) # 1 rows

#Keep this column 


#_________________________________

View(train)

train_edited= train

View(train_edited)


train_edited %>% distinct(MSZoning)

View(train_edited %>% filter(MSZoning %in% c("RL"))) #  rows 
View(train %>% filter(MSZoning %in% c("RM"))) #  rows 
View(train %>% filter(MSZoning %in% c("C (all)"))) #   
View(train %>% filter(MSZoning %in% c("FV"))) #
View(train_edited %>% filter(MSZoning %in% c("RH")))





















































































