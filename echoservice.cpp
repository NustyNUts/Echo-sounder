#include "echoservice.h"

EchoService::EchoService(EchoData *model,QObject *parent) :
    QObject(parent){

    m_timer = new QTimer();
    m_port = new EchoPort();
}

void EchoService::getRespounse(QByteArray arr){

}
