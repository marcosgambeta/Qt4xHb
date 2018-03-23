/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAxScriptManagerSlots.h"

QAxScriptManagerSlots::QAxScriptManagerSlots(QObject *parent) : QObject(parent)
{
}

QAxScriptManagerSlots::~QAxScriptManagerSlots()
{
}
void QAxScriptManagerSlots::error( QAxScript * script, int code, const QString & description, int sourcePosition, const QString & sourceText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QAxScript*,int,QString,int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAXSCRIPTMANAGER" );
    PHB_ITEM pscript = Signals_return_qobject( (QObject *) script, "QAXSCRIPT" );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM pdescription = hb_itemPutC( NULL, QSTRINGTOSTRING(description) );
    PHB_ITEM psourcePosition = hb_itemPutNI( NULL, sourcePosition );
    PHB_ITEM psourceText = hb_itemPutC( NULL, QSTRINGTOSTRING(sourceText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, pscript, pcode, pdescription, psourcePosition, psourceText );
    hb_itemRelease( psender );
    hb_itemRelease( pscript );
    hb_itemRelease( pcode );
    hb_itemRelease( pdescription );
    hb_itemRelease( psourcePosition );
    hb_itemRelease( psourceText );
  }
}

void QAxScriptManagerSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAxScriptManagerSlots * s = QCoreApplication::instance()->findChild<QAxScriptManagerSlots *>();

    if( s == NULL )
    {
      s = new QAxScriptManagerSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
