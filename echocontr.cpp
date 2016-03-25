#include "echocontr.h"

EchoContr::EchoContr(EchoModel *echoModel,QQmlContext *context,QObject *parent) :
    QObject(parent)
{
    echoModel->setTime("111111");
    echoModel->setDate("11111111");
    m_context = context;
    m_context->setContextProperty("eholot",this);
    m_context->setContextProperty("currentTime",echoModel->getTime());
    m_context->setContextProperty("latitude",echoModel->getLat());
    m_context->setContextProperty("longitude", echoModel->getLon());
    m_context->setContextProperty("soundSpeed",echoModel->getSoundSpeed());
    m_context->setContextProperty("currentData",echoModel->getDate());
    m_context->setContextProperty("penentration",echoModel->getPenentration());
}

