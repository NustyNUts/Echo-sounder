#ifndef ECHOSERVICE_H
#define ECHOSERVICE_H

#include <QObject>
#include "echodata.h"
/*
 * all buisness logic application
 * */
class EchoService : public QObject
{
    Q_OBJECT
    EchoData *m_model;
public:
    explicit EchoService(EchoData *model,QObject *parent = 0);
    EchoData getModel(){
        return *m_model;
    }

signals:

public slots:

};

#endif // ECHOSERVICE_H
