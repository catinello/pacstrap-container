# $Id$
# Maintainer: Antonino Catinello <ac@antoo.org>

pkgname=pacstrap-container
pkgver=0.1
pkgrel=1
pkgdesc="Arch Linux Systemd Containers"
arch=('any')
url="https://github.com/catinello/pacstrap-container.git"
license=('MIT')
depends=('bash' 'systemd' 'arch-install-scripts')
source=("https://antonino.catinello.eu/src/$pkgname-$pkgver.tar.gz")
sha256sums=('3f96c3a0c7c3b395c80f055ad1dca991cc11b6edd7f9514128f92bba41267b77')

build() {
  make -C "$pkgname-$pkgver"
}

package() {
  make -C "$pkgname-$pkgver" PREFIX=/usr DESTDIR="$pkgdir" install
}
