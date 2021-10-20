FROM python:3.6-slim
ADD . /app
WORKDIR /app

EXPOSE 6800
RUN apt-get update && \ 
  apt-get install -y git && \
  pip3 install -U git+https://github.com/scrapy/scrapyd.git && \
  apt-get remove -y git
CMD scrapyd
