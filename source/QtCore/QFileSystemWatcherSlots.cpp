/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFileSystemWatcherSlots.h"

static QFileSystemWatcherSlots * s = NULL;

QFileSystemWatcherSlots::QFileSystemWatcherSlots(QObject *parent) : QObject(parent)
{
}

QFileSystemWatcherSlots::~QFileSystemWatcherSlots()
{
}
void QFileSystemWatcherSlots::directoryChanged( const QString & path )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directoryChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QFILESYSTEMWATCHER" );
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}
void QFileSystemWatcherSlots::fileChanged( const QString & path )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fileChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QFILESYSTEMWATCHER" );
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}

void QFileSystemWatcherSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QFileSystemWatcherSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
