#include "echodata.h"

EchoData::EchoData() :
    m_lat ("00'11'222"),
    m_lon("000'11'111"),
    m_soundSpeed(1500), m_penentration(0),
    m_depthRange(0), m_coefGain(0),m_countCorelatedStop(0)
{
    m_time = new QTime();
    m_date = new QDate();
    *m_time = QTime::currentTime();
    *m_date = QDate::currentDate();
}

