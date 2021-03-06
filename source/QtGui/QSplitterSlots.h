/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSPLITTERSLOTS_H
#define QSPLITTERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QSplitter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QSplitterSlots: public QObject
{
  Q_OBJECT
  public:
  QSplitterSlots( QObject * parent = 0 );
  ~QSplitterSlots();
  public slots:
  void splitterMoved( int pos, int index );
};

#endif /* QSPLITTERSLOTS_H */
