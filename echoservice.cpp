#include "echoservice.h"

EchoService::EchoService(EchoData *model,QObject *parent) :
    QObject(parent){

    m_timer = new QTimer();
    m_port = new EchoPort();
}

QByteArray EchoService::getRespounse(){

}

void EchoService::createPac(QMap<QString, QVariant> map){

}
