/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QProcessSlots.h"

static QProcessSlots * s = NULL;

QProcessSlots::QProcessSlots(QObject *parent) : QObject(parent)
{
}

QProcessSlots::~QProcessSlots()
{
}
void QProcessSlots::error( QProcess::ProcessError error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QProcess::ProcessError)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QPROCESS" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
void QProcessSlots::finished( int exitCode, QProcess::ExitStatus exitStatus )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(int,QProcess::ExitStatus)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QPROCESS" );
    PHB_ITEM pexitCode = hb_itemPutNI( NULL, exitCode );
    PHB_ITEM pexitStatus = hb_itemPutNI( NULL, (int) exitStatus );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pexitCode, pexitStatus );
    hb_itemRelease( psender );
    hb_itemRelease( pexitCode );
    hb_itemRelease( pexitStatus );
  }
}
void QProcessSlots::readyReadStandardError()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyReadStandardError()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QPROCESS" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QProcessSlots::readyReadStandardOutput()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyReadStandardOutput()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QPROCESS" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QProcessSlots::started()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QPROCESS" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QProcessSlots::stateChanged( QProcess::ProcessState newState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QProcess::ProcessState)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QPROCESS" );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewState );
    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
  }
}

void QProcessSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QProcessSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
