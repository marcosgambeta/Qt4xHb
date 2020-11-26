/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHoverEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD oldPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHoverEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QHoverEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHoverEvent( QEvent::Type type, const QPoint & pos, const QPoint & oldPos )
*/
HB_FUNC_STATIC( QHOVEREVENT_NEW )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) )
  {
    QHoverEvent * obj = new QHoverEvent( (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHOVEREVENT_DELETE )
{
  QHoverEvent * obj = (QHoverEvent *) Qt4xHb::itemGetPtrStackSelfItem();

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
const QPoint & pos() const
*/
HB_FUNC_STATIC( QHOVEREVENT_POS )
{
  QHoverEvent * obj = (QHoverEvent *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPoint * ptr = &obj->pos();
      Qt4xHb::createReturnClass( ptr, "QPOINT", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QPoint & oldPos() const
*/
HB_FUNC_STATIC( QHOVEREVENT_OLDPOS )
{
  QHoverEvent * obj = (QHoverEvent *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPoint * ptr = &obj->oldPos();
      Qt4xHb::createReturnClass( ptr, "QPOINT", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
