/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTEVENTDISPATCHER
#endif

CLASS QAbstractEventDispatcher INHERIT QObject

   METHOD delete
   METHOD filterEvent
   METHOD flush
   METHOD hasPendingEvents
   METHOD interrupt
   METHOD processEvents
   METHOD registerSocketNotifier
   METHOD registerTimer
   METHOD unregisterSocketNotifier
   METHOD unregisterTimer
   METHOD unregisterTimers
   METHOD wakeUp
   METHOD instance

   METHOD onAboutToBlock
   METHOD onAwake

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractEventDispatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractEventDispatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_DELETE )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool filterEvent ( void * message )
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FILTEREVENT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISPOINTER(1) )
    {
      RBOOL( obj->filterEvent ( (void *) hb_parptr(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void flush () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FLUSH )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->flush ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool hasPendingEvents () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_HASPENDINGEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasPendingEvents () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void interrupt () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INTERRUPT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->interrupt ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_PROCESSEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->processEvents ( (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSOCKETNOTIFIER(1) )
    {
      obj->registerSocketNotifier ( PQSOCKETNOTIFIER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int registerTimer ( int interval, QObject * object )
*/
void QAbstractEventDispatcher_registerTimer1 ()
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RINT( obj->registerTimer ( PINT(1), PQOBJECT(2) ) );
  }
}

/*
virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0
*/
void QAbstractEventDispatcher_registerTimer2 ()
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->registerTimer ( PINT(1), PINT(2), PQOBJECT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]int registerTimer ( int interval, QObject * object )
//[2]virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQOBJECT(2) )
  {
    QAbstractEventDispatcher_registerTimer1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    QAbstractEventDispatcher_registerTimer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void unregisterSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSOCKETNOTIFIER(1) )
    {
      obj->unregisterSocketNotifier ( PQSOCKETNOTIFIER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool unregisterTimer ( int timerId ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->unregisterTimer ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool unregisterTimers ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMERS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      RBOOL( obj->unregisterTimers ( PQOBJECT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void wakeUp () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_WAKEUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->wakeUp ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QAbstractEventDispatcher * instance ( QThread * thread = 0 )
*/

#pragma ENDDUMP
