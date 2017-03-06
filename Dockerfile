FROM java:openjdk-8-jre

ADD https://github.com/serge-rider/dbeaver/releases/download/4.0.2/dbeaver-ce_4.0.2_amd64.deb .
RUN apt-get update && apt-get install -y libswt-gtk-3-jni libswt-gtk-3-java    
RUN dpkg -i dbeaver-ce_4.0.2_amd64.deb
RUN echo "Starting dbeaver!!!!!" >> temp.log
CMD dbeaver & tail -f temp.log
