airtemps <- c(212, 30.3, 78, 32, "C")
celsius1<-(airtemps[1]- 32)*5/9
celsius2<-(airtemps[2]- 32)*5/9


fahr_to_celsius<-function(fahr){
    (fahr-32)*5/9
}

air_c<-fahr_to_celsius(airtemps)

#' Title
#'
#' @param fahr our Fahrenheit values
#'
#' @return converted celsius values
#' @export
#'
#' @examples
cels_to_farh<-function(celsius){
  celsius*9/5+32
}

### functions automatically return the last evaluated 
### expression. 

air_f<-cels_to_farh(air_c)

### Documenting Functions 

### can insert roxygen skeleton (from the code menu)


convert_temps <- function(fahr){
  cels<-(fahr-32)*5/9
  kelvin<-cels+273.15
  list(fahr = fahr, celsius = cels, kelvin = kelvin)
}

temps<-data.frame(convert_temps(seq(-100, 100, 10)))
library(ggplot2)


custom_theme<-function(base_size = 9){
  ggplot2::theme(text = element_text(size = base_size))
  
}

ggplot(temps, aes(celsius, kelvin, color=kelvin))+
  geom_point()+
  custom_theme(15)
  
