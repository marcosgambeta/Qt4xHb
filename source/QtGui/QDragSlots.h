/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDRAGSLOTS_H
#define QDRAGSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QDrag>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

#include <QWidget>

class QDragSlots: public QObject
{
  Q_OBJECT
  public:
  QDragSlots(QObject *parent = 0);
  ~QDragSlots();
  public slots:
  void actionChanged( Qt::DropAction action );
  void targetChanged( QWidget * newTarget );
};

#endif /* QDRAGSLOTS_H */
