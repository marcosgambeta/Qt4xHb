/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QRECT
REQUEST QVARIANT
#endif

CLASS QAccessibleInterface INHERIT QAccessible

   METHOD delete
   METHOD actionText
   METHOD childAt
   METHOD childCount
   METHOD doAction
   METHOD indexOfChild
   METHOD invokeMethod
   METHOD isValid
   METHOD object
   METHOD rect
   METHOD relationTo
   METHOD role
   METHOD setText
   METHOD state
   METHOD text
   METHOD userActionCount

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAccessibleInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QACCESSIBLEINTERFACE_DELETE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QString actionText ( int action, Text t, int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ACTIONTEXT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      RQSTRING( obj->actionText ( PINT(1), (QAccessible::Text) hb_parni(2), PINT(3) ) );
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
virtual int childAt ( int x, int y ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILDAT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      RINT( obj->childAt ( PINT(1), PINT(2) ) );
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
virtual int childCount () const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILDCOUNT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->childCount () );
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
virtual bool doAction ( int action, int child, const QVariantList & params = QVariantList() ) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_DOACTION )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISARRAY(3)||ISNIL(3)) )
    {
#endif
      QVariantList par3;
if( ISARRAY(3) )
{
  PHB_ITEM aList3 = hb_param(3, HB_IT_ARRAY);
  int i3;
  int nLen3 = hb_arrayLen(aList3);
  for (i3=0;i3<nLen3;i3++)
  {
    par3 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList3, i3+1 ), "POINTER", 0 ) );
  }
}
      RBOOL( obj->doAction ( PINT(1), PINT(2), par3 ) );
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
virtual int indexOfChild ( const QAccessibleInterface * child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_INDEXOFCHILD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACCESSIBLEINTERFACE(1) )
    {
#endif
      RINT( obj->indexOfChild ( PQACCESSIBLEINTERFACE(1) ) );
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
QVariant invokeMethod ( Method method, int child = 0, const QVariantList & params = QVariantList() )
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_INVOKEMETHOD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && (ISARRAY(3)||ISNIL(3)) )
    {
#endif
      QVariantList par3;
if( ISARRAY(3) )
{
  PHB_ITEM aList3 = hb_param(3, HB_IT_ARRAY);
  int i3;
  int nLen3 = hb_arrayLen(aList3);
  for (i3=0;i3<nLen3;i3++)
  {
    par3 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList3, i3+1 ), "POINTER", 0 ) );
  }
}
      QVariant * ptr = new QVariant( obj->invokeMethod ( (QAccessible::Method) hb_parni(1), OPINT(2,0), par3 ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
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
virtual bool isValid () const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ISVALID )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
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
virtual QObject * object () const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_OBJECT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->object ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
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
virtual QRect rect ( int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_RECT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QRect * ptr = new QRect( obj->rect ( PINT(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
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
virtual Relation relationTo ( int child, const QAccessibleInterface * other, int otherChild ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_RELATIONTO )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISQACCESSIBLEINTERFACE(2) && ISNUM(3) )
    {
#endif
      RENUM( obj->relationTo ( PINT(1), PQACCESSIBLEINTERFACE(2), PINT(3) ) );
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
virtual Role role ( int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ROLE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RENUM( obj->role ( PINT(1) ) );
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
virtual void setText ( Text t, int child, const QString & text ) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_SETTEXT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
    {
#endif
      obj->setText ( (QAccessible::Text) hb_parni(1), PINT(2), PQSTRING(3) );
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
virtual State state ( int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_STATE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RENUM( obj->state ( PINT(1) ) );
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
virtual QString text ( Text t, int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TEXT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      RQSTRING( obj->text ( (QAccessible::Text) hb_parni(1), PINT(2) ) );
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
virtual int userActionCount ( int child ) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_USERACTIONCOUNT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->userActionCount ( PINT(1) ) );
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
