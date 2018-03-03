/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSplitterSlots.h"

static QSplitterSlots * s = NULL;

QSplitterSlots::QSplitterSlots(QObject *parent) : QObject(parent)
{
}

QSplitterSlots::~QSplitterSlots()
{
}
void QSplitterSlots::splitterMoved( int pos, int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "splitterMoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppos = hb_itemPutNI( NULL, pos );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, ppos, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( ppos );
    hb_itemRelease( pindex );
  }
}

void QSplitterSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QSplitterSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
