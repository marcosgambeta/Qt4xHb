/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPrintPreviewWidgetSlots.h"

QPrintPreviewWidgetSlots::QPrintPreviewWidgetSlots( QObject * parent ) : QObject( parent )
{
}

QPrintPreviewWidgetSlots::~QPrintPreviewWidgetSlots()
{
}

void QPrintPreviewWidgetSlots::paintRequested( QPrinter * printer )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "paintRequested(QPrinter*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QPRINTPREVIEWWIDGET" );
    PHB_ITEM pPrinter = Qt4xHb::Signals_return_object( ( void * ) printer, "QPRINTER" );

    hb_vmEvalBlockV( cb, 2, pSender, pPrinter );

    hb_itemRelease( pSender );
    hb_itemRelease( pPrinter );
  }
}

void QPrintPreviewWidgetSlots::previewChanged()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "previewChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QPRINTPREVIEWWIDGET" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QPrintPreviewWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QPrintPreviewWidgetSlots * s = QCoreApplication::instance()->findChild<QPrintPreviewWidgetSlots *>();

    if( s == NULL )
    {
      s = new QPrintPreviewWidgetSlots();
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
