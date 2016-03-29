#ifndef ECHOSERVICE_H
#define ECHOSERVICE_H

#include <QObject>
#include <QTimer>
#include "echodata.h"
#include "eholotport.h"
/*
 * all buisness logic application
 * */
class EchoService : public QObject
{
    Q_OBJECT
    EchoData *m_model;
    EchoPort *m_port;
    QTimer *m_timer;
public:
    explicit EchoService(EchoData *model,QObject *parent = 0);
    EchoData getModel(){
        return *m_model;
    }

signals:
    void portRequest(QByteArray);
public slots:
    void getRespounse(QByteArray);
};

#endif // ECHOSERVICE_H
