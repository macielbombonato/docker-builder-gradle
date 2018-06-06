FROM macielbombonato/docker-builder:latest

LABEL maintainer "Maciel Escudero Bombonato <maciel.bombonato@gmail.com>"

WORKDIR /

USER root

# Install gradle
RUN git config --global http.sslverify "false" \
 && wget --no-check-certificate https://services.gradle.org/distributions/gradle-4.7-bin.zip?_ga=2.231650783.1772064128.1527540661-637361431.1521740106 -O gradle-4.7-bin.zip \
 && unzip -d /opt gradle-4.7-bin.zip \
 && rm /gradle-4.7-bin.zip

ENV PATH $PATH:/opt/gradle-4.7/bin

# Cleaning
RUN apt-get clean --yes

# Create directory to host the application
WORKDIR /opt/app

CMD ["ls"]
