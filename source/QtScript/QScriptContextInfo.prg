/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QScriptContextInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD functionEndLineNumber
   METHOD functionMetaIndex
   METHOD functionName
   METHOD functionParameterNames
   METHOD functionStartLineNumber
   METHOD functionType
   METHOD isNull
   METHOD lineNumber
   METHOD scriptId

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScriptContextInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtScript/QScriptContextInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScriptContextInfo( const QScriptContext * context )
*/
void QScriptContextInfo_new1()
{
  QScriptContextInfo * obj = new QScriptContextInfo( PQSCRIPTCONTEXT( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QScriptContextInfo( const QScriptContextInfo & other )
*/
void QScriptContextInfo_new2()
{
  QScriptContextInfo * obj = new QScriptContextInfo( *PQSCRIPTCONTEXTINFO( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QScriptContextInfo()
*/
void QScriptContextInfo_new3()
{
  QScriptContextInfo * obj = new QScriptContextInfo();
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR( 1 ) && ISQSCRIPTCONTEXT( 1 ) )
  {
    QScriptContextInfo_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQSCRIPTCONTEXTINFO( 1 ) )
  {
    QScriptContextInfo_new2();
  }
  else if( ISNUMPAR( 0 ) )
  {
    QScriptContextInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_DELETE )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

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
QString fileName() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FILENAME )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->fileName() );
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
int functionEndLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONENDLINENUMBER )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->functionEndLineNumber() );
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
int functionMetaIndex() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONMETAINDEX )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->functionMetaIndex() );
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
QString functionName() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONNAME )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->functionName() );
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
QStringList functionParameterNames() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONPARAMETERNAMES )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRINGLIST( obj->functionParameterNames() );
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
int functionStartLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONSTARTLINENUMBER )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->functionStartLineNumber() );
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
QScriptContextInfo::FunctionType functionType() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONTYPE )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->functionType() );
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
bool isNull() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_ISNULL )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isNull() );
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
int lineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_LINENUMBER )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->lineNumber() );
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
qint64 scriptId() const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_SCRIPTID )
{
  QScriptContextInfo * obj = ( QScriptContextInfo * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQINT64( obj->scriptId() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, ( void * ) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, ( void * ) hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) );
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

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl( 1 ) );
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
