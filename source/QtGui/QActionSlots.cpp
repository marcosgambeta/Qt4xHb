/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QActionSlots.h"

QActionSlots::QActionSlots( QObject * parent ) : QObject( parent )
{
}

QActionSlots::~QActionSlots()
{
}

void QActionSlots::changed()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "changed()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QACTION" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QActionSlots::hovered()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "hovered()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QACTION" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QActionSlots::toggled( bool checked )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "toggled(bool)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QACTION" );
    PHB_ITEM pChecked = hb_itemPutL( NULL, checked );

    hb_vmEvalBlockV( cb, 2, pSender, pChecked );

    hb_itemRelease( pSender );
    hb_itemRelease( pChecked );
  }
}

void QActionSlots::triggered( bool checked )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "triggered(bool)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QACTION" );
    PHB_ITEM pChecked = hb_itemPutL( NULL, checked );

    hb_vmEvalBlockV( cb, 2, pSender, pChecked );

    hb_itemRelease( pSender );
    hb_itemRelease( pChecked );
  }
}

void QActionSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAction * obj = qobject_cast< QAction * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QActionSlots * s = QCoreApplication::instance()->findChild<QActionSlots *>();

    if( s == NULL )
    {
      s = new QActionSlots();
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
