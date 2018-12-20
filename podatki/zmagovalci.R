library(dplyr)
library(rvest)
library(gsubfn)
library(readr)
library(XML)

tabela_zmagovalci <- readHTMLTable("http://www.escstats.com/winners.htm", which = 2)
head(tabela_zmagovalci)

#06
tabela_glasovanje_06 <- readHTMLTable("http://www.escstats.com/jury06f.htm", which = 1)
#04
tabela_glasovanje_04 <- readHTMLTable("http://www.escstats.com/jury04f.htm", which = 1)
#05
tabela_glasovanje_05 <- readHTMLTable("http://www.escstats.com/jury05f.htm", which = 1)
#07
tabela_glasovanje_07 <- readHTMLTable("http://www.escstats.com/jury07f.htm", which = 1)
#08
tabela_glasovanje_08 <- readHTMLTable("http://www.escstats.com/jury08f.htm", which = 1)
#09
tabela_glasovanje_09 <- readHTMLTable("http://www.escstats.com/jury09f.htm", which = 1)
#10
tabela_glasovanje_10 <- readHTMLTable("http://www.escstats.com/jury10f.htm", which = 1)
#11
tabela_glasovanje_11 <- readHTMLTable("http://www.escstats.com/jury11f.htm", which = 1)
#12
tabela_glasovanje_12 <- readHTMLTable("http://www.escstats.com/jury12f.htm", which = 1)
#13
tabela_glasovanje_13 <- readHTMLTable("http://www.escstats.com/jury13f.htm", which = 1)
#14
tabela_glasovanje_14 <- readHTMLTable("http://www.escstats.com/jury14f.htm", which = 1)
#15
tabela_glasovanje_15 <- readHTMLTable("http://www.escstats.com/jury15f.htm", which = 1)
#16
tabela_glasovanje_16 <- readHTMLTable("http://www.escstats.com/jury16f.htm", which = 1)
#17
tabela_glasovanje_17 <- readHTMLTable("http://www.escstats.com/jury17f.htm", which = 1)
#18
tabela_glasovanje_18 <- readHTMLTable("http://www.escstats.com/jury18f.htm", which = 1)
