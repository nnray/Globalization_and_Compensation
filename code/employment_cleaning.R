library(here);library(readxl);library(tidyverse)
Alabama<-read_excel(
  here("data","employment","Alabama.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Alabama")
Alaska<-read_excel(
  here("data","employment","Alaska.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Alaska")
Arizona<-read_excel(
  here("data","employment","Arizona.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Arizona")
Arkansas<-read_excel(
  here("data","employment","Arkansas.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Arkansas")
California<-read_excel(
  here("data","employment","California.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="California")
Colorado<-read_excel(
  here("data","employment","Colorado.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Colorado")
Connecticut<-read_excel(
  here("data","employment","Connecticut.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Connecticut")
Delaware<-read_excel(
  here("data","employment","Delaware.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Delaware")
District_of_Columbia<-read_excel(
  here("data","employment","District of Columbia.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="District of Columbia")
Florida<-read_excel(
  here("data","employment","Florida.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Florida")
Georgia<-read_excel(
  here("data","employment","Georgia.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Georgia")
Hawaii<-read_excel(
  here("data","employment","Hawaii.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Hawaii")
Idaho<-read_excel(
  here("data","employment","Idaho.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Idaho")
Illinois<-read_excel(
  here("data","employment","Illinois.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Illinois")
Indiana<-read_excel(
  here("data","employment","Indiana.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Indiana")
Iowa<-read_excel(
  here("data","employment","Iowa.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Iowa")
Kansas<-read_excel(
  here("data","employment","Kansas.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Kansas")
Kentucky<-read_excel(
  here("data","employment","Kentucky.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Kentucky")
Louisiana<-read_excel(
  here("data","employment","Louisiana.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Louisiana")
Maine<-read_excel(
  here("data","employment","Maine.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Maine")
Maryland<-read_excel(
  here("data","employment","Maryland.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Maryland")
Massachusetts<-read_excel(
  here("data","employment","Massachusetts.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Massachusetts")
Michigan<-read_excel(
  here("data","employment","Michigan.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Michigan")
Minnesota<-read_excel(
  here("data","employment","Minnesota.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Minnesota")
Mississippi<-read_excel(
  here("data","employment","Mississippi.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Mississippi")
Missouri<-read_excel(
  here("data","employment","Missouri.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Missouri")
Montana<-read_excel(
  here("data","employment","Montana.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Montana")
Nebraska<-read_excel(
  here("data","employment","Nebraska.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Nebraska")
Nevada<-read_excel(
  here("data","employment","Nevada.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Nevada")
New_Hampshire<-read_excel(
  here("data","employment","New Hampshire.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="New Hampshire")
New_Jersey<-read_excel(
  here("data","employment","New Jersey.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="New Jersey")
New_Mexico<-read_excel(
  here("data","employment","New Mexico.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="New Mexico")
New_York<-read_excel(
  here("data","employment","New York.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="New York")
North_Carolina<-read_excel(
  here("data","employment","North Carolina.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="North Carolina")
North_Dakota<-read_excel(
  here("data","employment","North Dakota.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="North Dakota")
Ohio<-read_excel(
  here("data","employment","Ohio.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Ohio")
Oklahoma<-read_excel(
  here("data","employment","Oklahoma.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Oklahoma")
Oregon<-read_excel(
  here("data","employment","Oregon.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Oregon")
Pennsylvania<-read_excel(
  here("data","employment","Pennsylvania.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Pennsylvania")
Rhode_Island<-read_excel(
  here("data","employment","Rhode Island.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Rhode Island")
South_Carolina<-read_excel(
  here("data","employment","South Carolina.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="South Carolina")
South_Dakota<-read_excel(
  here("data","employment","South Dakota.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="South Dakota")
Tennessee<-read_excel(
  here("data","employment","Tennessee.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Tennessee")
Texas<-read_excel(
  here("data","employment","Texas.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Texas")
Utah<-read_excel(
  here("data","employment","Utah.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Utah")
Vermont<-read_excel(
  here("data","employment","Vermont.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Vermont")
Virginia<-read_excel(
  here("data","employment","Virginia.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Virginia")
Washington<-read_excel(
  here("data","employment","Washington.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Washington")
West_Virginia<-read_excel(
  here("data","employment","west Virginia.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="West Virginia")
Wisconsin<-read_excel(
  here("data","employment","Wisconsin.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Wisconsin")
Wyoming<-read_excel(
  here("data","employment","Wyoming.xlsx"),
  skip = 12) %>%
  rename(year="Year") %>%
  group_by(year) %>%
  summarize(employment=mean(Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)) %>%
  mutate(state="Wyoming")
employment<-full_join(Alabama,Alaska) %>%
  full_join(.,Arizona) %>%
  full_join(.,Arkansas) %>%
  full_join(.,California) %>%
  full_join(.,Colorado) %>%
  full_join(.,Connecticut) %>%
  full_join(.,Delaware) %>%
  full_join(.,District_of_Columbia) %>%
  full_join(.,Florida) %>%
  full_join(.,Georgia) %>%
  full_join(.,Hawaii) %>%
  full_join(.,Idaho) %>%
  full_join(.,Illinois) %>%
  full_join(.,Indiana) %>%
  full_join(.,Iowa) %>%
  full_join(.,Kansas) %>%
  full_join(.,Kentucky) %>%
  full_join(.,Louisiana) %>%
  full_join(.,Maine) %>%
  full_join(.,Maryland) %>%
  full_join(.,Massachusetts) %>%
  full_join(.,Michigan) %>%
  full_join(.,Minnesota) %>%
  full_join(.,Mississippi) %>%
  full_join(.,Missouri) %>%
  full_join(.,Montana) %>%
  full_join(.,Nebraska) %>%
  full_join(.,Nevada) %>%
  full_join(.,New_Hampshire) %>%
  full_join(.,New_Jersey) %>%
  full_join(.,New_Mexico) %>%
  full_join(.,New_York) %>%
  full_join(.,North_Carolina) %>%
  full_join(.,North_Dakota) %>%
  full_join(.,Ohio) %>%
  full_join(.,Oklahoma) %>%
  full_join(.,Oregon) %>%
  full_join(.,Pennsylvania) %>%
  full_join(.,Rhode_Island) %>%
  full_join(.,South_Carolina) %>%
  full_join(.,South_Dakota) %>%
  full_join(.,Tennessee) %>%
  full_join(.,Texas) %>%
  full_join(.,Utah) %>%
  full_join(.,Vermont) %>%
  full_join(.,Virginia) %>%
  full_join(.,Washington) %>%
  full_join(.,West_Virginia) %>%
  full_join(.,Wisconsin) %>%
  full_join(.,Wyoming) %>%
  write.csv(.,file=here("data","employment","employment.csv"),row.names = FALSE)