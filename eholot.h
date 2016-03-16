#ifndef EHOLOT_H
#define EHOLOT_H

#include <QObject>
#include <QQmlContext>
#include <QTime>
#include<QDebug>

class Eholot : public QObject
{
    Q_OBJECT
    QQmlContext *m_context;
    QTime *m_time;
    QString m_latitude;
    QString m_longitude;
    int m_soundSpeed;
public:
    explicit Eholot(QQmlContext *context,QObject *parent = 0);

signals:

public slots:
};

#endif // EHOLOT_H
