# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

CABAL_FEATURES="bin"
inherit haskell-cabal git-r3

MY_PN="Sharingan"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Repositories synchronization util"
HOMEPAGE="http://hackage.haskell.org/package/Sharingan"
SRC_URI=""

EGIT_REPO_URI="git://github.com/Heather/Sharingan.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/async:=
	dev-haskell/base-unicode-symbols:=
	dev-haskell/conduit:=
	dev-haskell/conduit-extra:=
	dev-haskell/despair:=
	>=dev-haskell/eternal-0.1.1:=
	dev-haskell/executable-path:=
	dev-haskell/http-conduit:=
	dev-haskell/http-types:=
	dev-haskell/ifelse:=
	dev-haskell/network:=
	dev-haskell/optparse-applicative:=
	dev-haskell/resourcet:=
	dev-haskell/split:=
	dev-haskell/transformers:=
	dev-haskell/utf8-string:=
	dev-haskell/yaml:=
	dev-haskell/zip-archive:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	cabal-mksetup
	haskell-cabal_src_configure
}
