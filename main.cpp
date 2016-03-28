#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "echocontr.h"
#include "echoservice.h"
#include  "echodata.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    EchoData *model = new EchoData();
    EchoService *service = new EchoService(model);
    EchoContr controller(model,engine.rootContext());
    engine.load(QUrl(controller.getMainQml()));

    return app.exec();
}
