/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSPINBOXSLOTS_H
#define QSPINBOXSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QSpinBoxSlots: public QObject
{
  Q_OBJECT
  public:
  QSpinBoxSlots(QObject *parent = 0);
  ~QSpinBoxSlots();
  public slots:
  void valueChanged( int i );
  void valueChanged( const QString & text );
};

#endif /* QSPINBOXSLOTS_H */
