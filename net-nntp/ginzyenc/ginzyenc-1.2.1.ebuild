EAPI="7"

PYTHON_COMPAT=( python3_7 )

inherit distutils-r1 eutils user

MY_PN="GINZYENC"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="python3 port of sabyenc"
HOMEPAGE="https://github.com/dermatty/${MY_PN}"
SRC_URI="https://github.com/dermatty/${MY_PN}/archive/${PV}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+python_single_target_python3_7"

S=${WORKDIR}/${MY_P}

python_prepare_all() {
	distutils-r1_python_prepare_all
}

python_compile() {
	distutils-r1_python_compile
}

