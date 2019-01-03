/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QStyleOptionSizeGrip INHERIT QStyleOptionComplex

   METHOD new
   METHOD corner
   METHOD setCorner

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionSizeGrip
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStyleOptionSizeGrip>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleOptionSizeGrip()
*/
void QStyleOptionSizeGrip_new1 ()
{
  QStyleOptionSizeGrip * o = new QStyleOptionSizeGrip ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QStyleOptionSizeGrip(const QStyleOptionSizeGrip &other)
*/
void QStyleOptionSizeGrip_new2 ()
{
  QStyleOptionSizeGrip * o = new QStyleOptionSizeGrip ( *PQSTYLEOPTIONSIZEGRIP(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QStyleOptionSizeGrip(int version) (protected)
*/

//[1]QStyleOptionSizeGrip()
//[2]QStyleOptionSizeGrip(const QStyleOptionSizeGrip &other)
//[3]QStyleOptionSizeGrip(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONSIZEGRIP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionSizeGrip_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONSIZEGRIP(1) )
  {
    QStyleOptionSizeGrip_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Corner corner
*/
HB_FUNC_STATIC( QSTYLEOPTIONSIZEGRIP_CORNER )
{
  QStyleOptionSizeGrip * obj = (QStyleOptionSizeGrip *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->corner  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSIZEGRIP_SETCORNER )
{
  QStyleOptionSizeGrip * obj = (QStyleOptionSizeGrip *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->corner = (Qt::Corner) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
