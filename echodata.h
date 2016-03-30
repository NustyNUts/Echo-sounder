#ifndef ECHODATA_H
#define ECHODATA_H

#include <QObject>
#include <QTime>
#include <QDate>
#include <QDebug>

class EchoData
{

    QString m_lat;
    QString m_lon;
    QDate *m_date;
    QTime *m_time;
    int m_soundSpeed;
    int m_penentration;

    int m_depthRange;
    int m_coefGain;
    int m_countCorelatedStop;
    int m_countTrStop;
    //correlated depth
    int m_correlDepth;
    int m_correlAmplitude;
    //----------------
    //depth
    QList<int> m_depth;
    QList<int> m_amlitude;
    //-----------------
public:
    EchoData();
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
    void setCoefGain(int coefGain){
        m_coefGain = coefGain;
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

    void setParams(QList<int> d){
        m_depth.clear();
        m_depth = d;
        QVariantList list;
        QListIterator<int> i(d);
        while(i.hasNext())
            list.append(i.next());
    }




};

#endif // ECHODATA_H
