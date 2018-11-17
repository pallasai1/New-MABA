#ASSIGNMENT
# 1. Please import WHO.CSV

# D. Country with the lowest literacy - Mali 

LiteracyRateMinID <- which.min(WHO$LiteracyRate)

WHO$Country[LiteracyRateMinID]

# E. Richest country in Europe based on GNI - Bosnia and Herzegovina

europe <- subset(WHO, Region == 'Europe')

europemaxgni <- max(europe$GNI, na.rm = TRUE)

europemaxgnirow <- subset(europe, GNI == europemaxgni)

print(europemaxgnirow$Country)

#F. Mean Life expectancy of countries in Africa - 57.95652

africa <- subset(WHO, Region == 'Africa')

meanLEAfrica <-mean(africa$LifeExpectancy, na.rm = TRUE)

print(meanLEAfrica)

#G. Number of countries with population greater than 10,000 - 86

countries10M <- subset(WHO, Population > 10000)

dim(countries10M) [1]

#H. Top 5 countries in the Americas with the highest child mortality - Haiti, Bolivia,
# Guyana, Guatemala, Dominican Republic

Americas <- subset(WHO, Region == 'Americas')

Americas_order <- order(Americas$ChildMortality, decreasing = TRUE)

Americas_order_childmortality <- Americas[Americas_order,]

AmericasChildMortalityTOP5 <- head(Americas_order_childmortality, 5)

AmericasChildMortalityTOP5_Index <- Americas_order_childmortality[1:5,]

print(AmericasChildMortalityTOP5_Index)

#2. Please import Historical_NBA_Performance.xlxs

# A. The year Bulls has the highest winning percentage - 1995-1996

Bulls <- subset(Historical_NBA_Performance, Team == 'Bulls')

BullsMaxWinPrct <- max(Bulls$WinningPercentage)

BullsWinPrctOnly <- subset(Bulls, WinningPercentage == BullsMaxWinPrct)

BullsWinPrctOnly$Year

# B. Teams with an even win-loss record in a year - Celtics, Hawks, Nets, Hornets, Bulls, Mavericks etc.

EvenTeams <- subset(Historical_NBA_Performance, WinningPercentage == 0.5)

EvenTeams

#3. Please import Season Stats.csv
#A & B Bonus

#C.What year/season does Lebron James scored the highest? - 2006

LebronKing <-subset(Seasons_Stats, Player == 'LeBron James')

LeBronKingHighPt <- max(LebronKing$PTS, na.rm = TRUE)

subset(LebronKing, PTS == LeBronKingHighPt)$Year

#D. What year/season does Michael Jordan scored the highest? - 1987

MJ <- subset(Seasons_Stats, Player == 'Michael Jordan*')

MJMaxpt <- max(MJ$PTS, na.rm = TRUE)

subset(MJ, PTS == MJMaxpt)$Year

#E. Player efficiency rating of Kobe Bryant in the year where his MP is the lowest? - 2014

KobeB <- subset(Seasons_Stats, Player == 'Kobe Bryant')

KobeBMin <- min(KobeB$MP, na.rm = TRUE)

subset(KobeB, MP == KobeBMin)$Year

#4. Please import National Universities Rankings.csv

# A. University with the most number of undergrads - University of Central Florida

print(National_Universities_Rankings[which.max(National_Universities_Rankings$`Undergrad Enrollment`), ]$Name)

#B.Average Tuition in the Top 10 University - 49895.2

Top_10 <- National_Universities_Rankings[order(National_Universities_Rankings$Rank),][1:10,]

Top_10$TuitionNumber <- gsub(pattern = "\\$|\\,",replacement = "", Top_10$`Tuition and fees`)

mean(as.numeric(Top_10$TuitionNumber))

#Assignment 2
#Import WHO.csv (reference file)

# 1. Define an R function that removes NA values from a vector - na.omit

#Remove all the NA in all the vectors in WHO.CSV
read_csv('WHO.CSV')
who_omit <- na.omit(WHO)

who_omit

removeNA <- function(x) {
                
# 2. Define an R function that computes the determinant of a given matrix. The output should be a vector of length 1.

A = array(c(1, 4, 5, -1, 2, 1, 1, 5, 4), dim=c(3,3))
A
det(A)

#3. 

factorial(12)