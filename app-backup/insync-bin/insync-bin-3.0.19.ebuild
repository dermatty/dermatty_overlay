# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# https://d2t3ff60b2tol4.cloudfront.net/builds/insync-3.0.19.40421-fc30.x86_64.rpm

EAPI=5

inherit rpm

DESCRIPTION="Advanced cross-platform Google Drive client"
HOMEPAGE="https://www.insynchq.com/"
MAGIC="40421"
MAIN_INSTALLER_STRING="http://s.insynchq.com/builds/insync-${PV}.${MAGIC}-fc21"
SRC_URI="https://d2t3ff60b2tol4.cloudfront.net/builds/insync-${PV}.${MAGIC}-fc30.x86_64.rpm"
SLOT="0"
KEYWORDS="~amd64"
#DEPEND="<dev-libs/libevent-2.1"
RDEPEND="${DEPEND}"

src_unpack() {
	rpm_src_unpack ${A}
	mkdir -p "${S}" # Without this src_prepare fails
	cd "${S}"
}

#src_install() {
#	cp -pPR "${WORKDIR}"/{usr,etc} "${D}"/ || die "Installation failed"
#
#	echo "SEARCH_DIRS_MASK=\"/usr/lib*/insync\"" > "${T}/70${PN}" || die
#	insinto "/etc/revdep-rebuild" && doins "${T}/70${PN}" || die
#}

pkg_postinst() {
	elog "To automatically start insync add 'insync start' to your session"
	elog "startup scripts. GNOME users can also choose to enable"
	elog "the insync extension via gnome-tweak-tool."
}

