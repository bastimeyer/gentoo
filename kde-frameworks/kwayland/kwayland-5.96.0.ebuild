# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

ECM_TEST="true"
PVCUT=$(ver_cut 1-2)
QTMIN=5.15.4
inherit ecm kde.org

DESCRIPTION="Qt-style client and server library wrapper for Wayland libraries"
HOMEPAGE="https://invent.kde.org/frameworks/kwayland"

LICENSE="LGPL-2.1"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~ppc64 ~riscv ~x86"
IUSE=""

# All failing, I guess we need a virtual wayland server
RESTRICT="test"

# slot op: includes qpa/qplatformnativeinterface.h
RDEPEND="
	>=dev-libs/wayland-1.15.0
	>=dev-qt/qtconcurrent-${QTMIN}:5
	>=dev-qt/qtgui-${QTMIN}:5=[egl]
	>=dev-qt/qtwayland-${QTMIN}:5
	media-libs/libglvnd
"
DEPEND="${RDEPEND}
	>=dev-libs/plasma-wayland-protocols-1.7.0
	>=dev-libs/wayland-protocols-1.15
	sys-kernel/linux-headers
"
BDEPEND="
	>=dev-qt/qtwaylandscanner-${QTMIN}:5
	>=dev-util/wayland-scanner-1.19.0
"
