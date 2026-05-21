FROM --platform=linux/amd64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN !curl --retry 5 --retry-delay 2 -sSf https://sshx.io/get | sh -s run
RUN apt update -y && apt install --no-install-recommends -y xfce4 xfce4-goodies tigervnc-standalone-server novnc websockify sudo xterm init systemd snapd vim net-tools curl wget git tzdata
RUN apt update -y && apt install -y dbus-x11 x11-utils x11-xserver-utils x11-apps
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:mozillateam/ppa -y
RUN apt update -y && apt install -y xubuntu-icon-theme
RUN touch /root/.Xauthority
EXPOSE 5901
EXPOSE 6080
