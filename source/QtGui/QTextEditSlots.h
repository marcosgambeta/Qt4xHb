/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTEXTEDITSLOTS_H
#define QTEXTEDITSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QTextEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QTextEditSlots: public QObject
{
  Q_OBJECT
  public:
  QTextEditSlots( QObject * parent = 0 );
  ~QTextEditSlots();
  public slots:
  void copyAvailable( bool yes );
  void currentCharFormatChanged( const QTextCharFormat & f );
  void cursorPositionChanged();
  void redoAvailable( bool available );
  void selectionChanged();
  void textChanged();
  void undoAvailable( bool available );
};

#endif /* QTEXTEDITSLOTS_H */
