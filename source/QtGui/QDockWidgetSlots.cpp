/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDockWidgetSlots.h"

QDockWidgetSlots::QDockWidgetSlots(QObject *parent) : QObject(parent)
{
}

QDockWidgetSlots::~QDockWidgetSlots()
{
}
void QDockWidgetSlots::allowedAreasChanged( Qt::DockWidgetAreas allowedAreas )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "allowedAreasChanged(Qt::DockWidgetAreas)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDOCKWIDGET" );
    PHB_ITEM pallowedAreas = hb_itemPutNI( NULL, (int) allowedAreas );
    hb_vmEvalBlockV( cb, 2, psender, pallowedAreas );
    hb_itemRelease( psender );
    hb_itemRelease( pallowedAreas );
  }
}
void QDockWidgetSlots::dockLocationChanged( Qt::DockWidgetArea area )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dockLocationChanged(Qt::DockWidgetArea)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDOCKWIDGET" );
    PHB_ITEM parea = hb_itemPutNI( NULL, (int) area );
    hb_vmEvalBlockV( cb, 2, psender, parea );
    hb_itemRelease( psender );
    hb_itemRelease( parea );
  }
}
void QDockWidgetSlots::featuresChanged( QDockWidget::DockWidgetFeatures features )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "featuresChanged(QDockWidget::DockWidgetFeatures)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDOCKWIDGET" );
    PHB_ITEM pfeatures = hb_itemPutNI( NULL, (int) features );
    hb_vmEvalBlockV( cb, 2, psender, pfeatures );
    hb_itemRelease( psender );
    hb_itemRelease( pfeatures );
  }
}
void QDockWidgetSlots::topLevelChanged( bool topLevel )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "topLevelChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDOCKWIDGET" );
    PHB_ITEM ptopLevel = hb_itemPutL( NULL, topLevel );
    hb_vmEvalBlockV( cb, 2, psender, ptopLevel );
    hb_itemRelease( psender );
    hb_itemRelease( ptopLevel );
  }
}
void QDockWidgetSlots::visibilityChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDOCKWIDGET" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QDockWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDockWidget * obj = (QDockWidget *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDockWidgetSlots * s = QCoreApplication::instance()->findChild<QDockWidgetSlots *>();

    if( s == NULL )
    {
      s = new QDockWidgetSlots();
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
