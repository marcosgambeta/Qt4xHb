/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTabWidgetSlots.h"

QTabWidgetSlots::QTabWidgetSlots( QObject * parent ) : QObject( parent )
{
}

QTabWidgetSlots::~QTabWidgetSlots()
{
}

void QTabWidgetSlots::currentChanged( int index )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentChanged(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTABWIDGET" );
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QTabWidgetSlots::tabCloseRequested( int index )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "tabCloseRequested(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTABWIDGET" );
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QTabWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTabWidget * obj = qobject_cast< QTabWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QTabWidgetSlots * s = QCoreApplication::instance()->findChild<QTabWidgetSlots *>();

    if( s == NULL )
    {
      s = new QTabWidgetSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt4xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
