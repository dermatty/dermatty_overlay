EAPI="7"

PYTHON_COMPAT=( python{3_6,3_7} )

inherit distutils-r1 eutils user


DESCRIPTION="A simple Python wrapper around inotify"
HOMEPAGE="https://github.com/chrisjbillington/${PN}"
SRC_URI="https://github.com/chrisjbillington/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"


LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

python_prepare_all() {
	distutils-r1_python_prepare_all
}

python_compile() {
	distutils-r1_python_compile
}
