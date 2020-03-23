FROM ubuntu:xenial
MAINTAINER Jemstep Dev <dev@jemstep.com>

ENV TERM xterm-color
ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main' > /etc/apt/sources.list.d/webupd8team-ubuntu-java.list && \
    echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main' > /etc/apt/sources.list.d/webupd8team-ubuntu-java-src.list && \
    echo 'deb http://dl.bintray.com/sbt/debian /' > /etc/apt/sources.list.d/sbt-bintray.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 99E82A75642AC823 && \
    apt-get update && \
    apt-get install -y --allow-change-held-packages --no-install-recommends software-properties-common sudo openssh-client apt-transport-https \
     gnupg2 gnupg-curl hopenpgp-tools dirmngr file bash-completion iputils-ping bind9-host traceroute netcat tcpdump \
      strace psmisc wget curl bzip2 ca-certificates lsof vim bc emacs ruby2.3 ruby-bundler \
      dbus dbus-x11 ruby-dev build-essential locales less && \
    curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add - && \
    echo 'deb https://deb.nodesource.com/node_8.x xenial main' > /etc/apt/sources.list.d/nodesource.list && \
    echo 'deb-src https://deb.nodesource.com/node_8.x xenial main' >> /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && \
    apt-get install nodejs -y --allow-change-held-packages && \
    npm install npm -g && \
    npm install mustache -g && \
    npm install kongfig -g && \
    wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
    echo 86dd9a4bf4aee45f1a84c9f61cf1947c1d6dce9b9e8d2a907105da7852460d2f  phantomjs-2.1.1-linux-x86_64.tar.bz2 > phantomjs-2.1.1-linux-x86_64.tar.bz2.sha256 && \
    sha256sum --check phantomjs-2.1.1-linux-x86_64.tar.bz2.sha256 && \
    mkdir /opt/phantomjs && \
    tar -xf phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /opt/phantomjs/ && \
    sudo ln -s /opt/phantomjs/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs && \
    rm phantomjs-2.1.1-linux-x86_64.tar.bz2 phantomjs-2.1.1-linux-x86_64.tar.bz2.sha256 && \
    wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz && \
    echo 03be3d3b16b57e0f3e7e8ba7c1e4bf090620c147e6804f6c6f3203864f5e3784 geckodriver-v0.24.0-linux64.tar.gz > gecko.sha256 && \
    sha256sum --check gecko.sha256 && \
    mkdir /opt/geckodriver && \
    tar -xf geckodriver-v0.24.0-linux64.tar.gz -C /opt/geckodriver/ && \
    sudo ln -s /opt/geckodriver/geckodriver /usr/bin/geckodriver && \
    rm geckodriver-v0.24.0-linux64.tar.gz gecko.sha256 && \
    wget https://ftp.mozilla.org/pub/firefox/releases/74.0/linux-x86_64/en-US/firefox-74.0.tar.bz2 && \
    echo 09d430f7141d0bb753f9f3faed91648196af6a86f30ae4d62f27f6f9e27f2f5f firefox-74.0.tar.bz2 > firefox-74.0.tar.bz2.sha256 && \
    sha256sum --check firefox-74.0.tar.bz2.sha256 && \
    mkdir /opt/firefox && \
    tar -xjf firefox-74.0.tar.bz2 -C /opt/firefox/ && \
    sudo ln -s /opt/firefox/firefox/firefox /usr/bin/firefox && \
    rm firefox-74.0.tar.bz2 && \
    wget https://github.com/sass/dart-sass/releases/download/1.16.0/dart-sass-1.16.0-linux-x64.tar.gz && \
    echo 4a2c37fad16ac4cbdd6d9e460118bd2e5c3288f0119c032493903b4b5ad987da dart-sass-1.16.0-linux-x64.tar.gz > dart-sass-1.16.0-linux-x64.tar.gz.sha256 && \
    sha256sum --check dart-sass-1.16.0-linux-x64.tar.gz.sha256 && \
    mkdir /opt/dart-sass && \
    tar -xf dart-sass-1.16.0-linux-x64.tar.gz --strip-components=1 -C /opt/dart-sass/ && \
    sudo ln -s /opt/dart-sass/sass /usr/bin/dart-sass && \
    sudo ln -s /opt/dart-sass/sass /usr/bin/sass && \
    rm dart-sass-1.16.0-linux-x64.tar.gz dart-sass-1.16.0-linux-x64.tar.gz.sha256 && \
    apt-add-repository -y ppa:git-core/ppa && \
    apt-get update && \
    apt-get install -y --allow-change-held-packages --no-install-recommends openjdk-${JAVA_VER}-jdk sbt git && \
    apt-mark hold firefox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
