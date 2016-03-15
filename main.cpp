#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "eholot.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Eholot eholot();
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}
