/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDeclarativeComponentSlots.h"

QDeclarativeComponentSlots::QDeclarativeComponentSlots(QObject *parent) : QObject(parent)
{
}

QDeclarativeComponentSlots::~QDeclarativeComponentSlots()
{
}
void QDeclarativeComponentSlots::progressChanged( qreal progress )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "progressChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDECLARATIVECOMPONENT" );
    PHB_ITEM pprogress = hb_itemPutND( NULL, progress );
    hb_vmEvalBlockV( cb, 2, psender, pprogress );
    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
}
void QDeclarativeComponentSlots::statusChanged( QDeclarativeComponent::Status status )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QDeclarativeComponent::Status)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDECLARATIVECOMPONENT" );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

void QDeclarativeComponentSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QDeclarativeComponent * obj = (QDeclarativeComponent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QDeclarativeComponentSlots * s = QCoreApplication::instance()->findChild<QDeclarativeComponentSlots *>();

    if( s == NULL )
    {
      s = new QDeclarativeComponentSlots();
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
