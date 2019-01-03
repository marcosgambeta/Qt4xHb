/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTREEVIEWSLOTS_H
#define QTREEVIEWSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTreeView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QTreeViewSlots: public QObject
{
  Q_OBJECT
  public:
  QTreeViewSlots(QObject *parent = 0);
  ~QTreeViewSlots();
  public slots:
  void collapsed( const QModelIndex & index );
  void expanded( const QModelIndex & index );
};

#endif /* QTREEVIEWSLOTS_H */
