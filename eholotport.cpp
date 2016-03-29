#include "eholotport.h"

//EchoPort::EchoPort(QObject *parent,QString comName,int baudRate,int dataBits,
//                   int stopBits,int parity) :
//    QObject(parent)
//{
//    m_state = 0;
//    //init settings for linux and RPi
//   m_name_COM = comName;
//   m_Baud_rate = baudRate;
//   m_Number_of_data_bits = dataBits;
//   m_interface = 0;
//   m_Parity = parity;
//   m_Stop_bits = stopBits;
//   //create list settings
//   m_settingsList<<m_name_COM<<QString::number(m_Baud_rate)<<QString::number(m_Number_of_data_bits)<<QString::number(m_Stop_bits)<<QString::number(m_Parity);
//}

EchoPort::EchoPort(QObject *parent) :
 QObject(parent),m_name_COM("ttyUSB0"),m_interface(0),
  m_Baud_rate(9600), m_Number_of_data_bits(8),
  m_Stop_bits(1), m_Parity(1)
{
    m_state = 0;
    //create list settings
    m_settingsList<<m_name_COM<<QString::number(m_Baud_rate)<<QString::number(m_Number_of_data_bits)<<QString::number(m_Stop_bits)<<QString::number(m_Parity);
}

void EchoPort::getRequest(QByteArray arr){
    if(!port->isOpen())
    {
        if (port->open(QIODevice::ReadWrite))
        {
            m_state=1;
            qDebug()<<"state = 1 ON, port opened";
        }
        else
        {
            if(port->isOpen())
                port->close();
            qDebug()<<"Error while opening";
        }
    }

}

QByteArray EchoPort::readData(int packageSize){
    if(port->isOpen() && port->waitForReadyRead(100)){
        m_state = 1;
        while(m_state){
            qint64 byteAvail = port->bytesAvailable();
            qApp->processEvents();
            QThread::msleep(10);
            if(byteAvail >=packageSize){
                return port->readAll();
                 m_state=0;
            }
        }
    }
}

bool EchoPort::writeData(QByteArray arr){
     if(port->isOpen()){
         port->write(arr,sizeof(arr));
         if(!port->waitForBytesWritten(1000))
         {
             qDebug()<<"Error while writing data";
             return 1;
         }
         return 0;
     }
}
