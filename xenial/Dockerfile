FROM ubuntu:xenial
MAINTAINER Jemstep Dev <dev@jemstep.com>

ENV TERM xterm-color

# Install Oracle Java 8
ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main' > /etc/apt/sources.list.d/webupd8team-ubuntu-java.list && \
    echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main' > /etc/apt/sources.list.d/webupd8team-ubuntu-java-src.list && \
    echo 'deb http://dl.bintray.com/sbt/debian /' > /etc/apt/sources.list.d/sbt-bintray.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 99E82A75642AC823 && \
    apt-get update && \
    apt-get install -y --force-yes --no-install-recommends software-properties-common sudo openssh-client gnupg2 gnupg-curl hopenpgp-tools file bash-completion psmisc wget curl ca-certificates lsof vim nodejs phantomjs && \
    apt-add-repository -y ppa:git-core/ppa && \
    apt-get update && \
    echo oracle-java${JAVA_VER}-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
    apt-get install -y --force-yes --no-install-recommends oracle-java${JAVA_VER}-installer oracle-java${JAVA_VER}-set-default oracle-java${JAVA_VER}-unlimited-jce-policy sbt git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists && \
    rm -rf /var/cache/oracle-jdk${JAVA_VER}-installer && \
    rm -rf ${JAVA_HOME}/ct.sym && \
    rm -rf ${JAVA_HOME}/src.zip && \
    rm -rf ${JAVA_HOME}/javafx-src.zip && \
    rm -rf ${JAVA_HOME}/lib/visualvm && \
    rm -rf ${JAVA_HOME}/lib/missioncontrol
