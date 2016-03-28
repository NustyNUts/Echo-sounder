#include "echocontr.h"

EchoContr::EchoContr(EchoData *echoData,QQmlContext *context,QObject *parent) :
    QObject(parent)
{
    m_context = context;
    m_context->setContextProperty("eholot",this);
    m_context->setContextProperty("currentTime",echoData->getTime());
    m_context->setContextProperty("latitude",echoData->getLat());
    m_context->setContextProperty("longitude", echoData->getLon());
    m_context->setContextProperty("soundSpeed",echoData->getSoundSpeed());
    m_context->setContextProperty("currentData",echoData->getDate());
    m_context->setContextProperty("penentration",echoData->getPenentration());

    QList<int> depthList;
    for(int i=0;i<20;i++)
        depthList<<i;
    int ampl[20] = {1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0};
    echoData->setParams(depthList);
    m_context->setContextProperty("anArray",QVariant::fromValue(depthList));
}

