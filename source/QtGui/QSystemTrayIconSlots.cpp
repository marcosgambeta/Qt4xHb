/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSystemTrayIconSlots.h"

static QSystemTrayIconSlots * s = NULL;

QSystemTrayIconSlots::QSystemTrayIconSlots(QObject *parent) : QObject(parent)
{
}

QSystemTrayIconSlots::~QSystemTrayIconSlots()
{
}
void QSystemTrayIconSlots::activated( QSystemTrayIcon::ActivationReason reason )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QSystemTrayIcon::ActivationReason)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preason );
    hb_itemRelease( psender );
    hb_itemRelease( preason );
  }
}
void QSystemTrayIconSlots::messageClicked()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "messageClicked()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QSystemTrayIconSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QSystemTrayIconSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
