/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPLAINTEXTEDITSLOTS_H
#define QPLAINTEXTEDITSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QPlainTextEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QPlainTextEditSlots: public QObject
{
  Q_OBJECT
  public:
  QPlainTextEditSlots(QObject *parent = 0);
  ~QPlainTextEditSlots();
  public slots:
  void blockCountChanged( int newBlockCount );
  void copyAvailable( bool yes );
  void cursorPositionChanged();
  void modificationChanged( bool changed );
  void redoAvailable( bool available );
  void selectionChanged();
  void textChanged();
  void undoAvailable( bool available );
  void updateRequest( const QRect & rect, int dy );
};

#endif /* QPLAINTEXTEDITSLOTS_H */
