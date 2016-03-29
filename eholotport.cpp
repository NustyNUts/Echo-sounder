#include "eholotport.h"

EholotPort::EholotPort(QObject *parent) :
    QObject(parent)
{
    //init settings for linux and RPi
    m_name_COM = "ttyUSB0";
    m_interface=0;
    m_Baud_rate=9600;
    m_Number_of_data_bits=8;
    m_Stop_bits=1;
    m_Parity=0;
    //create list settings
    QStringList settingsList;
    settingsList<<m_name_COM<<QString::number(m_Baud_rate)<<QString::number(m_Number_of_data_bits)<<QString::number(m_Stop_bits)<<QString::number(m_Parity);

}
