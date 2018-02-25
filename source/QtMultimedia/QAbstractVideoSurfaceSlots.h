/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTVIDEOSURFACESLOTS_H
#define QABSTRACTVIDEOSURFACESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractVideoSurface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QAbstractVideoSurfaceSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractVideoSurfaceSlots(QObject *parent = 0);
  ~QAbstractVideoSurfaceSlots();
  public slots:
  void activeChanged( bool active );
  void surfaceFormatChanged( const QVideoSurfaceFormat & format );
  void supportedFormatsChanged();
};

#endif /* QABSTRACTVIDEOSURFACESLOTS_H */
