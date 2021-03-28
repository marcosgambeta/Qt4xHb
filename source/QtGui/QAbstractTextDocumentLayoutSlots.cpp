/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractTextDocumentLayoutSlots.h"

QAbstractTextDocumentLayoutSlots::QAbstractTextDocumentLayoutSlots( QObject * parent ) : QObject( parent )
{
}

QAbstractTextDocumentLayoutSlots::~QAbstractTextDocumentLayoutSlots()
{
}

void QAbstractTextDocumentLayoutSlots::documentSizeChanged( const QSizeF & newSize )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "documentSizeChanged(QSizeF)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QABSTRACTTEXTDOCUMENTLAYOUT" );
    PHB_ITEM pNewSize = Qt4xHb::Signals_return_object( ( void * ) &newSize, "QSIZEF" );

    hb_vmEvalBlockV( cb, 2, pSender, pNewSize );

    hb_itemRelease( pSender );
    hb_itemRelease( pNewSize );
  }
}

void QAbstractTextDocumentLayoutSlots::pageCountChanged( int newPages )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "pageCountChanged(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QABSTRACTTEXTDOCUMENTLAYOUT" );
    PHB_ITEM pNewPages = hb_itemPutNI( NULL, newPages );

    hb_vmEvalBlockV( cb, 2, pSender, pNewPages );

    hb_itemRelease( pSender );
    hb_itemRelease( pNewPages );
  }
}

void QAbstractTextDocumentLayoutSlots::update( const QRectF & rect )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "update(QRectF)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QABSTRACTTEXTDOCUMENTLAYOUT" );
    PHB_ITEM pRect = Qt4xHb::Signals_return_object( ( void * ) &rect, "QRECTF" );

    hb_vmEvalBlockV( cb, 2, pSender, pRect );

    hb_itemRelease( pSender );
    hb_itemRelease( pRect );
  }
}

void QAbstractTextDocumentLayoutSlots::updateBlock( const QTextBlock & block )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "updateBlock(QTextBlock)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QABSTRACTTEXTDOCUMENTLAYOUT" );
    PHB_ITEM pBlock = Qt4xHb::Signals_return_object( ( void * ) &block, "QTEXTBLOCK" );

    hb_vmEvalBlockV( cb, 2, pSender, pBlock );

    hb_itemRelease( pSender );
    hb_itemRelease( pBlock );
  }
}

void QAbstractTextDocumentLayoutSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractTextDocumentLayout * obj = qobject_cast< QAbstractTextDocumentLayout * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QAbstractTextDocumentLayoutSlots * s = QCoreApplication::instance()->findChild<QAbstractTextDocumentLayoutSlots *>();

    if( s == NULL )
    {
      s = new QAbstractTextDocumentLayoutSlots();
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
