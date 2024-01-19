FROM archlinux:latest
RUN pacman -Syu --noconfirm && pacman -S base-devel go pam libx11 --noconfirm
COPY . ./
RUN useradd -m -U sysuser
#RUN make && make install-all
USER sysuser
WORKDIR app/
RUN makepkg -S --skipinteg
ENTRYPOINT "/bin/sh"