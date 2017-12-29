/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQACTION_H
#define SLOTSQACTION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAction>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAction_release_codeblocks ();

class SlotsQAction: public QObject
{
  Q_OBJECT

  public:
  SlotsQAction(QObject *parent = 0);
  ~SlotsQAction();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void changed ();
  void hovered ();
  void toggled ( bool checked );
  void triggered ( bool checked = false );
};

#endif
