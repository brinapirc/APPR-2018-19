# Analiza podatkov s programom R, 2019/20

# Brina Pirc

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2018/19

* [![Shiny](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/brinapirc/APPR-2018-19/master?urlpath=shiny/APPR-2018-19/projekt.Rmd) Shiny
* [![RStudio](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/brinapirc/APPR-2018-19/master?urlpath=rstudio) RStudio

## Evrovizija &#9733;
Projekt je posvečen analizi Evrovizije, evropksega pevskega tekmovanja. Namen je poiskati podatke o:
* državah zmagovalkah od leta 1956 do 2015 (od leta 2015 je način glasovanja namreč spremenjen)
* številu glasov, ki so jih te države prejele
* državah, ki se največkrat uvrstijo v finalni del tekmovanja (pri tem ne bomo upoštevali tistih, ki se uvrstijo avtomatično), in tistih, ki se najmanjkrat
* jezikih, v katerih države nastopajo
* glasovanju, in sicer katere države so dobile največ glasov

Iz teh podatkov in trendov bomo lahko zaključili, pripadnik katere države se najbolj izplača biti ter v katerem jeziku je najbolje prepevati. Analiza teh podatkov ima tudi splošni namen ozaveščanja javnosti.

### Tabele:
* leto tekmovanja, država zmagovalka, število prejetih glasov
* število izvedenih pesmi v različnih jezikih, število zmagovalnih pesmi, izvedenih v tem jeziku oz. najboljša dosežena uvrstitev
* število uvrstitev v finale (10 najboljših in najslabših držav)
* država, število prejetih glasov v skupnem, število zmag

### Viri:
* [ESC Stats](http://www.escstats.com/)
* [Eurovision Song Contest](https://eurovision.tv)

### Opomba:
Zajetje podatkov se utegne spremeniti, vendar ne korenito.


## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`.
Ko ga prevedemo, se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`.
Podatkovni viri so v mapi `podatki/`.
Zemljevidi v obliki SHP, ki jih program pobere,
se shranijo v mapo `../zemljevidi/` (torej izven mape projekta).

## Potrebni paketi za R

Za zagon tega vzorca je potrebno namestiti sledeče pakete za R:

* `knitr` - za izdelovanje poročila
* `rmarkdown` - za prevajanje poročila v obliki RMarkdown
* `shiny` - za prikaz spletnega vmesnika
* `DT` - za prikaz interaktivne tabele
* `rgdal` - za uvoz zemljevidov
* `rgeos` - za podporo zemljevidom
* `digest` - za zgoščevalne funkcije (uporabljajo se za shranjevanje zemljevidov)
* `readr` - za branje podatkov
* `rvest` - za pobiranje spletnih strani
* `tidyr` - za preoblikovanje podatkov v obliko *tidy data*
* `dplyr` - za delo s podatki
* `gsubfn` - za delo z nizi (čiščenje podatkov)
* `ggplot2` - za izrisovanje grafov
* `mosaic` - za pretvorbo zemljevidov v obliko za risanje z `ggplot2`
* `maptools` - za delo z zemljevidi
* `tmap` - za izrisovanje zemljevidov
* `extrafont` - za pravilen prikaz šumnikov (neobvezno)

## Binder

Zgornje [povezave](#analiza-podatkov-s-programom-r-201819)
omogočajo poganjanje projekta na spletu z orodjem [Binder](https://mybinder.org/).
V ta namen je bila pripravljena slika za [Docker](https://www.docker.com/),
ki vsebuje večino paketov, ki jih boste potrebovali za svoj projekt.

Če se izkaže, da katerega od paketov, ki ji potrebujete, ni v sliki,
lahko za sprotno namestitev poskrbite tako,
da jih v datoteki [`install.R`](install.R) namestite z ukazom `install.packages`.
Te datoteke (ali ukaza `install.packages`) **ne vključujte** v svoj program -
gre samo za navodilo za Binder, katere pakete naj namesti pred poganjanjem vašega projekta.

Tako nameščanje paketov se bo izvedlo pred vsakim poganjanjem v Binderju.
Če se izkaže, da je to preveč zamudno,
lahko pripravite [lastno sliko](https://github.com/jaanos/APPR-docker) z želenimi paketi.

Če želite v Binderju delati z git,
v datoteki `gitconfig` nastavite svoje ime in priimek ter e-poštni naslov
(odkomentirajte vzorec in zamenjajte s svojimi podatki) -
ob naslednjem zagonu bo mogoče delati commite.
Te podatke lahko nastavite tudi z `git config --global` v konzoli
(vendar bodo veljale le v trenutni seji).
