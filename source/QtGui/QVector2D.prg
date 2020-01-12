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
REQUEST QPOINTF
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QVector2D

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setX
   METHOD setY
   METHOD toPoint
   METHOD toPointF
   METHOD toVector3D
   METHOD toVector4D
   METHOD x
   METHOD y
   METHOD dotProduct

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVector2D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QVector2D>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtGui/QVector3D>
#include <QtGui/QVector4D>

/*
QVector2D ()
*/
void QVector2D_new1 ()
{
  QVector2D * o = new QVector2D ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QVector2D ( qreal xpos, qreal ypos )
*/
void QVector2D_new2 ()
{
  QVector2D * o = new QVector2D ( PQREAL(1), PQREAL(2) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QVector2D ( const QPoint & point )
*/
void QVector2D_new3 ()
{
  QVector2D * o = new QVector2D ( *PQPOINT(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QVector2D ( const QPointF & point )
*/
void QVector2D_new4 ()
{
  QVector2D * o = new QVector2D ( *PQPOINTF(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QVector2D ( const QVector3D & vector )
*/
void QVector2D_new5 ()
{
  QVector2D * o = new QVector2D ( *PQVECTOR3D(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QVector2D ( const QVector4D & vector )
*/
void QVector2D_new6 ()
{
  QVector2D * o = new QVector2D ( *PQVECTOR4D(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QVector2D ()
//[2]QVector2D ( qreal xpos, qreal ypos )
//[3]QVector2D ( const QPoint & point )
//[4]QVector2D ( const QPointF & point )
//[5]QVector2D ( const QVector3D & vector )
//[6]QVector2D ( const QVector4D & vector )

HB_FUNC_STATIC( QVECTOR2D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector2D_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVector2D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector2D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector2D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QVector2D_new5();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QVector2D_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVECTOR2D_DELETE )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isNull () const
*/
HB_FUNC_STATIC( QVECTOR2D_ISNULL )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull () );
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
qreal length () const
*/
HB_FUNC_STATIC( QVECTOR2D_LENGTH )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->length () );
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
qreal lengthSquared () const
*/
HB_FUNC_STATIC( QVECTOR2D_LENGTHSQUARED )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->lengthSquared () );
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
void normalize ()
*/
HB_FUNC_STATIC( QVECTOR2D_NORMALIZE )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->normalize ();
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
QVector2D normalized () const
*/
HB_FUNC_STATIC( QVECTOR2D_NORMALIZED )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector2D * ptr = new QVector2D( obj->normalized () );
      _qt4xhb_createReturnClass ( ptr, "QVECTOR2D", true );
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
void setX ( qreal x )
*/
HB_FUNC_STATIC( QVECTOR2D_SETX )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setX ( PQREAL(1) );
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
void setY ( qreal y )
*/
HB_FUNC_STATIC( QVECTOR2D_SETY )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setY ( PQREAL(1) );
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
QPoint toPoint () const
*/
HB_FUNC_STATIC( QVECTOR2D_TOPOINT )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->toPoint () );
      _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
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
QPointF toPointF () const
*/
HB_FUNC_STATIC( QVECTOR2D_TOPOINTF )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPointF * ptr = new QPointF( obj->toPointF () );
      _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
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
QVector3D toVector3D () const
*/
HB_FUNC_STATIC( QVECTOR2D_TOVECTOR3D )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->toVector3D () );
      _qt4xhb_createReturnClass ( ptr, "QVECTOR3D", true );
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
QVector4D toVector4D () const
*/
HB_FUNC_STATIC( QVECTOR2D_TOVECTOR4D )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector4D * ptr = new QVector4D( obj->toVector4D () );
      _qt4xhb_createReturnClass ( ptr, "QVECTOR4D", true );
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
qreal x () const
*/
HB_FUNC_STATIC( QVECTOR2D_X )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->x () );
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
qreal y () const
*/
HB_FUNC_STATIC( QVECTOR2D_Y )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->y () );
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
static qreal dotProduct ( const QVector2D & v1, const QVector2D & v2 )
*/
HB_FUNC_STATIC( QVECTOR2D_DOTPRODUCT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQVECTOR2D(1) && ISQVECTOR2D(2) )
  {
#endif
      RQREAL( QVector2D::dotProduct ( *PQVECTOR2D(1), *PQVECTOR2D(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QVECTOR2D_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QVECTOR2D_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVECTOR2D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR2D_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVECTOR2D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR2D_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVECTOR2D_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
