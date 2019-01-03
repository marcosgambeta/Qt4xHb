/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMessageBoxSlots.h"

QMessageBoxSlots::QMessageBoxSlots(QObject *parent) : QObject(parent)
{
}

QMessageBoxSlots::~QMessageBoxSlots()
{
}
void QMessageBoxSlots::buttonClicked( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonClicked(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QMESSAGEBOX" );
    PHB_ITEM pbutton = Signals_return_qobject( (QObject *) button, "QABSTRACTBUTTON" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

void QMessageBoxSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QMessageBoxSlots * s = QCoreApplication::instance()->findChild<QMessageBoxSlots *>();

    if( s == NULL )
    {
      s = new QMessageBoxSlots();
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
