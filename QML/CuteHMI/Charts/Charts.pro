include(../../../common.pri)

TEMPLATE = lib
TARGET = $$qtLibraryTarget(cutehmi_charts_qml)
DESTDIR = $$PWD/plugins	# QtDesigner can find library only in a location relative to qmldir file.

QT += qml quick

CONFIG += plugin

# Translations.
TRANSLATIONS = locale/cutehmi_charts_qml_pl.ts

include(../../../UtilsLib/import.pri)
include(../../../BaseLib/import.pri)
include(../../../ChartsLib/import.pri)

HEADERS += \
    src/CuteHMIChartsQMLPlugin.hpp \
    src/charts/ScatterPlot.hpp \
    src/charts/LinearAxis.hpp \
    src/charts/ValueAxis.hpp \
    src/charts/DateTimeAxis.hpp \
    src/charts/PlotArea.hpp \
    src/charts/CartesianAxis.hpp \
    src/charts/TickedAxis.hpp

SOURCES += \
    src/CuteHMIChartsQMLPlugin.cpp \
    src/charts/ScatterPlot.cpp \
    src/charts/ValueAxis.cpp \
    src/charts/DateTimeAxis.cpp \
    src/charts/PlotArea.cpp \
    src/charts/CartesianAxis.cpp \
    src/charts/LinearAxis.cpp \
    src/charts/TickedAxis.cpp

DISTFILES += \ 
    qmldir \
    Chart.qml

RESOURCES +=
