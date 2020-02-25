/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QUndoStackSlots.h"

QUndoStackSlots::QUndoStackSlots(QObject *parent) : QObject(parent)
{
}

QUndoStackSlots::~QUndoStackSlots()
{
}
void QUndoStackSlots::canRedoChanged( bool canRedo )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canRedoChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QUNDOSTACK" );
    PHB_ITEM pcanRedo = hb_itemPutL( NULL, canRedo );
    hb_vmEvalBlockV( cb, 2, psender, pcanRedo );
    hb_itemRelease( psender );
    hb_itemRelease( pcanRedo );
  }
}
void QUndoStackSlots::canUndoChanged( bool canUndo )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canUndoChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QUNDOSTACK" );
    PHB_ITEM pcanUndo = hb_itemPutL( NULL, canUndo );
    hb_vmEvalBlockV( cb, 2, psender, pcanUndo );
    hb_itemRelease( psender );
    hb_itemRelease( pcanUndo );
  }
}
void QUndoStackSlots::cleanChanged( bool clean )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cleanChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QUNDOSTACK" );
    PHB_ITEM pclean = hb_itemPutL( NULL, clean );
    hb_vmEvalBlockV( cb, 2, psender, pclean );
    hb_itemRelease( psender );
    hb_itemRelease( pclean );
  }
}
void QUndoStackSlots::indexChanged( int idx )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QUNDOSTACK" );
    PHB_ITEM pidx = hb_itemPutNI( NULL, idx );
    hb_vmEvalBlockV( cb, 2, psender, pidx );
    hb_itemRelease( psender );
    hb_itemRelease( pidx );
  }
}
void QUndoStackSlots::redoTextChanged( const QString & redoText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QUNDOSTACK" );
    PHB_ITEM predoText = hb_itemPutC( NULL, QSTRINGTOSTRING(redoText) );
    hb_vmEvalBlockV( cb, 2, psender, predoText );
    hb_itemRelease( psender );
    hb_itemRelease( predoText );
  }
}
void QUndoStackSlots::undoTextChanged( const QString & undoText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QUNDOSTACK" );
    PHB_ITEM pundoText = hb_itemPutC( NULL, QSTRINGTOSTRING(undoText) );
    hb_vmEvalBlockV( cb, 2, psender, pundoText );
    hb_itemRelease( psender );
    hb_itemRelease( pundoText );
  }
}

void QUndoStackSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QUndoStack * obj = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QUndoStackSlots * s = QCoreApplication::instance()->findChild<QUndoStackSlots *>();

    if( s == NULL )
    {
      s = new QUndoStackSlots();
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
