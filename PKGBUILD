# $Id$
# Maintainer: Antonino Catinello <ac@antoo.org>

pkgname=pacstrap-container
pkgver=0.4
pkgrel=1
pkgdesc="Arch Linux Systemd Containers"
arch=('any')
url="https://github.com/catinello/pacstrap-container.git"
license=('MIT')
depends=('bash' 'systemd' 'arch-install-scripts')
source=("https://antonino.catinello.eu/src/$pkgname-$pkgver.tar.gz")
sha256sums=('ead2a70da9910b0dd660863768a555f8c5e816204b7e2505bfc226c7fc563334')

build() {
  make -C "$pkgname-$pkgver"
}

package() {
  make -C "$pkgname-$pkgver" PREFIX=/usr DESTDIR="$pkgdir" install
}
