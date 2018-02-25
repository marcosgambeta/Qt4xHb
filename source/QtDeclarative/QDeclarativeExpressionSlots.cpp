/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDeclarativeExpressionSlots.h"

static QDeclarativeExpressionSlots * s = NULL;

QDeclarativeExpressionSlots::QDeclarativeExpressionSlots(QObject *parent) : QObject(parent)
{
}

QDeclarativeExpressionSlots::~QDeclarativeExpressionSlots()
{
}
void QDeclarativeExpressionSlots::valueChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QDECLARATIVEEXPRESSION_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new QDeclarativeExpressionSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "valueChanged()", "valueChanged()" ) );
}

