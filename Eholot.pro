TEMPLATE = app

QT += qml quick

SOURCES += main.cpp \
    eholotport.cpp \
    echocontr.cpp \
    echoservice.cpp \
    echodata.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    eholotport.h \
    echocontr.h \
    echoservice.h \
    echodata.h

OTHER_FILES +=
