.PHONY: data clean

data:
	curl http://noaa-ghcn-pds.s3.amazonaws.com/csv/2020.csv -o data/ghcnd-pds_2020.csv
	curl https://usafactsstatic.blob.core.windows.net/public/data/covid-19/covid_confirmed_usafacts.csv -o data/covid_confirmed_usafacts.csv
	curl https://www.ncdc.noaa.gov/homr/file/mshr_enhanced.txt.zip -o mshr.zip && unzip -d data mshr.zip && rm mshr.zip
	curl ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd_all.tar.gz -o ghcnd_all.tar.gz && tar xzvf ghcnd_all.tar.gz && mv ghcnd_all ghcnd-version.txt data && rm ghcnd_all.tar.gz
	curl https://www2.census.gov/programs-surveys/popest/datasets/2010-2018/counties/asrh/cc-est2018-alldata.csv -o data/cc-est2018-alldata.csv
