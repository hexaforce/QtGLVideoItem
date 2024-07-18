TEMPLATE = lib

TARGET = gstqmlgl

QT += qml quick gui

QT_CONFIG -= no-pkg-config
CONFIG += link_pkgconfig debug
PKGCONFIG = \
    gstreamer-1.0 \
    gstreamer-video-1.0 \
    gstreamer-gl-1.0

CONFIG += plugin

android:DEFINES += HAVE_QT_ANDROID
win32:DEFINES += HAVE_QT_WIN32
macx:DEFINES += HAVE_QT_MAC

SOURCES += \
    gstplugin.cc \
    gstqtelement.cc \
    gstqtglutility.cc \
    gstqsgtexture.cc \
    gstqtoverlay.cc \
    gstqtsink.cc \
    gstqtsrc.cc \
    qtglrenderer.cc \
    qtwindow.cc \
    qtitem.cc

HEADERS += \
	gstqtelements.h \
    gstqsgtexture.h \
    gstqtgl.h \
    gstqtglutility.h \
    gstqtoverlay.h \
    gstqtsink.h \
    gstqtsrc.h \
    qtglrenderer.h \
    qtwindow.h \
    qtitem.h
