#ifndef ECHOMODEL_H
#define ECHOMODEL_H
#include <QTime>
#include <QString>
/*
 *Model of echolot without any logic
 * just data contain
*/
class EchoModel
{
    QString m_lat;
    QString m_lon;
    QDate *m_date;
    QTime *m_time;
    int m_soundSpeed;
    int m_penentration;

    //data from PPU
    int m_depthRange;
    int m_coefGain;
    int m_countCorelatedStop;
    int m_countTrStop;
    int m_codeFirstIntervalAfterProcessing;
    int m_timeIntervalBeforeProcessing[10];
    int m_amlitudeImpStop[10];
public:
    //setters
    void setTime(QString time){
        *m_time = QTime::fromString(time,"hh:mm:ss");
    }
    void setDate(QString date){
        *m_date = QDate::fromString(date,"dd/MM/yyyy");
    }
    void setLat(QString lat){
        m_lat = lat;
    }
    void setLon(QString lon){
        m_lon = lon;
    }
    void setSoundSpeed(int soundSpeed){
        m_soundSpeed = soundSpeed;
    }
    void setPenentration(int penentrarion){
        m_penentration = penentrarion;
    }
    //getters
    QString getTime(){
        return m_time->toString("hh:mm:ss");
    }
    QString getDate(){
        return m_date->toString("dd:MM:yyyy");
    }
    QString getLat(){
        return m_lat;
    }
    QString getLon(){
        return m_lon;
    }
    int getSoundSpeed(){
        return m_soundSpeed;
    }
    int getPenentration(){
        return m_penentration;
    }

    EchoModel();
};

#endif // ECHOMODEL_H
