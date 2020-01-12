/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSEFFECTSLOTS_H
#define QGRAPHICSEFFECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QGraphicsEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QGraphicsEffectSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsEffectSlots(QObject *parent = 0);
  ~QGraphicsEffectSlots();
  public slots:
  void enabledChanged( bool enabled );
};

#endif /* QGRAPHICSEFFECTSLOTS_H */
