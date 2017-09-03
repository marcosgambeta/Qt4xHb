$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
#endif

CLASS QTextLine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD cursorToX1
   METHOD cursorToX2
   METHOD cursorToX
   METHOD descent
   METHOD height
   METHOD horizontalAdvance
   METHOD isValid
   METHOD leading
   METHOD leadingIncluded
   METHOD lineNumber
   METHOD naturalTextRect
   METHOD naturalTextWidth
   METHOD position
   METHOD rect
   METHOD setLeadingIncluded
   METHOD setLineWidth
   METHOD setNumColumns1
   METHOD setNumColumns2
   METHOD setNumColumns
   METHOD setPosition
   METHOD textLength
   METHOD textStart
   METHOD width
   METHOD x
   METHOD xToCursor
   METHOD y

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextLine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextLine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextLine ()
*/
HB_FUNC_STATIC( QTEXTLINE_NEW )
{
  QTextLine * o = new QTextLine ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTEXTLINE_DELETE )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qreal ascent () const
*/
HB_FUNC_STATIC( QTEXTLINE_ASCENT )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}

/*
qreal cursorToX ( int * cursorPos, Edge edge = Leading ) const
*/
HB_FUNC_STATIC( QTEXTLINE_CURSORTOX1 )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2 = ISNIL(2)? (int) QTextLine::Leading : hb_parni(2);
    RQREAL( obj->cursorToX ( &par1, (QTextLine::Edge) par2 ) );
    hb_storni( par1, 1 );
  }
}

/*
qreal cursorToX ( int cursorPos, Edge edge = Leading ) const
*/
HB_FUNC_STATIC( QTEXTLINE_CURSORTOX2 )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextLine::Leading : hb_parni(2);
    RQREAL( obj->cursorToX ( PINT(1), (QTextLine::Edge) par2 ) );
  }
}

//[1]qreal cursorToX ( int * cursorPos, Edge edge = Leading ) const
//[2]qreal cursorToX ( int cursorPos, Edge edge = Leading ) const

// TODO: resolver conflito

HB_FUNC_STATIC( QTEXTLINE_CURSORTOX )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTLINE_CURSORTOX1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTLINE_CURSORTOX2 );
  }
}

/*
qreal descent () const
*/
HB_FUNC_STATIC( QTEXTLINE_DESCENT )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}

/*
qreal height () const
*/
HB_FUNC_STATIC( QTEXTLINE_HEIGHT )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->height () );
  }
}

/*
qreal horizontalAdvance () const
*/
HB_FUNC_STATIC( QTEXTLINE_HORIZONTALADVANCE )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->horizontalAdvance () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTLINE_ISVALID )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
qreal leading () const
*/
HB_FUNC_STATIC( QTEXTLINE_LEADING )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->leading () );
  }
}

/*
bool leadingIncluded () const
*/
HB_FUNC_STATIC( QTEXTLINE_LEADINGINCLUDED )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->leadingIncluded () );
  }
}

/*
int lineNumber () const
*/
HB_FUNC_STATIC( QTEXTLINE_LINENUMBER )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineNumber () );
  }
}

/*
QRectF naturalTextRect () const
*/
HB_FUNC_STATIC( QTEXTLINE_NATURALTEXTRECT )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->naturalTextRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
qreal naturalTextWidth () const
*/
HB_FUNC_STATIC( QTEXTLINE_NATURALTEXTWIDTH )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->naturalTextWidth () );
  }
}

/*
QPointF position () const
*/
HB_FUNC_STATIC( QTEXTLINE_POSITION )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QRectF rect () const
*/
HB_FUNC_STATIC( QTEXTLINE_RECT )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setLeadingIncluded ( bool included )
*/
HB_FUNC_STATIC( QTEXTLINE_SETLEADINGINCLUDED )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLeadingIncluded ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLineWidth ( qreal width )
*/
HB_FUNC_STATIC( QTEXTLINE_SETLINEWIDTH )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLineWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNumColumns ( int numColumns )
*/
HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS1 )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNumColumns ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNumColumns ( int numColumns, qreal alignmentWidth )
*/
HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS2 )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNumColumns ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setNumColumns ( int numColumns )
//[2]void setNumColumns ( int numColumns, qreal alignmentWidth )

HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTLINE_SETNUMCOLUMNS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTLINE_SETNUMCOLUMNS2 );
  }
}

/*
void setPosition ( const QPointF & pos )
*/
HB_FUNC_STATIC( QTEXTLINE_SETPOSITION )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPosition ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int textLength () const
*/
HB_FUNC_STATIC( QTEXTLINE_TEXTLENGTH )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->textLength () );
  }
}

/*
int textStart () const
*/
HB_FUNC_STATIC( QTEXTLINE_TEXTSTART )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->textStart () );
  }
}

/*
qreal width () const
*/
HB_FUNC_STATIC( QTEXTLINE_WIDTH )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->width () );
  }
}

/*
qreal x () const
*/
HB_FUNC_STATIC( QTEXTLINE_X )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->x () );
  }
}

/*
int xToCursor ( qreal x, CursorPosition cpos = CursorBetweenCharacters ) const
*/
HB_FUNC_STATIC( QTEXTLINE_XTOCURSOR )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextLine::CursorBetweenCharacters : hb_parni(2);
    RINT( obj->xToCursor ( PQREAL(1), (QTextLine::CursorPosition) par2 ) );
  }
}

/*
qreal y () const
*/
HB_FUNC_STATIC( QTEXTLINE_Y )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->y () );
  }
}

HB_FUNC_STATIC( QTEXTLINE_NEWFROM )
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

HB_FUNC_STATIC( QTEXTLINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTLINE_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTLINE_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTLINE_SETSELFDESTRUCTION )
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