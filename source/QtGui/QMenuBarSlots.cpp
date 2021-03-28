/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMenuBarSlots.h"

QMenuBarSlots::QMenuBarSlots( QObject * parent ) : QObject( parent )
{
}

QMenuBarSlots::~QMenuBarSlots()
{
}

void QMenuBarSlots::hovered( QAction * action )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "hovered(QAction*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QMENUBAR" );
    PHB_ITEM pAction = Qt4xHb::Signals_return_qobject( action, "QACTION" );

    hb_vmEvalBlockV( cb, 2, pSender, pAction );

    hb_itemRelease( pSender );
    hb_itemRelease( pAction );
  }
}

void QMenuBarSlots::triggered( QAction * action )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "triggered(QAction*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QMENUBAR" );
    PHB_ITEM pAction = Qt4xHb::Signals_return_qobject( action, "QACTION" );

    hb_vmEvalBlockV( cb, 2, pSender, pAction );

    hb_itemRelease( pSender );
    hb_itemRelease( pAction );
  }
}

void QMenuBarSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMenuBar * obj = qobject_cast< QMenuBar * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QMenuBarSlots * s = QCoreApplication::instance()->findChild<QMenuBarSlots *>();

    if( s == NULL )
    {
      s = new QMenuBarSlots();
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
