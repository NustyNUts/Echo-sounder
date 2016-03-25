#ifndef ECHOCONTR_H
#define ECHOCONTR_H

#include <QtQuick>
#include <QObject>
#include <QQmlContext>
#include "echomodel.h"


class EchoContr : public QObject
{

    Q_OBJECT
    QQmlContext *m_context;
public:
    explicit EchoContr(EchoModel *echoModel,QQmlContext *context,QObject *parent=0);

    QString getMainQml(){
        return "qrc:///main.qml";
    }

signals:

public slots:

};

#endif // ECHOCONTR_H
