/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGROUPBOXSLOTS_H
#define QGROUPBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QGroupBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QGroupBoxSlots: public QObject
{
  Q_OBJECT
  public:
  QGroupBoxSlots( QObject * parent = 0 );
  ~QGroupBoxSlots();
  public slots:
  void clicked( bool checked = false );
  void toggled( bool on );
};

#endif /* QGROUPBOXSLOTS_H */
