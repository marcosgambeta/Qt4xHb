/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTSTATE
#endif

CLASS QHistoryState INHERIT QAbstractState

   METHOD new
   METHOD delete
   METHOD defaultState
   METHOD setDefaultState
   METHOD historyType
   METHOD setHistoryType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHistoryState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHistoryState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHistoryState(QState *parent = 0)
*/
void QHistoryState_new1 ()
{
  QHistoryState * o = new QHistoryState ( OPQSTATE(1,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

/*
QHistoryState(HistoryType type, QState *parent = 0)
*/
void QHistoryState_new2 ()
{
  QHistoryState * o = new QHistoryState ( (QHistoryState::HistoryType) hb_parni(1), OPQSTATE(2,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

//[1]QHistoryState(QState *parent = 0)
//[2]QHistoryState(HistoryType type, QState *parent = 0)

HB_FUNC_STATIC( QHISTORYSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QHistoryState_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    QHistoryState_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHISTORYSTATE_DELETE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QAbstractState *defaultState() const
*/
HB_FUNC_STATIC( QHISTORYSTATE_DEFAULTSTATE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractState * ptr = obj->defaultState ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTSTATE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDefaultState(QAbstractState *state)
*/
HB_FUNC_STATIC( QHISTORYSTATE_SETDEFAULTSTATE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
    {
      obj->setDefaultState ( PQABSTRACTSTATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
HistoryType historyType() const
*/
HB_FUNC_STATIC( QHISTORYSTATE_HISTORYTYPE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->historyType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setHistoryType(HistoryType type)
*/
HB_FUNC_STATIC( QHISTORYSTATE_SETHISTORYTYPE )
{
  QHistoryState * obj = (QHistoryState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHistoryType ( (QHistoryState::HistoryType) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
