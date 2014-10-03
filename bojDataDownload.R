# bojDataDownload.R
# This program downloads data from the BOJ website, if you have a series id.

getBOJdata = function(seriesCode,filename="bojData"){
##########
# Set up
library(XML)
library(tis)


today = format(Sys.time(),"%Y-%m-%d")

##########
# data download


urlToRead = paste0("http://www.stat-search.boj.or.jp/ssi/cgi-bin/famecgi2?cgi=$nme_r030_en&chkfrq=MM&rdoheader=NONE&rdodelimitar=COMMA&hdnYyyyFrom=1920&hdnYyyyTo=2015&sw_freq=NONE&sw_yearend=NONE&sw_observed=NONE&hdncode=",seriesCode)

readHTML = readChar(urlToRead,nchars=2000)

pattern = "\\>\\/.+\\.csv"
m = gregexpr(pattern,readHTML, perl=TRUE)
urlpiece = regmatches(readHTML,m)
urlpiece2 = substr(urlpiece,3,nchar(urlpiece))

url = paste("http://www.stat-search.boj.or.jp/ssi/html/",urlpiece2,sep="")

filename = gsub("[^a-zA-Z0-9]", "", filename ) # clean filename
download.file(url,paste(filename,"csv",sep="."))

}



