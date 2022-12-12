FROM ubuntu:16.04


RUN apt-get update \
 && apt-get install wget unzip zip xvfb -y

RUN apt-get -f install
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata


# Install chrome broswer
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN apt-get -y update
RUN apt-get -y install google-chrome-stable


# Install ChromeDriver.
RUN wget -N http://chromedriver.storage.googleapis.com/2.27/chromedriver_linux64.zip -P ~/
RUN unzip ~/chromedriver_linux64.zip -d ~/
RUN rm ~/chromedriver_linux64.zip
RUN mv -f ~/chromedriver /usr/local/share/
RUN chmod +x /usr/local/share/chromedriver
RUN ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver



EXPOSE 80
WORKDIR /opt/hello
CMD ["java", "-jar", "berlinTerminFinder-1.0-SNAPSHOT-all.jar"]