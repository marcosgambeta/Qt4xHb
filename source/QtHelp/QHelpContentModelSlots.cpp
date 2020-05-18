/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpContentModelSlots.h"

QHelpContentModelSlots::QHelpContentModelSlots( QObject *parent ) : QObject( parent )
{
}

QHelpContentModelSlots::~QHelpContentModelSlots()
{
}

void QHelpContentModelSlots::contentsCreated()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "contentsCreated()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QHELPCONTENTMODEL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QHelpContentModelSlots::contentsCreationStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "contentsCreationStarted()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QHELPCONTENTMODEL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QHelpContentModelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QHelpContentModel * obj = (QHelpContentModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QHelpContentModelSlots * s = QCoreApplication::instance()->findChild<QHelpContentModelSlots *>();

    if( s == NULL )
    {
      s = new QHelpContentModelSlots();
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
