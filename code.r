install.packages("tidyverse")
library(tidyverse)
library(dplyr)
install.packages("downloader")
library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)
class(msleep_ggplot2)

primates<- filter(msleep_ggplot2, order == "Primates")%>%
  select(sleep_total)%>%
  unlist
mean(primates)


primatesa <- filter(msleep_ggplot2, order=="Primates")%>%
summarize(primatesa)
primatesa


