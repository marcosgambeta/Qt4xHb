/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDeclarativePropertyMapSlots.h"

static QDeclarativePropertyMapSlots * s = NULL;

QDeclarativePropertyMapSlots::QDeclarativePropertyMapSlots(QObject *parent) : QObject(parent)
{
}

QDeclarativePropertyMapSlots::~QDeclarativePropertyMapSlots()
{
}
void QDeclarativePropertyMapSlots::valueChanged( const QString & key, const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pkey = hb_itemPutC( NULL, QSTRINGTOSTRING(key) );
    PHB_ITEM pvalue = hb_itemPutPtr( NULL, (QVariant *) &value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pkey, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}

HB_FUNC( QDECLARATIVEPROPERTYMAP_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new QDeclarativePropertyMapSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "valueChanged(QString,QVariant)", "valueChanged(QString,QVariant)" ) );
}

