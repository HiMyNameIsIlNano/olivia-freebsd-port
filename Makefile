# $FreeBSD$

PORTNAME=	olivia
DISTVERSION=	1.0-beta-269-g98eadff
CATEGORIES=	audio
USE_GITHUB=	yes
GH_ACCOUNT=	keshavbhatt

MAINTAINER=	youremail@example.com
COMMENT=	Elegant music player for LINUX

USES=		qt:5 qmake python:3.7
USE_QT=		buildtools_build core dbus gui network sql webkit widgets xml 
USE_GL=		gl

LIB_DEPENDS=    libtag.so:audio/taglib
				
PORT_DEPENDS=	mpv:multimedia/mpv \
		socat:net/socat \
		ffmpeg:multimedia/ffmpeg

BUILD_DEPENDS=	${PORT_DEPENDS}
RUN_DEPENDS=	${PORT_DEPENDS} \
		coreutils>=0:sysutils/coreutils
MYSQL_RUN_DEPENDS=	${QT_PLUGINDIR}/sqldrivers/libqsqlmysql.so:databases/qt5-sqldrivers-mysql
							
.include <bsd.port.mk>
