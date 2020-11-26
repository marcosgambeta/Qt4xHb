/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QDecorationDefault INHERIT QDecoration

   METHOD new
   METHOD delete
   METHOD paint
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDecorationDefault
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QDecorationDefault>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDecorationDefault()
*/
HB_FUNC_STATIC( QDECORATIONDEFAULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDecorationDefault * obj = new QDecorationDefault();
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECORATIONDEFAULT_DELETE )
{
  QDecorationDefault * obj = (QDecorationDefault *) Qt4xHb::itemGetPtrStackSelfItem();

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
virtual bool paint( QPainter * painter, const QWidget * widget, int decorationRegion = QDecoration::All, QDecoration::DecorationState state = QDecoration::Normal )
*/
HB_FUNC_STATIC( QDECORATIONDEFAULT_PAINT )
{
  QDecorationDefault * obj = (QDecorationDefault *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,4) && ISQPAINTER(1) && ISQWIDGET(2) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
#endif
      RBOOL( obj->paint( PQPAINTER(1), PQWIDGET(2), OPINT(3,QDecoration::All), ISNIL(4)? (QDecoration::DecorationState) QDecoration::Normal : (QDecoration::DecorationState) hb_parni(4) ) );
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
virtual QRegion region( const QWidget * widget, const QRect & rect, int decorationRegion = QDecoration::All )
*/
HB_FUNC_STATIC( QDECORATIONDEFAULT_REGION )
{
  QDecorationDefault * obj = (QDecorationDefault *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQWIDGET(1) && ISQRECT(2) && ISOPTNUM(3) )
    {
#endif
      QRegion * ptr = new QRegion( obj->region( PQWIDGET(1), *PQRECT(2), OPINT(3,QDecoration::All) ) );
      Qt4xHb::createReturnClass( ptr, "QREGION", true );
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
