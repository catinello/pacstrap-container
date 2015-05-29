# $Id$
# Maintainer: Antonino Catinello <ac@antoo.org>

pkgname=pacstrap-container
pkgver=0.2
pkgrel=1
pkgdesc="Arch Linux Systemd Containers"
arch=('any')
url="https://github.com/catinello/pacstrap-container.git"
license=('MIT')
depends=('bash' 'systemd' 'arch-install-scripts')
source=("https://antonino.catinello.eu/src/$pkgname-$pkgver.tar.gz")
sha256sums=('e45f859dc78e5820412bac407e6d496158880a98797a663876e67570690ad7af')

build() {
  make -C "$pkgname-$pkgver"
}

package() {
  make -C "$pkgname-$pkgver" PREFIX=/usr DESTDIR="$pkgdir" install
}
