# Maintainer: ruxir-ig <ruchirkalokhe@gmail.com>
# Contributor: unxsh (original author)

pkgbase=nitch
pkgname=('nitch' 'nitch-nonerd')
pkgver=0.2.3
pkgrel=1
pkgdesc="Incredibly fast system fetch written in Nim"
arch=('x86_64')
url="https://github.com/ruxir-ig/nitch"
license=('MIT')
makedepends=('nim' 'nimble')
source=("$pkgbase-$pkgver.tar.gz::https://github.com/ruxir-ig/nitch/archive/refs/tags/v$pkgver.tar.gz")
sha256sums=('fbacfc3926a857d1f688f0e65fd0b68bfaea6f7c5d59a7606d3fbbb87bf1428c')

build() {
    cd "$pkgbase-$pkgver"
    
    # Build Nerd Font version
    nimble build -d:release -y
    
    # Build Non-Nerd Font version
    nim c -d:release -o:nitchNoNerd src/nitchNoNerd.nim
}

package_nitch() {
    pkgdesc="Incredibly fast system fetch written in Nim (Nerd Font icons)"
    optdepends=('nerd-fonts: for icon support')
    
    cd "$pkgbase-$pkgver"
    install -Dm755 nitch "$pkgdir/usr/bin/nitch"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

package_nitch-nonerd() {
    pkgdesc="Incredibly fast system fetch written in Nim (no Nerd Font icons)"
    conflicts=('nitch')
    provides=('nitch')
    
    cd "$pkgbase-$pkgver"
    install -Dm755 nitchNoNerd "$pkgdir/usr/bin/nitch"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
