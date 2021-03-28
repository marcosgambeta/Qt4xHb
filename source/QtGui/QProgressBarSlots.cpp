/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QProgressBarSlots.h"

QProgressBarSlots::QProgressBarSlots( QObject * parent ) : QObject( parent )
{
}

QProgressBarSlots::~QProgressBarSlots()
{
}

void QProgressBarSlots::valueChanged( int value )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "valueChanged(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QPROGRESSBAR" );
    PHB_ITEM pValue = hb_itemPutNI( NULL, value );

    hb_vmEvalBlockV( cb, 2, pSender, pValue );

    hb_itemRelease( pSender );
    hb_itemRelease( pValue );
  }
}

void QProgressBarSlots_connect_signal( const QString & signal, const QString & slot )
{
  QProgressBar * obj = qobject_cast< QProgressBar * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QProgressBarSlots * s = QCoreApplication::instance()->findChild<QProgressBarSlots *>();

    if( s == NULL )
    {
      s = new QProgressBarSlots();
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
