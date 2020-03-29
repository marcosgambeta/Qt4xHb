/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QUNDOGROUP
REQUEST QUNDOSTACK
#endif

CLASS QUndoView INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD cleanIcon
   METHOD emptyLabel
   METHOD group
   METHOD setCleanIcon
   METHOD setEmptyLabel
   METHOD stack
   METHOD setGroup
   METHOD setStack

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUndoView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QUndoView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtGui/QUndoGroup>
#include <QtGui/QUndoStack>

/*
QUndoView ( QWidget * parent = 0 )
*/
void QUndoView_new1()
{
  QUndoView * o = new QUndoView( OPQWIDGET(1,0) );
  Qt4xHb::_qt4xhb_returnNewObject( o, false );
}

/*
QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
*/
void QUndoView_new2()
{
  QUndoView * o = new QUndoView( PQUNDOSTACK(1), OPQWIDGET(2,0) );
  Qt4xHb::_qt4xhb_returnNewObject( o, false );
}

/*
QUndoView ( QUndoGroup * group, QWidget * parent = 0 )
*/
void QUndoView_new3()
{
  QUndoView * o = new QUndoView( PQUNDOGROUP(1), OPQWIDGET(2,0) );
  Qt4xHb::_qt4xhb_returnNewObject( o, false );
}

//[1]QUndoView ( QWidget * parent = 0 )
//[2]QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
//[3]QUndoView ( QUndoGroup * group, QWidget * parent = 0 )

HB_FUNC_STATIC( QUNDOVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QUndoView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOSTACK(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QUndoView_new2();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOGROUP(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QUndoView_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUNDOVIEW_DELETE )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
QIcon cleanIcon () const
*/
HB_FUNC_STATIC( QUNDOVIEW_CLEANICON )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QIcon * ptr = new QIcon( obj->cleanIcon() );
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QICON", true );
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
QString emptyLabel () const
*/
HB_FUNC_STATIC( QUNDOVIEW_EMPTYLABEL )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->emptyLabel() );
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
QUndoGroup * group () const
*/
HB_FUNC_STATIC( QUNDOVIEW_GROUP )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUndoGroup * ptr = obj->group();
      Qt4xHb::_qt4xhb_createReturnQObjectClass( ptr, "QUNDOGROUP" );
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
void setCleanIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETCLEANICON )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQICON(1)||ISCHAR(1)) )
    {
#endif
      obj->setCleanIcon( ISOBJECT(1)? *(QIcon *) Qt4xHb::_qt4xhb_itemGetPtr(1) : QIcon(hb_parc(1)) );
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
void setEmptyLabel ( const QString & label )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETEMPTYLABEL )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setEmptyLabel( PQSTRING(1) );
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
QUndoStack * stack () const
*/
HB_FUNC_STATIC( QUNDOVIEW_STACK )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUndoStack * ptr = obj->stack();
      Qt4xHb::_qt4xhb_createReturnQObjectClass( ptr, "QUNDOSTACK" );
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
void setGroup ( QUndoGroup * group )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETGROUP )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQUNDOGROUP(1) )
    {
#endif
      obj->setGroup( PQUNDOGROUP(1) );
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
void setStack ( QUndoStack * stack )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETSTACK )
{
  QUndoView * obj = (QUndoView *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQUNDOSTACK(1) )
    {
#endif
      obj->setStack( PQUNDOSTACK(1) );
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
