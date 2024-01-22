FROM archlinux:latest
RUN pacman -Syu --noconfirm && pacman -S base-devel go pam libx11 --noconfirm
RUN useradd -m -U sysuser
#RUN make && make install-all
USER sysuser
WORKDIR app/
COPY . ./
RUN makepkg -S --skipinteg
ENTRYPOINT "/bin/sh"