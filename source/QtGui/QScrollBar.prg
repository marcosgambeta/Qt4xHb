/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QScrollBar INHERIT QAbstractSlider

   METHOD new
   METHOD delete
   METHOD event
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScrollBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QScrollBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QScrollBar ( QWidget * parent = 0 )
*/
void QScrollBar_new1()
{
  QScrollBar * obj = new QScrollBar( OPQWIDGET(1,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QScrollBar ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
void QScrollBar_new2()
{
  QScrollBar * obj = new QScrollBar( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QScrollBar ( QWidget * parent = 0 )
[2]QScrollBar ( Qt::Orientation orientation, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QSCROLLBAR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QScrollBar_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QScrollBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCROLLBAR_DELETE )
{
  QScrollBar * obj = (QScrollBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
virtual bool event ( QEvent * event )
*/
HB_FUNC_STATIC( QSCROLLBAR_EVENT )
{
  QScrollBar * obj = (QScrollBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
#endif
      RBOOL( obj->event( PQEVENT(1) ) );
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
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSCROLLBAR_SIZEHINT )
{
  QScrollBar * obj = (QScrollBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
