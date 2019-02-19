/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPINDEXMODELSLOTS_H
#define QHELPINDEXMODELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpIndexModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QHelpIndexModelSlots: public QObject
{
  Q_OBJECT
  public:
  QHelpIndexModelSlots(QObject *parent = 0);
  ~QHelpIndexModelSlots();
  public slots:
  void indexCreated();
  void indexCreationStarted();
};

#endif /* QHELPINDEXMODELSLOTS_H */
