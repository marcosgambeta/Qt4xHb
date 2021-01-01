/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSVGRENDERERSLOTS_H
#define QSVGRENDERERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtSvg/QSvgRenderer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QSvgRendererSlots: public QObject
{
  Q_OBJECT
  public:
  QSvgRendererSlots( QObject * parent = 0 );
  ~QSvgRendererSlots();
  public slots:
  void repaintNeeded();
};

#endif /* QSVGRENDERERSLOTS_H */
