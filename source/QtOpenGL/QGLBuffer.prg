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

CLASS QGLBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD allocate
   METHOD bind
   METHOD bufferId
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD map
   METHOD read
   METHOD setUsagePattern
   METHOD size
   METHOD type
   METHOD unmap
   METHOD usagePattern
   METHOD release

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtOpenGL/QGLBuffer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLBuffer()
*/
void QGLBuffer_new1()
{
  QGLBuffer * obj = new QGLBuffer();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QGLBuffer( QGLBuffer::Type type )
*/
void QGLBuffer_new2()
{
  QGLBuffer * obj = new QGLBuffer( ( QGLBuffer::Type ) hb_parni( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QGLBuffer( const QGLBuffer & other )
*/
void QGLBuffer_new3()
{
  QGLBuffer * obj = new QGLBuffer( *PQGLBUFFER( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QGLBUFFER_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QGLBuffer_new1();
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    QGLBuffer_new2();
  }
  else if( ISNUMPAR( 1 ) && ISQGLBUFFER( 1 ) )
  {
    QGLBuffer_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLBUFFER_DELETE )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
void allocate( const void * data, int count )
*/
void QGLBuffer_allocate1()
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->allocate( static_cast< const void * >( hb_parptr( 1 ) ), PINT( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void allocate( int count )
*/
void QGLBuffer_allocate2()
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->allocate( PINT( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR( 2 ) && HB_ISPOINTER( 1 ) && HB_ISNUM( 2 ) )
  {
    QGLBuffer_allocate1();
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    QGLBuffer_allocate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool bind()
*/
HB_FUNC_STATIC( QGLBUFFER_BIND )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->bind() );
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
GLuint bufferId() const
*/
HB_FUNC_STATIC( QGLBUFFER_BUFFERID )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RGLUINT( obj->bufferId() );
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
bool create()
*/
HB_FUNC_STATIC( QGLBUFFER_CREATE )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->create() );
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
void destroy()
*/
HB_FUNC_STATIC( QGLBUFFER_DESTROY )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->destroy();
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
bool isCreated() const
*/
HB_FUNC_STATIC( QGLBUFFER_ISCREATED )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isCreated() );
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
void * map( QGLBuffer::Access access )
*/
HB_FUNC_STATIC( QGLBUFFER_MAP )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      hb_retptr( static_cast< void * >( obj->map( ( QGLBuffer::Access ) hb_parni( 1 ) ) ) );
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
bool read( int offset, void * data, int count )
*/
HB_FUNC_STATIC( QGLBUFFER_READ )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 3 ) && HB_ISNUM( 1 ) && HB_ISPOINTER( 2 ) && HB_ISNUM( 3 ) )
    {
#endif
      RBOOL( obj->read( PINT( 1 ), static_cast< void * >( hb_parptr( 2 ) ), PINT( 3 ) ) );
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
void setUsagePattern( QGLBuffer::UsagePattern value )
*/
HB_FUNC_STATIC( QGLBUFFER_SETUSAGEPATTERN )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setUsagePattern( ( QGLBuffer::UsagePattern ) hb_parni( 1 ) );
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
int size() const
*/
HB_FUNC_STATIC( QGLBUFFER_SIZE )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->size() );
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
QGLBuffer::Type type() const
*/
HB_FUNC_STATIC( QGLBUFFER_TYPE )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->type() );
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
bool unmap()
*/
HB_FUNC_STATIC( QGLBUFFER_UNMAP )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->unmap() );
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
QGLBuffer::UsagePattern usagePattern() const
*/
HB_FUNC_STATIC( QGLBUFFER_USAGEPATTERN )
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->usagePattern() );
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
void release()
*/
void QGLBuffer_release1()
{
  QGLBuffer * obj = static_cast< QGLBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->release();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void release( QGLBuffer::Type type )
*/
void QGLBuffer_release2()
{

  QGLBuffer::release( ( QGLBuffer::Type ) hb_parni( 1 ) );

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGLBUFFER_RELEASE )
{
  if( ISNUMPAR( 0 ) )
  {
    QGLBuffer_release1();
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    QGLBuffer_release2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLBUFFER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
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

HB_FUNC_STATIC( QGLBUFFER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QGLBUFFER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QGLBUFFER_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLBUFFER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
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
