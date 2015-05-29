# $Id$
# Maintainer: Antonino Catinello <ac@antoo.org>

pkgname=pacstrap-container
pkgver=0.3
pkgrel=1
pkgdesc="Arch Linux Systemd Containers"
arch=('any')
url="https://github.com/catinello/pacstrap-container.git"
license=('MIT')
depends=('bash' 'systemd' 'arch-install-scripts')
source=("https://antonino.catinello.eu/src/$pkgname-$pkgver.tar.gz")
sha256sums=('ed1cfd90f54fdc331e32b147b487de06c16ca797c2913e967b49151ecce3ce00')

build() {
  make -C "$pkgname-$pkgver"
}

package() {
  make -C "$pkgname-$pkgver" PREFIX=/usr DESTDIR="$pkgdir" install
}
