/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFontComboBoxSlots.h"

QFontComboBoxSlots::QFontComboBoxSlots(QObject *parent) : QObject(parent)
{
}

QFontComboBoxSlots::~QFontComboBoxSlots()
{
}
void QFontComboBoxSlots::currentFontChanged( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentFontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFONTCOMBOBOX" );
    PHB_ITEM pfont = Signals_return_object( (void *) &font, "QFONT" );
    hb_vmEvalBlockV( cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}

void QFontComboBoxSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QFontComboBox * obj = (QFontComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QFontComboBoxSlots * s = QCoreApplication::instance()->findChild<QFontComboBoxSlots *>();

    if( s == NULL )
    {
      s = new QFontComboBoxSlots();
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
