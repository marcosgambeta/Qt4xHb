$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
REQUEST QPAINTERPATH
REQUEST QPOLYGONF
#endif

CLASS QPainterPath

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD addEllipse1
   METHOD addEllipse2
   METHOD addEllipse3
   METHOD addEllipse
   METHOD addPath
   METHOD addPolygon
   METHOD addRect1
   METHOD addRect2
   METHOD addRect
   METHOD addRegion
   METHOD addRoundedRect1
   METHOD addRoundedRect2
   METHOD addRoundedRect
   METHOD addText1
   METHOD addText2
   METHOD addText
   METHOD angleAtPercent
   METHOD arcMoveTo1
   METHOD arcMoveTo2
   METHOD arcMoveTo
   METHOD arcTo1
   METHOD arcTo2
   METHOD arcTo
   METHOD boundingRect
   METHOD closeSubpath
   METHOD connectPath
   METHOD contains1
   METHOD contains2
   METHOD contains3
   METHOD contains
   METHOD controlPointRect
   METHOD cubicTo1
   METHOD cubicTo2
   METHOD cubicTo
   METHOD currentPosition
   METHOD elementCount
   METHOD fillRule
   METHOD intersected
   METHOD intersects1
   METHOD intersects2
   METHOD intersects
   METHOD isEmpty
   METHOD length
   METHOD lineTo1
   METHOD lineTo2
   METHOD lineTo
   METHOD moveTo1
   METHOD moveTo2
   METHOD moveTo
   METHOD percentAtLength
   METHOD pointAtPercent
   METHOD quadTo1
   METHOD quadTo2
   METHOD quadTo
   METHOD setElementPositionAt
   METHOD setFillRule
   METHOD simplified
   METHOD slopeAtPercent
   METHOD subtracted
   METHOD swap
   METHOD toFillPolygon1
   METHOD toFillPolygon
   METHOD toFillPolygons1
   METHOD toFillPolygons
   METHOD toReversed
   METHOD toSubpathPolygons1
   METHOD toSubpathPolygons
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD united

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPainterPath>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPainterPath ()
*/
$constructor=|new1|

/*
QPainterPath ( const QPointF & startPoint )
*/
$constructor=|new2|const QPointF &

/*
QPainterPath ( const QPainterPath & path )
*/
$constructor=|new3|const QPainterPath &

//[1]QPainterPath ()
//[2]QPainterPath ( const QPointF & startPoint )
//[3]QPainterPath ( const QPainterPath & path )

HB_FUNC_STATIC( QPAINTERPATH_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addEllipse ( const QRectF & boundingRectangle )
*/
$method=|void|addEllipse,addEllipse1|const QRectF &

/*
void addEllipse ( qreal x, qreal y, qreal width, qreal height )
*/
$method=|void|addEllipse,addEllipse2|qreal,qreal,qreal,qreal

/*
void addEllipse ( const QPointF & center, qreal rx, qreal ry )
*/
$method=|void|addEllipse,addEllipse3|const QPointF &,qreal,qreal

//[1]void addEllipse ( const QRectF & boundingRectangle )
//[2]void addEllipse ( qreal x, qreal y, qreal width, qreal height )
//[3]void addEllipse ( const QPointF & center, qreal rx, qreal ry )

HB_FUNC_STATIC( QPAINTERPATH_ADDELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDELLIPSE1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDELLIPSE2 );
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDELLIPSE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addPath ( const QPainterPath & path )
*/
$method=|void|addPath|const QPainterPath &

/*
void addPolygon ( const QPolygonF & polygon )
*/
$method=|void|addPolygon|const QPolygonF &

/*
void addRect ( const QRectF & rectangle )
*/
$method=|void|addRect,addRect1|const QRectF &

/*
void addRect ( qreal x, qreal y, qreal width, qreal height )
*/
$method=|void|addRect,addRect2|qreal,qreal,qreal,qreal

//[1]void addRect ( const QRectF & rectangle )
//[2]void addRect ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QPAINTERPATH_ADDRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDRECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addRegion ( const QRegion & region )
*/
$method=|void|addRegion|const QRegion &

/*
void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
$method=|void|addRoundedRect,addRoundedRect1|const QRectF &,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

/*
void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
$method=|void|addRoundedRect,addRoundedRect2|qreal,qreal,qreal,qreal,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

//[1]void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[2]void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )

HB_FUNC_STATIC( QPAINTERPATH_ADDROUNDEDRECT )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDROUNDEDRECT1 );
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISNUM(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDROUNDEDRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addText ( const QPointF & point, const QFont & font, const QString & text )
*/
$method=|void|addText,addText1|const QPointF &,const QFont &,const QString &

/*
void addText ( qreal x, qreal y, const QFont & font, const QString & text )
*/
$method=|void|addText,addText2|qreal,qreal,const QFont &,const QString &

//[1]void addText ( const QPointF & point, const QFont & font, const QString & text )
//[2]void addText ( qreal x, qreal y, const QFont & font, const QString & text )

HB_FUNC_STATIC( QPAINTERPATH_ADDTEXT )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQFONT(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDTEXT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISQFONT(3) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDTEXT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal angleAtPercent ( qreal t ) const
*/
$method=|qreal|angleAtPercent|qreal

/*
void arcMoveTo ( const QRectF & rectangle, qreal angle )
*/
$method=|void|arcMoveTo,arcMoveTo1|const QRectF &,qreal

/*
void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )
*/
$method=|void|arcMoveTo,arcMoveTo2|qreal,qreal,qreal,qreal,qreal

//[1]void arcMoveTo ( const QRectF & rectangle, qreal angle )
//[2]void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )

HB_FUNC_STATIC( QPAINTERPATH_ARCMOVETO )
{
  if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ARCMOVETO1 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ARCMOVETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
*/
$method=|void|arcTo,arcTo1|const QRectF &,qreal,qreal

/*
void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )
*/
$method=|void|arcTo,arcTo2|qreal,qreal,qreal,qreal,qreal,qreal

//[1]void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
//[2]void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )

HB_FUNC_STATIC( QPAINTERPATH_ARCTO )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ARCTO1 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ARCTO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF boundingRect () const
*/
$method=|QRectF|boundingRect|

/*
void closeSubpath ()
*/
$method=|void|closeSubpath|

/*
void connectPath ( const QPainterPath & path )
*/
$method=|void|connectPath|const QPainterPath &

/*
bool contains ( const QPointF & point ) const
*/
$method=|bool|contains,contains1|const QPointF &

/*
bool contains ( const QRectF & rectangle ) const
*/
$method=|bool|contains,contains2|const QRectF &

/*
bool contains ( const QPainterPath & p ) const
*/
$method=|bool|contains,contains3|const QPainterPath &

//[1]bool contains ( const QPointF & point ) const
//[2]bool contains ( const QRectF & rectangle ) const
//[3]bool contains ( const QPainterPath & p ) const

HB_FUNC_STATIC( QPAINTERPATH_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CONTAINS1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CONTAINS2 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CONTAINS3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF controlPointRect () const
*/
$method=|QRectF|controlPointRect|

/*
void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
*/
$method=|void|cubicTo,cubicTo1|const QPointF &,const QPointF &,const QPointF &

/*
void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )
*/
$method=|void|cubicTo,cubicTo2|qreal,qreal,qreal,qreal,qreal,qreal

//[1]void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
//[2]void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )

HB_FUNC_STATIC( QPAINTERPATH_CUBICTO )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CUBICTO1 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CUBICTO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF currentPosition () const
*/
$method=|QPointF|currentPosition|

/*
int elementCount () const
*/
$method=|int|elementCount|

/*
Qt::FillRule fillRule () const
*/
$method=|Qt::FillRule|fillRule|

/*
QPainterPath intersected ( const QPainterPath & p ) const
*/
$method=|QPainterPath|intersected|const QPainterPath &

/*
bool intersects ( const QRectF & rectangle ) const
*/
$method=|bool|intersects,intersects1|const QRectF &

/*
bool intersects ( const QPainterPath & p ) const
*/
$method=|bool|intersects,intersects2|const QPainterPath &

//[1]bool intersects ( const QRectF & rectangle ) const
//[2]bool intersects ( const QPainterPath & p ) const

HB_FUNC_STATIC( QPAINTERPATH_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_INTERSECTS1 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_INTERSECTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
qreal length () const
*/
$method=|qreal|length|

/*
void lineTo ( const QPointF & endPoint )
*/
$method=|void|lineTo,lineTo1|const QPointF &

/*
void lineTo ( qreal x, qreal y )
*/
$method=|void|lineTo,lineTo2|qreal,qreal

//[1]void lineTo ( const QPointF & endPoint )
//[2]void lineTo ( qreal x, qreal y )

HB_FUNC_STATIC( QPAINTERPATH_LINETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_LINETO1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_LINETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTo ( const QPointF & point )
*/
$method=|void|moveTo,moveTo1|const QPointF &

/*
void moveTo ( qreal x, qreal y )
*/
$method=|void|moveTo,moveTo2|qreal,qreal

//[1]void moveTo ( const QPointF & point )
//[2]void moveTo ( qreal x, qreal y )

HB_FUNC_STATIC( QPAINTERPATH_MOVETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_MOVETO1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_MOVETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal percentAtLength ( qreal len ) const
*/
$method=|qreal|percentAtLength|qreal

/*
QPointF pointAtPercent ( qreal t ) const
*/
$method=|QPointF|pointAtPercent|qreal

/*
void quadTo ( const QPointF & c, const QPointF & endPoint )
*/
$method=|void|quadTo,quadTo1|const QPointF &,const QPointF &

/*
void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )
*/
$method=|void|quadTo,quadTo2|qreal,qreal,qreal,qreal

//[1]void quadTo ( const QPointF & c, const QPointF & endPoint )
//[2]void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )

HB_FUNC_STATIC( QPAINTERPATH_QUADTO )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_QUADTO1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_QUADTO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setElementPositionAt ( int index, qreal x, qreal y )
*/
$method=|void|setElementPositionAt|int,qreal,qreal

/*
void setFillRule ( Qt::FillRule fillRule )
*/
$method=|void|setFillRule|Qt::FillRule

/*
QPainterPath simplified () const
*/
$method=|QPainterPath|simplified|

/*
qreal slopeAtPercent ( qreal t ) const
*/
$method=|qreal|slopeAtPercent|qreal

/*
QPainterPath subtracted ( const QPainterPath & p ) const
*/
$method=|QPainterPath|subtracted|const QPainterPath &

/*
void swap ( QPainterPath & other )
*/
$method=|void|swap|QPainterPath &

/*
QPolygonF toFillPolygon ( const QTransform & matrix ) const
*/
$method=|QPolygonF|toFillPolygon,toFillPolygon1|const QTransform &

/*
QPolygonF toFillPolygon ( const QMatrix & matrix = QMatrix() ) const
*/
$method=|QPolygonF|toFillPolygon,toFillPolygon2|const QMatrix &=QMatrix()

//[1]QPolygonF toFillPolygon ( const QTransform & matrix ) const
//[2]QPolygonF toFillPolygon ( const QMatrix & matrix = QMatrix() ) const

HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGON )
{
  if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TOFILLPOLYGON1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QPolygonF> toFillPolygons ( const QTransform & matrix ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGONS1 )
{
  QPainterPath * obj = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QPolygonF> list = obj->toFillPolygons ( *PQTRANSFORM(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPOLYGONF" );
    #else
    pDynSym = hb_dynsymFindName( "QPOLYGONF" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QPolygonF *) new QPolygonF ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

//[1]QList<QPolygonF> toFillPolygons ( const QTransform & matrix ) const
//[2]QList<QPolygonF> toFillPolygons ( const QMatrix & matrix = QMatrix() ) const

HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGONS )
{
  if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TOFILLPOLYGONS1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath toReversed () const
*/
$method=|QPainterPath|toReversed|

/*
QList<QPolygonF> toSubpathPolygons ( const QTransform & matrix ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_TOSUBPATHPOLYGONS1 )
{
  QPainterPath * obj = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QPolygonF> list = obj->toSubpathPolygons ( *PQTRANSFORM(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPOLYGONF" );
    #else
    pDynSym = hb_dynsymFindName( "QPOLYGONF" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QPolygonF *) new QPolygonF ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

//[1]QList<QPolygonF> toSubpathPolygons ( const QTransform & matrix ) const
//[2]QList<QPolygonF> toSubpathPolygons ( const QMatrix & matrix = QMatrix() ) const

HB_FUNC_STATIC( QPAINTERPATH_TOSUBPATHPOLYGONS )
{
  if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TOSUBPATHPOLYGONS1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void translate ( qreal dx, qreal dy )
*/
$method=|void|translate,translate1|qreal,qreal

/*
void translate ( const QPointF & offset )
*/
$method=|void|translate,translate2|const QPointF &

//[1]void translate ( qreal dx, qreal dy )
//[2]void translate ( const QPointF & offset )

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TRANSLATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath translated ( qreal dx, qreal dy ) const
*/
$method=|QPainterPath|translated,translated1|qreal,qreal

/*
QPainterPath translated ( const QPointF & offset ) const
*/
$method=|QPainterPath|translated,translated2|const QPointF &

//[1]QPainterPath translated ( qreal dx, qreal dy ) const
//[2]QPainterPath translated ( const QPointF & offset ) const

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TRANSLATED1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TRANSLATED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath united ( const QPainterPath & p ) const
*/
$method=|QPainterPath|united|const QPainterPath &

$extraMethods

#pragma ENDDUMP
