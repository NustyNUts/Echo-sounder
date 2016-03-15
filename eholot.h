#ifndef EHOLOT_H
#define EHOLOT_H

#include <QObject>
#include <QQmlContext>

class Eholot : public QObject
{
    Q_OBJECT
    QQmlContext *m_context;
public:
    explicit Eholot(QQmlContext *context,QObject *parent = 0);

signals:

public slots:

};

#endif // EHOLOT_H
