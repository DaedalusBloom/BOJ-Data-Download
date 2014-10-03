BOJ-Data-Download
=================

A simple function in R to download data from the BOJ website because the website is not user or automation friendly. 
You need the series id and can give it a file name for the download. 
Currently just saves the data to the working directory as a csv, but you can modify that as you want.

Example:

getBOJdata(FA%27FOF_FFAS121A100,"CurrencyandDepositsAssets")

Will download the BOJ Funds Data for bank currency and deposits to your working directory as
"CurrencyandDepositsAssets.csv"
