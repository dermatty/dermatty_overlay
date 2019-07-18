EAPI="7"

PYTHON_COMPAT=( python{3_6,3_7} )

inherit distutils-r1 eutils user

MY_PN="GINZICUT"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A NNTP test server for ginzibx"
HOMEPAGE="https://github.com/dermatty/${MY_PN}"
SRC_URI="https://github.com/dermatty/${MY_PN}/archive/${PV}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
#IUSE="+python_single_target_python3_7"

RDEPEND=">=dev-python/redis-py-3.2.1[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

python_install_all() {
	rm README* || die

	distutils-r1_python_install_all
}

