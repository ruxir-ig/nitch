# Maintainer: ruxir-ig <ruchirkalokhe@gmail.com.com>
# Contributor: unxsh (original author)

pkgbase=nitch
pkgname=('nitch' 'nitch-nonerd')
pkgver=0.2.4
pkgrel=1
pkgdesc="Incredibly fast system fetch written in Nim"
arch=('x86_64')
url="https://github.com/ruxir-ig/nitch"
license=('MIT')
makedepends=('nim' 'nimble')
source=("$pkgbase-$pkgver.tar.gz::https://github.com/ruxir-ig/nitch/archive/refs/tags/v$pkgver.tar.gz")
sha256sums=('8e386ba7cbf53cc1a5017d209e5b369cbd16df3f47f7e3cf1af9bb28d12aec44')  # Release tarball sha256

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
