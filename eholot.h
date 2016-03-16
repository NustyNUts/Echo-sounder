#ifndef EHOLOT_H
#define EHOLOT_H

#include <QObject>
#include <QQmlContext>
#include <QTime>
#include<QDebug>

class Eholot : public QObject
{
    Q_OBJECT
    QQmlContext *m_context;//qml context
    QTime *m_time;
    QString m_latitude;
    QString m_longitude;
    int m_soundSpeed;
    //data from PPU
    int m_depthRange;
    int m_coefGain;
    int m_countCorelatedStop;
    int m_countTrStop;
    int m_codeFirstIntervalAfterProcessing;
    int m_timeIntervalBeforeProcessing[10];
    int m_amlitudeImpStop[10];
public:
    explicit Eholot(QQmlContext *context,QObject *parent = 0);

signals:

public slots:
};

#endif // EHOLOT_H
