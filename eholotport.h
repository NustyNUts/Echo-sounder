#ifndef EHOLOTPORT_H
#define EHOLOTPORT_H

#include <QObject>
#include "QtSerialPort/QSerialPort"
#include <QtSerialPort/QSerialPortInfo>
#include <QTimer>

class EholotPort : public QObject
{
    Q_OBJECT
    QSerialPort* port;
    QTimer* timer;
    //settings for port
    QString m_name_COM;
    int m_Baud_rate;
    int m_Number_of_data_bits;
    int m_Stop_bits;
    int m_Parity;
    int m_interface;
    //----------------

public:
    explicit EholotPort(QObject *parent = 0);

signals:

public slots:

};

#endif // EHOLOTPORT_H
