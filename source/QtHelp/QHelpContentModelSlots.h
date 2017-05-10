/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQHELPCONTENTMODEL_H
#define SLOTSQHELPCONTENTMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpContentModel>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QHelpContentModel_release_codeblocks ();

class SlotsQHelpContentModel: public QObject
{
  Q_OBJECT

  public:
  SlotsQHelpContentModel(QObject *parent = 0);
  ~SlotsQHelpContentModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void contentsCreated ();
  void contentsCreationStarted ();
};

#endif
