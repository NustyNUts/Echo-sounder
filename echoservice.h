#ifndef ECHOSERVICE_H
#define ECHOSERVICE_H

#include <QObject>
#include "echomodel.h"

class EchoService : public QObject
{
    Q_OBJECT
    EchoModel *m_model;
public:
    explicit EchoService(EchoModel *model,QObject *parent = 0);
    EchoModel getModel(){
        return *m_model;
    }

signals:

public slots:

};

#endif // ECHOSERVICE_H
