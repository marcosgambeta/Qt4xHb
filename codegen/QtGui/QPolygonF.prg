$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOLYGONF
REQUEST QPOLYGON
#endif

CLASS QPolygonF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD containsPoint
   METHOD intersected
   METHOD isClosed
   METHOD subtracted
   METHOD swap
   METHOD toPolygon
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

#include <QPolygonF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPolygonF ()
*/
HB_FUNC_STATIC( QPOLYGONF_NEW1 )
{
  QPolygonF * o = new QPolygonF ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( int size )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW2 )
{
  QPolygonF * o = new QPolygonF ( PINT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( const QPolygonF & polygon )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW3 )
{
  QPolygonF * o = new QPolygonF ( *PQPOLYGONF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( const QVector<QPointF> & points )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW4 )
{
  QVector<QPointF> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QPolygonF * o = new QPolygonF ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( const QRectF & rectangle )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW5 )
{
  QPolygonF * o = new QPolygonF ( *PQRECTF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( const QPolygon & polygon )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW6 )
{
  QPolygonF * o = new QPolygonF ( *PQPOLYGON(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QPolygonF ()
//[2]QPolygonF ( int size )
//[3]QPolygonF ( const QPolygonF & polygon )
//[4]QPolygonF ( const QVector<QPointF> & points )
//[5]QPolygonF ( const QRectF & rectangle )
//[6]QPolygonF ( const QPolygon & polygon )

HB_FUNC_STATIC( QPOLYGONF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW3 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRectF boundingRect () const
*/
$method=|QRectF|boundingRect|

/*
bool containsPoint ( const QPointF & point, Qt::FillRule fillRule ) const
*/
$method=|bool|containsPoint|const QPointF &,Qt::FillRule

/*
QPolygonF intersected ( const QPolygonF & r ) const
*/
$method=|QPolygonF|intersected|const QPolygonF &

/*
bool isClosed () const
*/
$method=|bool|isClosed|

/*
QPolygonF subtracted ( const QPolygonF & r ) const
*/
$method=|QPolygonF|subtracted|const QPolygonF &

/*
void swap ( QPolygonF & other )
*/
$method=|void|swap|QPolygonF &

/*
QPolygon toPolygon () const
*/
$method=|QPolygon|toPolygon|

/*
void translate ( const QPointF & offset )
*/
$method=|void|translate,translate1|const QPointF &

/*
void translate ( qreal dx, qreal dy )
*/
$method=|void|translate,translate2|qreal,qreal

//[1]void translate ( const QPointF & offset )
//[2]void translate ( qreal dx, qreal dy )

HB_FUNC_STATIC( QPOLYGONF_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_TRANSLATE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOLYGONF_TRANSLATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygonF translated ( const QPointF & offset ) const
*/
$method=|QPolygonF|translated,translated1|const QPointF &

/*
QPolygonF translated ( qreal dx, qreal dy ) const
*/
$method=|QPolygonF|translated,translated2|qreal,qreal

//[1]QPolygonF translated ( const QPointF & offset ) const
//[2]QPolygonF translated ( qreal dx, qreal dy ) const

HB_FUNC_STATIC( QPOLYGONF_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_TRANSLATED1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOLYGONF_TRANSLATED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygonF united ( const QPolygonF & r ) const
*/
$method=|QPolygonF|united|const QPolygonF &

$extraMethods

#pragma ENDDUMP
