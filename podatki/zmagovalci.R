library(dplyr)
library(rvest)


link <- "http://www.escstats.com/winners.htm"
stran <- html_session(link) %>% read_html()
tabela <- stran %>% html_nodes(xpath="//table") %>%.[[1]] %>% html_table(dec=",")

