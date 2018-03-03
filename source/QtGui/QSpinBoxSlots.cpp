/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSpinBoxSlots.h"

static QSpinBoxSlots * s = NULL;

QSpinBoxSlots::QSpinBoxSlots(QObject *parent) : QObject(parent)
{
}

QSpinBoxSlots::~QSpinBoxSlots()
{
}
void QSpinBoxSlots::valueChanged( int i )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pi = hb_itemPutNI( NULL, i );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pi );
    hb_itemRelease( psender );
    hb_itemRelease( pi );
  }
}
void QSpinBoxSlots::valueChanged( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void QSpinBoxSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QSpinBoxSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
