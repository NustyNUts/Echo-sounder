#ifndef ECHOPORT_H
#define ECHOPORT_H

#include <QObject>
#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>
#include <QTimer>
#include <QStringList>
#include <QDebug>
#include <QtGui>

class EchoPort : public QObject
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
    QStringList m_settingsList;
    //----------------
    int m_state;
private:
    QByteArray readData(int packageSize);//read data from serial port
    bool writeData(QByteArray);//write data to port
public:
    explicit EchoPort(QObject *parent = 0);
    EchoPort( QString comName, int baudRate, int dataBits, int stopBits, int parity,QObject *parent = 0);

signals:
    void timerStop();
    void timerStart(int);
    void sendResponse(QByteArray);
public slots:
    void getRequest(QByteArray);
};

#endif // EHOLOTPORT_H
