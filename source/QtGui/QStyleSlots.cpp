/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStyleSlots.h"

QStyleSlots::QStyleSlots(QObject *parent) : QObject(parent)
{
}

QStyleSlots::~QStyleSlots()
{
}
void QStyleSlots::currentChanged( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSTYLE" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
void QStyleSlots::tabCloseRequested( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tabCloseRequested(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSTYLE" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
void QStyleSlots::tabMoved( int from, int to )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tabMoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSTYLE" );
    PHB_ITEM pfrom = hb_itemPutNI( NULL, from );
    PHB_ITEM pto = hb_itemPutNI( NULL, to );
    hb_vmEvalBlockV( cb, 3, psender, pfrom, pto );
    hb_itemRelease( psender );
    hb_itemRelease( pfrom );
    hb_itemRelease( pto );
  }
}

void QStyleSlots_connect_signal( const QString & signal, const QString & slot )
{
  QStyle * obj = (QStyle *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStyleSlots * s = QCoreApplication::instance()->findChild<QStyleSlots *>();

    if( s == NULL )
    {
      s = new QStyleSlots();
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
