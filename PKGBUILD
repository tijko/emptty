# Contributer: tijko <konick781@gmail.com>
# Maintainer: 
pkgname=emptty
pkgver=0.10.0
pkgrel=1
pkgdesc="Dead simple CLI Display Manager on TTY"
arch=('x86_64')
url="https://github.com/tvrzna/emptty"
license=('MIT')
depends=('pam' 'libx11' )
makedepends=('go' 'pam' 'libx11')
optdepends=('xorg' 'xorg-server' 'xauth' 'xorg-xauth' 'wayland' 'util-linux')
provides=('emptty')
source=("https://codeload.github.com/tijko/emptty/zip/refs/heads/pacman-bin")
md5sums=('')
validpgpkeys=('')

build() {
	cd '$pkgname-$pkgver'
	make
}

package() {
	cd '$pkgname-$pkgver'
	make install-all
}