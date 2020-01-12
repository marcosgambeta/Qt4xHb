/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTITEMDELEGATESLOTS_H
#define QABSTRACTITEMDELEGATESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QAbstractItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QAbstractItemDelegateSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractItemDelegateSlots(QObject *parent = 0);
  ~QAbstractItemDelegateSlots();
  public slots:
  void closeEditor( QWidget * editor, QAbstractItemDelegate::EndEditHint hint = QAbstractItemDelegate::NoHint );
  void commitData( QWidget * editor );
  void sizeHintChanged( const QModelIndex & index );
};

#endif /* QABSTRACTITEMDELEGATESLOTS_H */
