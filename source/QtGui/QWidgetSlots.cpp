/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWidgetSlots.h"

QWidgetSlots::QWidgetSlots(QObject *parent) : QObject(parent)
{
}

QWidgetSlots::~QWidgetSlots()
{
}
void QWidgetSlots::customContextMenuRequested( const QPoint & pos )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "customContextMenuRequested(QPoint)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWIDGET" );
    PHB_ITEM ppos = Signals_return_object( (void *) &pos, "QPOINT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppos );
    hb_itemRelease( psender );
    hb_itemRelease( ppos );
  }
}

void QWidgetSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QWidget * obj = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QWidgetSlots * s = QCoreApplication::instance()->findChild<QWidgetSlots *>();

    if( s == NULL )
    {
      s = new QWidgetSlots();
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
