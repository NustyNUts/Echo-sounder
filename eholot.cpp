#include "eholot.h"

Eholot::Eholot(QQmlContext *context,QObject *parent) :
    QObject(parent),m_time(NULL),m_latitude("00°00'000"),m_longitude("000°00'000"),
    m_soundSpeed(1500)
{
    m_time = new QTime();
    m_context = context;
    *m_time = QTime::currentTime();
    m_context->setContextProperty("eholot",this);
    m_context->setContextProperty("currentTime",m_time->toString("hh:mm:ss"));
    m_context->setContextProperty("latitude",m_latitude);
    m_context->setContextProperty("longitude", m_longitude);
    m_context->setContextProperty("soundSpeed",m_soundSpeed);
}
