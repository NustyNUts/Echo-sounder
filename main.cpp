#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "echocontr.h"
#include "echoservice.h"
#include  "echomodel.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    EchoModel *model = new EchoModel();
    EchoService *service = new EchoService(model);
    EchoContr controller(model,engine.rootContext());

    engine.load(QUrl(controller.getMainQml()));

    return app.exec();
}
