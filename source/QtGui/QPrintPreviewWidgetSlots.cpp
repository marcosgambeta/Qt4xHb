/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPrintPreviewWidgetSlots.h"

QPrintPreviewWidgetSlots::QPrintPreviewWidgetSlots(QObject *parent) : QObject(parent)
{
}

QPrintPreviewWidgetSlots::~QPrintPreviewWidgetSlots()
{
}
void QPrintPreviewWidgetSlots::paintRequested( QPrinter * printer )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "paintRequested(QPrinter*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPRINTPREVIEWWIDGET" );
    PHB_ITEM pprinter = Signals_return_object( (void *) printer, "QPRINTER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprinter );
    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}
void QPrintPreviewWidgetSlots::previewChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "previewChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPRINTPREVIEWWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QPrintPreviewWidgetSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QPrintPreviewWidgetSlots * s = QCoreApplication::instance()->findChild<QPrintPreviewWidgetSlots *>();

    if( s == NULL )
    {
      s = new QPrintPreviewWidgetSlots();
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
