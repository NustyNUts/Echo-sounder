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
    m_context->setContextProperty("depthRange",1);

    QList<int> depthList;
    QList<QString> colorList;
    //test depth array
    for(int i=0;i<20;i++)
        depthList<<(i*5);
    //create test color array
    QString amplColor[20] = {"#ff0000","#fe0000","#fd0000","#ef0000","#900000",
                             "#00ff00","#00f000","#000f00","#0f0f00","#0fff00",
                             "#0000ff","#0f0f0f","#0ff00f","#ee00ee","#ff4512",
                             "#ff0000","#685022","#60600B","#3E47DA","#DA3EB1"};
    for(int i=0;i<20;i++)
        colorList<<amplColor[i];
    m_context->setContextProperty("anArray",QVariant::fromValue(depthList));
    m_context->setContextProperty("colorArray",QVariant::fromValue(colorList));
}

