/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QNETWORKSESSIONSLOTS_H
#define QNETWORKSESSIONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QNetworkSession>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QNetworkSessionSlots: public QObject
{
  Q_OBJECT
  public:
  QNetworkSessionSlots(QObject *parent = 0);
  ~QNetworkSessionSlots();
  public slots:
  void closed();
  void error( QNetworkSession::SessionError error );
  void newConfigurationActivated();
  void opened();
  void preferredConfigurationChanged( const QNetworkConfiguration & config, bool isSeamless );
  void stateChanged( QNetworkSession::State state );
};

#endif /* QNETWORKSESSIONSLOTS_H */
