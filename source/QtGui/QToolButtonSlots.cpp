/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QToolButtonSlots.h"

static QToolButtonSlots * s = NULL;

QToolButtonSlots::QToolButtonSlots(QObject *parent) : QObject(parent)
{
}

QToolButtonSlots::~QToolButtonSlots()
{
}
void QToolButtonSlots::triggered( QAction * action )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "triggered(QAction*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM paction = Signals_return_qobject( action, "QACTION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void QToolButtonSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QToolButtonSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
