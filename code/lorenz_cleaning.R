library(readxl);library(tidyverse);library(here)
#Lorenz curves for every year (there was no aggregated download on LIS)
lorenz_80<-read_xlsx(
  here("data","income","lorenz","80.xlsx")
)
lorenz_81<-read_xlsx(
  here("data","income","lorenz","81.xlsx")
)
lorenz_82<-read_xlsx(
  here("data","income","lorenz","82.xlsx")
)
lorenz_83<-read_xlsx(
  here("data","income","lorenz","83.xlsx")
)
lorenz_84<-read_xlsx(
  here("data","income","lorenz","84.xlsx")
)
lorenz_85<-read_xlsx(
  here("data","income","lorenz","85.xlsx")
)
lorenz_86<-read_xlsx(
  here("data","income","lorenz","86.xlsx")
)
lorenz_87<-read_xlsx(
  here("data","income","lorenz","87.xlsx")
)
lorenz_88<-read_xlsx(
  here("data","income","lorenz","88.xlsx")
)
lorenz_89<-read_xlsx(
  here("data","income","lorenz","89.xlsx")
)
lorenz_90<-read_xlsx(
  here("data","income","lorenz","90.xlsx")
)
lorenz_91<-read_xlsx(
  here("data","income","lorenz","91.xlsx")
)
lorenz_92<-read_xlsx(
  here("data","income","lorenz","92.xlsx")
)
lorenz_93<-read_xlsx(
  here("data","income","lorenz","93.xlsx")
)
lorenz_94<-read_xlsx(
  here("data","income","lorenz","94.xlsx")
)
lorenz_95<-read_xlsx(
  here("data","income","lorenz","95.xlsx")
)
lorenz_96<-read_xlsx(
  here("data","income","lorenz","96.xlsx")
)
lorenz_97<-read_xlsx(
  here("data","income","lorenz","97.xlsx")
)
lorenz_98<-read_xlsx(
  here("data","income","lorenz","98.xlsx")
)
lorenz_99<-read_xlsx(
  here("data","income","lorenz","99.xlsx")
)
lorenz_00<-read_xlsx(
  here("data","income","lorenz","00.xlsx")
)
lorenz_01<-read_xlsx(
  here("data","income","lorenz","01.xlsx")
)
lorenz_02<-read_xlsx(
  here("data","income","lorenz","02.xlsx")
)
lorenz_03<-read_xlsx(
  here("data","income","lorenz","03.xlsx")
)
lorenz_04<-read_xlsx(
  here("data","income","lorenz","04.xlsx")
)
lorenz_05<-read_xlsx(
  here("data","income","lorenz","05.xlsx")
)
lorenz_06<-read_xlsx(
  here("data","income","lorenz","06.xlsx")
)
lorenz_07<-read_xlsx(
  here("data","income","lorenz","07.xlsx")
)
lorenz_08<-read_xlsx(
  here("data","income","lorenz","08.xlsx")
)
lorenz_09<-read_xlsx(
  here("data","income","lorenz","09.xlsx")
)
lorenz_10<-read_xlsx(
  here("data","income","lorenz","10.xlsx")
)
lorenz_11<-read_xlsx(
  here("data","income","lorenz","11.xlsx")
)
lorenz_12<-read_xlsx(
  here("data","income","lorenz","12.xlsx")
)
lorenz_13<-read_xlsx(
  here("data","income","lorenz","13.xlsx")
)
lorenz_14<-read_xlsx(
  here("data","income","lorenz","14.xlsx")
)
lorenz_15<-read_xlsx(
  here("data","income","lorenz","15.xlsx")
)
lorenz_16<-read_xlsx(
  here("data","income","lorenz","16.xlsx")
)
lorenz_17<-read_xlsx(
  here("data","income","lorenz","17.xlsx")
)
lorenz_18<-read_xlsx(
  here("data","income","lorenz","18.xlsx")
)
lorenz_19<-read_xlsx(
  here("data","income","lorenz","19.xlsx")
)
lorenz_20<-read_xlsx(
  here("data","income","lorenz","20.xlsx")
)
################################################################################
# Lorenz curve cleaning (to extract share of income earned by the lower 50% of
#the population)
lorenz_80<-lorenz_80 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1980)
lorenz_81<-lorenz_81 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1981)
lorenz_82<-lorenz_82 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1982)
lorenz_83<-lorenz_83 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1983)
lorenz_84<-lorenz_84 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1984)
lorenz_85<-lorenz_85 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1985)
lorenz_86<-lorenz_86 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1986)
lorenz_87<-lorenz_87 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1987)
lorenz_88<-lorenz_88 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1988)
lorenz_89<-lorenz_89 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1989)
lorenz_90<-lorenz_90 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1990)
lorenz_91<-lorenz_91 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1991)
lorenz_92<-lorenz_92 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1992)
lorenz_93<-lorenz_93 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1993)
lorenz_94<-lorenz_94 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1994)
lorenz_95<-lorenz_95 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1995)
lorenz_96<-lorenz_96 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1996)
lorenz_97<-lorenz_97 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1997)
lorenz_98<-lorenz_98 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1998)
lorenz_99<-lorenz_99 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=1999)
lorenz_00<-lorenz_00 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2000)
lorenz_01<-lorenz_01 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2001)
lorenz_02<-lorenz_02 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2002)
lorenz_03<-lorenz_03 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2003)
lorenz_04<-lorenz_04 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2004)
lorenz_05<-lorenz_05 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2005)
lorenz_06<-lorenz_06 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2006)
lorenz_07<-lorenz_07 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2007)
lorenz_08<-lorenz_08 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2008)
lorenz_09<-lorenz_09 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2009)
lorenz_10<-lorenz_10 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2010)
lorenz_11<-lorenz_11 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2011)
lorenz_12<-lorenz_12 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2012)
lorenz_13<-lorenz_13 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2013)
lorenz_14<-lorenz_14 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2014)
lorenz_15<-lorenz_15 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2015)
lorenz_16<-lorenz_16 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2016)
lorenz_17<-lorenz_17 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2017)
lorenz_18<-lorenz_18 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2018)
lorenz_19<-lorenz_19 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2019)
lorenz_20<-lorenz_20 %>%
  select(countries,`50`) %>%
  rename(country=countries,lorenz=`50`) %>%
  mutate(year=2020)
lorenz<-lorenz_80 %>%
  full_join(.,lorenz_81,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_82,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_83,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_84,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_85,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_86,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_87,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_88,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_89,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_90,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_91,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_92,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_93,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_94,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_95,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_96,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_97,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_98,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_99,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_00,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_01,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_02,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_03,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_04,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_05,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_06,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_07,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_08,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_09,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_10,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_11,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_12,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_13,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_14,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_15,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_16,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_17,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_18,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_19,by=c("country","year","lorenz")) %>%
  full_join(.,lorenz_20,by=c("country","year","lorenz"))
write.csv(lorenz,file=here("data","income","lorenz_50.csv"))