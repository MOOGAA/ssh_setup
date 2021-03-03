#!/bin/bash

###########################################################################################################################################################################################################################################################################################################################################################################################



###   This Script Only Apply 2 " Linux System Or V_P_S_ "

###
echo ; \
echo ; \
echo ; \
echo '   Exicution In Action ' ; \
echo ; \
echo ; \
echo

echo '   Setup Script Is Running ... ' ; \
echo ; \
echo ; \
echo



###
echo '   Checking 4 Update , Upgrade & Fix Any lib Problem' ; \
echo ; \
echo ; \
echo

apt-get -qq update ; \
apt-get -qq -y autoremove ; \
apt-get -qq update ; \
apt-get -qq -y upgrade ;\
apt-get -qq update ; \
apt-get -qq install -y --fix-missing --fix-broken ; \
apt-get -qq update
###


###
echo ; \
echo ; \
echo ; \
echo "   Installing IMP* lib's " ; \
echo ; \
echo ; \
echo

apt-get -qq install -y \
      curl \
      htop \
      iputils-ping \
      jq \
      nano \
      sudo \
      systemctl \
      wget ; \
apt-get -qq update
###



###
echo ; \
echo ; \
echo ; \
echo "   Installing Dependency lib's " ; \
echo ; \
echo ; \
echo

apt-get -qq install -y \
      build-essential \
      docker.io \
      make \
      npm \
      python3.9 \
      python3-pip ; \
apt-get -qq update
###



###
echo ; \
echo ; \
echo ; \
echo "   Installing Tool lib's " ; \
echo ; \
echo ; \
echo

apt-get -qq install -y \
      apt-transport-https \
      ca-certificates \
      ffmpeg \
      git \
      gnupg \
      neofetch \
      nginx \
      nmap \
      openssh-server \
      screen \
      tar \
      tmux \
      unzip \
      unrar \
      ubuntu-desktop \
      wireguard \
      xrdp ; \
apt-get -qq update
###


###
echo ; \
echo ; \
echo ; \
echo "   Installin Pythog Tools " ; \
echo ; \
echo ; \
echo

pip3 install --upgrade pip ; \
pip3 install \
      Authlib \
      flask \
      google-api-python-client \
      google-auth-httplib2 \
      google-auth-oauthlib \
      httpserver \
      python-dotenv \
      pymongo \
      pyrogram \
      requests ; \
apt-get -qq update
###



###
echo ; \
echo ; \
echo ; \
echo "   Installing NPM Tools " ; \
echo ; \
echo ; \
echo

npm i -g @cloudflare/wrangler ; \
    node /usr/local/lib/node_modules/@cloudflare/wrangler/install-wrangler.js ; \
npm i -g firebase-tools ; \
npm install -g heroku ; \
apt-get -qq update
###


###
echo ; \
echo ; \
echo ; \
echo '   Installing Gcloud SDK' ; \
echo ; \
echo ; \
echo

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list ; \
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - ; \
apt-get -qq update

apt-get -qq install -y \
      google-cloud-sdk ; \
apt-get -qq update
###

### in docker 
# RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] \
#   http://packages.cloud.google.com/apt cloud-sdk main" | \
#   tee -a /etc/apt/sources.list.d/google-cloud-sdk.list ; \
#   curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | \
#   apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
#   apt-get update -y ; \
#   apt-get install google-cloud-sdk -y

###
apt-get -qq install -y \
    google-cloud-sdk \
    google-cloud-sdk-app-engine-go \
    google-cloud-sdk-app-engine-java \
    google-cloud-sdk-app-engine-python \
    google-cloud-sdk-app-engine-python-extras \
    google-cloud-sdk-bigtable-emulator \
    google-cloud-sdk-cloud-build-local \
    google-cloud-sdk-datalab \
    google-cloud-sdk-datastore-emulator \
    google-cloud-sdk-firestore-emulator \
    google-cloud-sdk-pubsub-emulator ; \
apt-get -qq update
###



###
echo ; \
echo ; \
echo ; \
echo '   Installing Chrome ' ; \
echo ; \
echo ; \
echo

cd $HOME

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb ; \
      dpkg --install g*.deb ; \
      apt-get -qq install -y --fix-missing --fix-broken ; \
      rm g*.deb ; \
apt-get -qq update
###
#echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
#curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -



###
echo ; \
echo ; \
echo ; \
echo '   Installing Rclone ' ; \
echo ; \
echo ; \
echo

curl https://rclone.org/install.sh | sudo bash ; \
apt-get -qq update
echo ; \
echo ; \
echo
###

echo ; \
echo ; \
echo ; \
apt-get -qq update ; \
apt-get -qq -y upgrade
echo ; \
echo ; \
echo
###

###########################################################################################################################################################################################################################################################################################################################################################################################


