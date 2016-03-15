#include "eholot.h"

Eholot::Eholot(QQmlContext *context,QObject *parent) :
    QObject(parent)
{
    m_context = context;
    m_context->setContextProperty("eholot",this);
}
