$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTSTATE
#endif

CLASS QHistoryState INHERIT QAbstractState

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD defaultState
   METHOD setDefaultState
   METHOD historyType
   METHOD setHistoryType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHistoryState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHistoryState(QState *parent = 0)
*/
$constructor=|new1|QState *=0

/*
QHistoryState(HistoryType type, QState *parent = 0)
*/
$constructor=|new2|QHistoryState::HistoryType,QState *=0

//[1]QHistoryState(QState *parent = 0)
//[2]QHistoryState(HistoryType type, QState *parent = 0)

HB_FUNC_STATIC( QHISTORYSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QHISTORYSTATE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QHISTORYSTATE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QAbstractState *defaultState() const
*/
$method=|QAbstractState *|defaultState|

/*
void setDefaultState(QAbstractState *state)
*/
$method=|void|setDefaultState|QAbstractState *

/*
HistoryType historyType() const
*/
$method=|QHistoryState::HistoryType|historyType|

/*
void setHistoryType(HistoryType type)
*/
$method=|void|setHistoryType|QHistoryState::HistoryType

#pragma ENDDUMP
