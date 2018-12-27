library(dplyr)
library(rvest)
library(gsubfn)
library(readr)
library(XML)

tabela_zmagovalci <- readHTMLTable("http://www.escstats.com/winners.htm", which = 2)
tabela_zmagovalci$POS <- NULL
tabela_zmagovalci$`Â ` <- NULL
tabela_zmagovalci$`PERFORMER(S)` <- NULL
tabela_zmagovalci$TITLE <- NULL
tabela_zmagovalci$FAVE <- NULL


#04
tabela_glasovanje_04 <- readHTMLTable("http://www.escstats.com/jury04f.htm", which = 1)
tabela_glasovanje_04 <-tabela_glasovanje_04[-c(19,38),]

#05
tabela_glasovanje_05 <- readHTMLTable("http://www.escstats.com/jury05f.htm", which = 1)
tabela_glasovanje_05 <-tabela_glasovanje_05[-c(21,41),]

#06
tabela_glasovanje_06 <- readHTMLTable("http://www.escstats.com/jury06f.htm", which = 1)
tabela_glasovanje_06 <-tabela_glasovanje_06[-c(20,40),]

#07
tabela_glasovanje_07 <- readHTMLTable("http://www.escstats.com/jury07f.htm", which = 1)
tabela_glasovanje_07 <-tabela_glasovanje_07[-c(22,44),]

#08
tabela_glasovanje_08 <- readHTMLTable("http://www.escstats.com/jury08f.htm", which = 1)
tabela_glasovanje_08 <-tabela_glasovanje_08[-c(22,45),]

lvls04 <- levels(tabela_glasovanje_04$`Â `)
lvls05 <- levels(tabela_glasovanje_05$`Â `)
lvls06 <- levels(tabela_glasovanje_06$`Â `)
lvls07 <- levels(tabela_glasovanje_07$`Â `)
lvls08 <- levels(tabela_glasovanje_08$`Â `)

vse_drzave <- cbind(lvls04,lvls05, lvls06,lvls07,lvls08)


#te tabele ne obstajajo
# #09
# tabela_glasovanje_09 <- readHTMLTable("http://www.escstats.com/jury09f.htm", which = 1)
# #10
# tabela_glasovanje_10 <- readHTMLTable("http://www.escstats.com/jury10f.htm", which = 1)
# #11
# tabela_glasovanje_11 <- readHTMLTable("http://www.escstats.com/jury11f.htm", which = 1)
# #12
# tabela_glasovanje_12 <- readHTMLTable("http://www.escstats.com/jury12f.htm", which = 1)
# #13
# tabela_glasovanje_13 <- readHTMLTable("http://www.escstats.com/jury13f.htm", which = 1)
# #14
# tabela_glasovanje_14 <- readHTMLTable("http://www.escstats.com/jury14f.htm", which = 1)
# #15
# tabela_glasovanje_15 <- readHTMLTable("http://www.escstats.com/jury15f.htm", which = 1)
# #16
# tabela_glasovanje_16 <- readHTMLTable("http://www.escstats.com/jury16f.htm", which = 1)
# #17
# tabela_glasovanje_17 <- readHTMLTable("http://www.escstats.com/jury17f.htm", which = 1)
# #18
# tabela_glasovanje_18 <- readHTMLTable("http://www.escstats.com/jury18f.htm", which = 1)

