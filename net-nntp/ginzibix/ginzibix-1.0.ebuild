EAPI="7"

PYTHON_COMPAT=( python3_6 )

inherit distutils-r1 eutils user

MY_PN="GINZIBIX"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Binary newsreader for the Gnome Desktop"
HOMEPAGE="https://github.com/dermatty/${MY_PN}"
SRC_URI="https://github.com/dermatty/GINZIBIX/archive/${PV}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=dev-python/pyzmq-17.1.0[${PYTHON_USEDEP}]
	>=dev-python/pygobject-3.32.1[${PYTHON_USEDEP}]	
	>=dev-python/setproctitle-1.1.10[${PYTHON_USEDEP}]
	>=dev-python/peewee-3.9.6[${PYTHON_USEDEP}]
	>=dev-python/pandas-0.24.2[${PYTHON_USEDEP}]
	>=dev-python/rarfile-3.0[${PYTHON_USEDEP}]
	>=dev-python/pexpect-4.6.0[${PYTHON_USEDEP}]
	>=dev-python/inotify_simple-1.1.8[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	>=dev-python/matplotlib-3.1.1[${PYTHON_USEDEP}]
	>=net-nntp/ginzyenc-1.2.3[${PYTHON_USEDEP}]
	app-arch/unrar[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

python_prepare_all() {
	distutils-r1_python_prepare_all
}
python_install_all() {
	rm README* || die

	distutils-r1_python_install_all
}
