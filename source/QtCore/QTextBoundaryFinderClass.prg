/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTextBoundaryFinder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD type
   METHOD string
   METHOD toStart
   METHOD toEnd
   METHOD position
   METHOD setPosition
   METHOD toNextBoundary
   METHOD toPreviousBoundary
   METHOD isAtBoundary
   METHOD boundaryReasons
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBoundaryFinder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextBoundaryFinder>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextBoundaryFinder()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW1 )
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextBoundaryFinder(const QTextBoundaryFinder &other)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW2 )
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( *PQTEXTBOUNDARYFINDER(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextBoundaryFinder(BoundaryType type, const QString &string)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW3 )
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( (QTextBoundaryFinder::BoundaryType) hb_parni(1), PQSTRING(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW4 )
{
  const QChar * par2 = (const QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  unsigned char * par4 = ISNIL(4)? 0 : (unsigned char *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( (QTextBoundaryFinder::BoundaryType) hb_parni(1), par2, PINT(3), par4, OPINT(5,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QTextBoundaryFinder()
//[2]QTextBoundaryFinder(const QTextBoundaryFinder &other)
//[3]QTextBoundaryFinder(BoundaryType type, const QString &string)
//[4]QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBOUNDARYFINDER(1) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW3 );
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISQCHAR(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_DELETE )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_ISVALID )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
BoundaryType type() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TYPE )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}

/*
QString string() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_STRING )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->string () );
  }
}

/*
void toStart()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOSTART )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toStart ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toEnd()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOEND )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toEnd ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int position() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_POSITION )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->position () );
  }
}

/*
void setPosition(int position)
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SETPOSITION )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPosition ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int toNextBoundary()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TONEXTBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->toNextBoundary () );
  }
}

/*
int toPreviousBoundary()
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TOPREVIOUSBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->toPreviousBoundary () );
  }
}

/*
bool isAtBoundary() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_ISATBOUNDARY )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAtBoundary () );
  }
}

/*
BoundaryReasons boundaryReasons() const
*/
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_BOUNDARYREASONS )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->boundaryReasons () );
  }
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTBOUNDARYFINDER_NEWFROM );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
