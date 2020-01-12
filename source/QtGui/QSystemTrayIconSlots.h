/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSYSTEMTRAYICONSLOTS_H
#define QSYSTEMTRAYICONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QSystemTrayIcon>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QSystemTrayIconSlots: public QObject
{
  Q_OBJECT
  public:
  QSystemTrayIconSlots(QObject *parent = 0);
  ~QSystemTrayIconSlots();
  public slots:
  void activated( QSystemTrayIcon::ActivationReason reason );
  void messageClicked();
};

#endif /* QSYSTEMTRAYICONSLOTS_H */
