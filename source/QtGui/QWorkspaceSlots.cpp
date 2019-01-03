/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWorkspaceSlots.h"

QWorkspaceSlots::QWorkspaceSlots(QObject *parent) : QObject(parent)
{
}

QWorkspaceSlots::~QWorkspaceSlots()
{
}
void QWorkspaceSlots::windowActivated( QWidget * w )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowActivated(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWORKSPACE" );
    PHB_ITEM pw = Signals_return_qobject( (QObject *) w, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pw );
    hb_itemRelease( psender );
    hb_itemRelease( pw );
  }
}

void QWorkspaceSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QWorkspaceSlots * s = QCoreApplication::instance()->findChild<QWorkspaceSlots *>();

    if( s == NULL )
    {
      s = new QWorkspaceSlots();
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
