#ifndef ECHOCONTR_H
#define ECHOCONTR_H

#include <QtQuick>
#include <QObject>
#include <QQmlContext>
#include <QTimer>
#include <QVariantList>
#include "echodata.h"
/*
 * controller for connection view and model
 * */

class EchoContr : public QObject
{

    Q_OBJECT
    QQmlContext *m_context;
    QVariantList depthList;
    QTimer *timer;
public:
    explicit EchoContr(EchoData *echoModel,QQmlContext *context,QObject *parent=0);

    QString getMainQml(){
        return "qrc:///main.qml";
    }



signals:

public slots:

};

#endif // ECHOCONTR_H
