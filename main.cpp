#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "eholot.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext *context = engine.rootContext();
    Eholot eholot(context);
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}
