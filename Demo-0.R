if(!require("gtrendsR"))
{
  install.packages("gtrendsR")
  library(gtrendsR)
}
#Purpose of <gtrendsR> package: Description An interface for retrieving and displaying 
#the information returned online by Google Trends is provided. Trends (number of hits) 
#over the time as well as geographic representation of the results can be displayed.


res=c("Jobs","War","Twitter","UK") #Mentioning the keywords which we want to know 
                                   #about the interest over time.

geo="CA"          #We can just leave as such if we want to about the trend overall, 
                  #else mention ISO 3166-1 alpha-2 code.

channel="web"    #we can check out the trend specifically from web,images, 
                 #youtube, froogle, news.

time=("2022-01-01 2022-10-30")  #range of date to track the trend.
c_trend<-gtrends(res,geo,channel,time=time) 
plot(c_trend)+theme_minimal()+labs(title="Jobs-War-Twitter - YTD", subtitle = "Google Trends Report",caption = "Courtesy: gtrendsR package")

