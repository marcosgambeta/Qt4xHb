/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QWidgetAction INHERIT QAction

   METHOD new
   METHOD delete
   METHOD defaultWidget
   METHOD releaseWidget
   METHOD requestWidget
   METHOD setDefaultWidget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWidgetAction
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QWidgetAction>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QWidgetAction( QObject * parent )
*/
HB_FUNC_STATIC( QWIDGETACTION_NEW )
{
  if( ISNUMPAR( 1 ) && ISQOBJECT( 1 ) )
  {
    QWidgetAction * obj = new QWidgetAction( PQOBJECT( 1 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWIDGETACTION_DELETE )
{
  QWidgetAction * obj = qobject_cast< QWidgetAction * >( Qt4xHb::getQObjectPointerFromSelfItem() );

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
QWidget * defaultWidget() const
*/
HB_FUNC_STATIC( QWIDGETACTION_DEFAULTWIDGET )
{
  QWidgetAction * obj = qobject_cast< QWidgetAction * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QWidget * ptr = obj->defaultWidget();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void releaseWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QWIDGETACTION_RELEASEWIDGET )
{
  QWidgetAction * obj = qobject_cast< QWidgetAction * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
    {
#endif
      obj->releaseWidget( PQWIDGET( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * requestWidget( QWidget * parent )
*/
HB_FUNC_STATIC( QWIDGETACTION_REQUESTWIDGET )
{
  QWidgetAction * obj = qobject_cast< QWidgetAction * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
    {
#endif
      QWidget * ptr = obj->requestWidget( PQWIDGET( 1 ) );
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void setDefaultWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QWIDGETACTION_SETDEFAULTWIDGET )
{
  QWidgetAction * obj = qobject_cast< QWidgetAction * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQWIDGET( 1 ) )
    {
#endif
      obj->setDefaultWidget( PQWIDGET( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
