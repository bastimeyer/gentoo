# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

SLOT="0"
DESCRIPTION="Treat files on remote systems the same as local files"
XEMACS_PKG_CAT="standard"

RDEPEND="app-xemacs/xemacs-base
app-xemacs/dired
"
KEYWORDS="~alpha amd64 ppc ppc64 ~riscv sparc x86"

inherit xemacs-packages
