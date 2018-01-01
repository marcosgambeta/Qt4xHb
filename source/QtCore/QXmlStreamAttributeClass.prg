/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttribute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isDefault
   METHOD name
   METHOD namespaceUri
   METHOD prefix
   METHOD qualifiedName
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlStreamAttribute
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlStreamAttribute>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamAttribute()
*/
void QXmlStreamAttribute_new1 ()
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ();
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
*/
void QXmlStreamAttribute_new2 ()
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( PQSTRING(1), PQSTRING(2) );
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
*/
void QXmlStreamAttribute_new3 ()
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamAttribute(const QXmlStreamAttribute & other)
*/
void QXmlStreamAttribute_new4 ()
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( *PQXMLSTREAMATTRIBUTE(1) );
  _qt4xhb_storePointerAndFlag( o, true );
}

//[1]QXmlStreamAttribute()
//[2]QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
//[3]QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
//[4]QXmlStreamAttribute(const QXmlStreamAttribute & other)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamAttribute_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttribute_new2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QXmlStreamAttribute_new3();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    QXmlStreamAttribute_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_DELETE )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isDefault() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_ISDEFAULT )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isDefault () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NAME )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QStringRef * ptr = new QStringRef( obj->name () );
      _qt4xhb_createReturnClass ( ptr, "QSTRINGREF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NAMESPACEURI )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QStringRef * ptr = new QStringRef( obj->namespaceUri () );
      _qt4xhb_createReturnClass ( ptr, "QSTRINGREF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringRef prefix() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_PREFIX )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QStringRef * ptr = new QStringRef( obj->prefix () );
      _qt4xhb_createReturnClass ( ptr, "QSTRINGREF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringRef qualifiedName() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_QUALIFIEDNAME )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QStringRef * ptr = new QStringRef( obj->qualifiedName () );
      _qt4xhb_createReturnClass ( ptr, "QSTRINGREF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringRef value() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_VALUE )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QStringRef * ptr = new QStringRef( obj->value () );
      _qt4xhb_createReturnClass ( ptr, "QSTRINGREF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEWFROM )
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

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSTREAMATTRIBUTE_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSTREAMATTRIBUTE_NEWFROM );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_SETSELFDESTRUCTION )
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
