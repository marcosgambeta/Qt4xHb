/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QITEMSELECTIONMODELSLOTS_H
#define QITEMSELECTIONMODELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QItemSelectionModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QItemSelectionModelSlots: public QObject
{
  Q_OBJECT
  public:
  QItemSelectionModelSlots( QObject * parent = 0 );
  ~QItemSelectionModelSlots();
  public slots:
  void currentChanged( const QModelIndex & current, const QModelIndex & previous );
  void currentColumnChanged( const QModelIndex & current, const QModelIndex & previous );
  void currentRowChanged( const QModelIndex & current, const QModelIndex & previous );
  void selectionChanged( const QItemSelection & selected, const QItemSelection & deselected );
};

#endif /* QITEMSELECTIONMODELSLOTS_H */
