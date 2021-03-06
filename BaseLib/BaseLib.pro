include(../common.pri)
include(version.pri)

TEMPLATE = lib
TARGET = $$qtLibraryTarget(cutehmi_base)

QT -= gui
QT += qml

# Set version.
VER_MAJ = $$CUTEHMI_BASE_MAJOR
VER_MIN = $$CUTEHMI_BASE_MINOR
VER_PAT = $$CUTEHMI_BASE_MICRO

# Configure the library for building.
DEFINES += CUTEHMI_BASE_BUILD
DEFINES += CUTEHMI_BASE_DYNAMIC
#CONFIG += shared

# Translations.
TRANSLATIONS = locale/cutehmi_base_pl.ts

include(../UtilsLib/import.pri)

unix {
    target.path = /usr/lib
    INSTALLS += target
}

SOURCES += \
    src/base/ProjectModel.cpp \
    src/base/Error.cpp \
    src/base/PluginLoader.cpp \
    src/base/Project.cpp \
    src/base/CuteHMI.cpp \
    src/base/internal/ProjectXMLBackend.cpp \
    src/base/Exception.cpp \
    src/base/ErrorException.cpp \
    src/base/ErrorInfo.cpp \
    src/base/ProjectNode.cpp \
    src/base/Plugin.cpp \
    src/base/xml/ParseAttribute.cpp \
    src/base/xml/ParseElement.cpp \
    src/base/xml/ParseHelper.cpp \
    src/base/xml/internal/functions.cpp \
    src/base/internal/PluginNodeData.cpp \
    src/base/XMLBackendPlugin.cpp \
    src/base/internal/macros.cpp \
    src/base/DataBlock.cpp \
    src/base/PopupBridge.cpp \
    src/base/Prompt.cpp \
    src/base/functions.cpp \
    src/base/Notification.cpp \
    src/base/NotificationManager.cpp \
    src/base/NotificationListModel.cpp

HEADERS += \
    include/base/ProjectModel.hpp \
    include/base/Error.hpp \
    include/base/PluginLoader.hpp \
    include/base/ErrorInfo.hpp \
    include/base/Project.hpp \
    include/base/CuteHMI.hpp \
    include/base/internal/ProjectXMLBackend.hpp \
    include/base/Exception.hpp \
    include/base/ErrorException.hpp \
    include/base/internal/common.hpp \
    include/base/internal/platform.hpp \
    include/base/internal/macros.hpp \
    include/base/ProjectNode.hpp \
    include/base/Plugin.hpp \
    include/base/xml/ParseAttribute.hpp \
    include/base/xml/ParseElement.hpp \
    include/base/xml/ParseHelper.hpp \
    include/base/xml/internal/functions.hpp \
    include/base/IPlugin.hpp \
    include/base/IXMLBackendPlugin.hpp \
    include/base/internal/PluginNodeData.hpp \
    include/base/XMLBackendPlugin.hpp \
    include/base/macros.hpp \
    include/base/DataBlock.hpp \
    include/base/ExceptionMixin.hpp \
    include/base/PopupBridge.hpp \
    include/base/Prompt.hpp \
    include/base/functions.hpp \
    include/base/Notification.hpp \
    include/base/NotificationManager.hpp \
    include/base/NotificationListModel.hpp

DISTFILES += \
    import.pri \
    version.pri

RESOURCES +=
