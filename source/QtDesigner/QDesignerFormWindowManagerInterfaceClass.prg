/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QDESIGNERFORMWINDOWINTERFACE
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerFormWindowManagerInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actionAdjustSize
   METHOD actionBreakLayout
   METHOD actionCopy
   METHOD actionCut
   METHOD actionDelete
   METHOD actionFormLayout
   METHOD actionGridLayout
   METHOD actionHorizontalLayout
   METHOD actionLower
   METHOD actionPaste
   METHOD actionRaise
   METHOD actionRedo
   METHOD actionSelectAll
   METHOD actionSimplifyLayout
   METHOD actionSplitHorizontal
   METHOD actionSplitVertical
   METHOD actionUndo
   METHOD actionVerticalLayout
   METHOD activeFormWindow
   METHOD core
   METHOD createFormWindow
   METHOD formWindow
   METHOD formWindowCount
   METHOD addFormWindow
   METHOD removeFormWindow
   METHOD setActiveFormWindow

   METHOD onActiveFormWindowChanged
   METHOD onFormWindowAdded
   METHOD onFormWindowRemoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerFormWindowManagerInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDesignerFormWindowManagerInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QAction>
#include <QDesignerFormEditorInterface>

HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_DELETE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QAction * actionAdjustSize () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONADJUSTSIZE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionAdjustSize ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionBreakLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONBREAKLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionBreakLayout ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionCopy () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONCOPY )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionCopy ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionCut () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONCUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionCut ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionDelete () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONDELETE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionDelete ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * actionFormLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONFORMLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionFormLayout ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionGridLayout () const
*/

/*
virtual QAction * actionHorizontalLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONHORIZONTALLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionHorizontalLayout ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionLower () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONLOWER )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionLower ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionPaste () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONPASTE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionPaste ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionRaise () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONRAISE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionRaise ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionRedo () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONREDO )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionRedo ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionSelectAll () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSELECTALL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionSelectAll ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * actionSimplifyLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSIMPLIFYLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionSimplifyLayout ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionSplitHorizontal () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSPLITHORIZONTAL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionSplitHorizontal ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionSplitVertical () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONSPLITVERTICAL )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionSplitVertical ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionUndo () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONUNDO )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionUndo ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QAction * actionVerticalLayout () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIONVERTICALLAYOUT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAction * ptr = obj->actionVerticalLayout ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QDesignerFormWindowInterface * activeFormWindow () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ACTIVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDesignerFormWindowInterface * ptr = obj->activeFormWindow ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_CORE )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDesignerFormEditorInterface * ptr = obj->core ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_CREATEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
    {
      QDesignerFormWindowInterface * ptr = obj->createFormWindow ( OPQWIDGET(1,0), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QDesignerFormWindowInterface * formWindow ( int index ) const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_FORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QDesignerFormWindowInterface * ptr = obj->formWindow ( PINT(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int formWindowCount () const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_FORMWINDOWCOUNT )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->formWindowCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ADDFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      obj->addFormWindow ( PQDESIGNERFORMWINDOWINTERFACE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_REMOVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      obj->removeFormWindow ( PQDESIGNERFORMWINDOWINTERFACE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWMANAGERINTERFACE_SETACTIVEFORMWINDOW )
{
  QDesignerFormWindowManagerInterface * obj = (QDesignerFormWindowManagerInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      obj->setActiveFormWindow ( PQDESIGNERFORMWINDOWINTERFACE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
