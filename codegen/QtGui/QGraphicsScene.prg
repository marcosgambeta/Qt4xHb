$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QGRAPHICSWIDGET
REQUEST QGRAPHICSELLIPSEITEM
REQUEST QGRAPHICSLINEITEM
REQUEST QGRAPHICSPATHITEM
REQUEST QGRAPHICSPIXMAPITEM
REQUEST QGRAPHICSPOLYGONITEM
REQUEST QGRAPHICSRECTITEM
REQUEST QGRAPHICSSIMPLETEXTITEM
REQUEST QGRAPHICSTEXTITEM
REQUEST QGRAPHICSPROXYWIDGET
REQUEST QBRUSH
REQUEST QGRAPHICSITEMGROUP
REQUEST QFONT
REQUEST QVARIANT
REQUEST QRECTF
REQUEST QPALETTE
REQUEST QPAINTERPATH
REQUEST QSTYLE
REQUEST QGRAPHICSVIEW
#endif

CLASS QGraphicsScene INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD activePanel
   METHOD activeWindow
   METHOD addEllipse1
   METHOD addEllipse2
   METHOD addEllipse
   METHOD addItem
   METHOD addLine1
   METHOD addLine2
   METHOD addLine
   METHOD addPath
   METHOD addPixmap
   METHOD addPolygon
   METHOD addRect1
   METHOD addRect2
   METHOD addRect
   METHOD addSimpleText
   METHOD addText
   METHOD addWidget
   METHOD backgroundBrush
   METHOD bspTreeDepth
   METHOD clearFocus
   METHOD collidingItems
   METHOD createItemGroup
   METHOD destroyItemGroup
   METHOD focusItem
   METHOD font
   METHOD foregroundBrush
   METHOD hasFocus
   METHOD height
   METHOD inputMethodQuery
   METHOD invalidate1
   METHOD invalidate2
   METHOD invalidate
   METHOD isActive
   METHOD isSortCacheEnabled
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD itemIndexMethod
   METHOD items1
   METHOD items2
   METHOD items3
   METHOD items4
   METHOD items5
   METHOD items6
   METHOD items7
   METHOD items
   METHOD itemsBoundingRect
   METHOD mouseGrabberItem
   METHOD palette
   METHOD removeItem
   METHOD render
   METHOD sceneRect
   METHOD selectedItems
   METHOD selectionArea
   METHOD sendEvent
   METHOD setActivePanel
   METHOD setActiveWindow
   METHOD setBackgroundBrush
   METHOD setBspTreeDepth
   METHOD setFocus
   METHOD setFocusItem
   METHOD setFont
   METHOD setForegroundBrush
   METHOD setItemIndexMethod
   METHOD setPalette
   METHOD setSceneRect1
   METHOD setSceneRect2
   METHOD setSceneRect
   METHOD setSelectionArea1
   METHOD setSelectionArea2
   METHOD setSelectionArea
   METHOD setSortCacheEnabled
   METHOD setStickyFocus
   METHOD setStyle
   METHOD stickyFocus
   METHOD style
   METHOD update1
   METHOD update2
   METHOD update
   METHOD views
   METHOD width
   METHOD advance
   METHOD clear
   METHOD clearSelection

   METHOD onChanged
   METHOD onSceneRectChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsScene>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>
#include <QPalette>

/*
QGraphicsScene ( QObject * parent = 0 )
*/
$constructor=|new1|QObject *=0

/*
QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
*/
$constructor=|new2|const QRectF &,QObject *=0

/*
QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )
*/
$constructor=|new3|qreal,qreal,qreal,qreal,QObject *=0

//[1]QGraphicsScene ( QObject * parent = 0 )
//[2]QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
//[3]QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSCENE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_NEW2 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QGraphicsItem * activePanel () const
*/
$method=|QGraphicsItem *|activePanel|

/*
QGraphicsWidget * activeWindow () const
*/
$method=|QGraphicsWidget *|activeWindow|

/*
QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$method=|QGraphicsEllipseItem *|addEllipse,addEllipse1|const QRectF &,const QPen &=QPen(),const QBrush &=QBrush()

/*
QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$method=|QGraphicsEllipseItem *|addEllipse,addEllipse2|qreal,qreal,qreal,qreal,const QPen &=QPen(),const QBrush &=QBrush()

//[1]QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
//[2]QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDELLIPSE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDELLIPSE1 );
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDELLIPSE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addItem ( QGraphicsItem * item )
*/
$method=|void|addItem|QGraphicsItem *

/*
QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
*/
$method=|QGraphicsLineItem *|addLine,addLine1|const QLineF &,const QPen &=QPen()

/*
QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )
*/
$method=|QGraphicsLineItem *|addLine,addLine2|qreal,qreal,qreal,qreal,const QPen &=QPen()

//[1]QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
//[2]QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDLINE )
{
  if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQPEN(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDLINE1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDLINE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGraphicsPathItem * addPath ( const QPainterPath & path, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$method=|QGraphicsPathItem *|addPath|const QPainterPath &,const QPen &=QPen(),const QBrush &=QBrush()

/*
QGraphicsPixmapItem * addPixmap ( const QPixmap & pixmap )
*/
$method=|QGraphicsPixmapItem *|addPixmap|const QPixmap &

/*
QGraphicsPolygonItem * addPolygon ( const QPolygonF & polygon, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$method=|QGraphicsPolygonItem *|addPolygon|const QPolygonF &,const QPen &=QPen(),const QBrush &=QBrush()

/*
QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$method=|QGraphicsRectItem *|addRect,addRect1|const QRectF &,const QPen &=QPen(),const QBrush &=QBrush()

/*
QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/
$method=|QGraphicsRectItem *|addRect,addRect2|qreal,qreal,qreal,qreal,const QPen &=QPen(),const QBrush &=QBrush()

//[1]QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
//[2]QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDRECT )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDRECT1 );
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ADDRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGraphicsSimpleTextItem * addSimpleText ( const QString & text, const QFont & font = QFont() )
*/
$method=|QGraphicsSimpleTextItem *|addSimpleText|const QString &,const QFont &=QFont()

/*
QGraphicsTextItem * addText ( const QString & text, const QFont & font = QFont() )
*/
$method=|QGraphicsTextItem *|addText|const QString &,const QFont &=QFont()

/*
QGraphicsProxyWidget * addWidget ( QWidget * widget, Qt::WindowFlags wFlags = 0 )
*/
$method=|QGraphicsProxyWidget *|addWidget|QWidget *,Qt::WindowFlags=0

/*
QBrush backgroundBrush () const
*/
$method=|QBrush|backgroundBrush|

/*
int bspTreeDepth () const
*/
$method=|int|bspTreeDepth|

/*
void clearFocus ()
*/
$method=|void|clearFocus|

/*
QList<QGraphicsItem *> collidingItems ( const QGraphicsItem * item, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_COLLIDINGITEMS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) Qt::IntersectsItemShape : hb_parni(2);
    QList<QGraphicsItem *> list = obj->collidingItems ( par1, (Qt::ItemSelectionMode) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QGraphicsItemGroup * createItemGroup ( const QList<QGraphicsItem *> & items )
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_CREATEITEMGROUP )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    QGraphicsItemGroup * ptr = obj->createItemGroup ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QGRAPHICSITEMGROUP" );
  }
}

/*
void destroyItemGroup ( QGraphicsItemGroup * group )
*/
$method=|void|destroyItemGroup|QGraphicsItemGroup *

/*
QGraphicsItem * focusItem () const
*/
$method=|QGraphicsItem *|focusItem|

/*
QFont font () const
*/
$method=|QFont|font|

/*
QBrush foregroundBrush () const
*/
$method=|QBrush|foregroundBrush|

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
qreal height () const
*/
$method=|qreal|height|

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
*/
$method=|void|invalidate,invalidate1|qreal,qreal,qreal,qreal,QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

/*
void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )
*/
$method=|void|invalidate,invalidate2|const QRectF &=QRectF(),QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

//[1]void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
//[2]void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )

HB_FUNC_STATIC( QGRAPHICSSCENE_INVALIDATE )
{
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_INVALIDATE1 );
  }
  else if( ISBETWEEN(0,2) && (ISQRECTF(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_INVALIDATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
bool isSortCacheEnabled () const
*/
$method=|bool|isSortCacheEnabled|

/*
QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
*/
$method=|QGraphicsItem *|itemAt,itemAt1|const QPointF &,const QTransform &

/*
QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const
*/
$method=|QGraphicsItem *|itemAt,itemAt2|qreal,qreal,const QTransform &

//[1]QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
//[2]QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const

HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMAT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQTRANSFORM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMAT1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ItemIndexMethod itemIndexMethod () const
*/
$method=|QGraphicsScene::ItemIndexMethod|itemIndexMethod|

/*
QList<QGraphicsItem *> items () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS1 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsItem *> list = obj->items ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QGraphicsItem *> items ( Qt::SortOrder order ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS2 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = hb_parni(1);
    QList<QGraphicsItem *> list = obj->items ( (Qt::SortOrder) par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QGraphicsItem *> items ( const QPointF & pos, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS3 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QTransform par4 = ISNIL(4)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( *PQPOINTF(1), (Qt::ItemSelectionMode) par2, (Qt::SortOrder) par3, par4 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QGraphicsItem *> items ( qreal x, qreal y, qreal w, qreal h, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS4 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par5 = hb_parni(5);
    int par6 = hb_parni(6);
    QTransform par7 = ISNIL(7)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), (Qt::ItemSelectionMode) par5, (Qt::SortOrder) par6, par7 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QGraphicsItem *> items ( const QRectF & rect, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS5 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QTransform par4 = ISNIL(4)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( *PQRECTF(1), (Qt::ItemSelectionMode) par2, (Qt::SortOrder) par3, par4 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QGraphicsItem *> items ( const QPolygonF & polygon, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS6 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QTransform par4 = ISNIL(4)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( *PQPOLYGONF(1), (Qt::ItemSelectionMode) par2, (Qt::SortOrder) par3, par4 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS7 )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    QTransform par4 = ISNIL(4)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QGraphicsItem *> list = obj->items ( *PQPAINTERPATH(1), (Qt::ItemSelectionMode) par2, (Qt::SortOrder) par3, par4 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

//[1]QList<QGraphicsItem *> items () const
//[2]QList<QGraphicsItem *> items ( Qt::SortOrder order ) const
//[3]QList<QGraphicsItem *> items ( const QPointF & pos, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
//[4]QList<QGraphicsItem *> items ( qreal x, qreal y, qreal w, qreal h, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
//[5]QList<QGraphicsItem *> items ( const QRectF & rect, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
//[6]QList<QGraphicsItem *> items ( const QPolygonF & polygon, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
//[7]QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const

HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS2 );
  }
  else if( ISBETWEEN(3,4) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS3 );
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQTRANSFORM(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS4 );
  }
  else if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS5 );
  }
  else if( ISBETWEEN(3,4) && ISQPOLYGONF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS6 );
  }
  else if( ISBETWEEN(3,4) && ISQPAINTERPATH(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_ITEMS7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF itemsBoundingRect () const
*/
$method=|QRectF|itemsBoundingRect|

/*
QGraphicsItem * mouseGrabberItem () const
*/
$method=|QGraphicsItem *|mouseGrabberItem|

/*
QPalette palette () const
*/
$method=|QPalette|palette|

/*
void removeItem ( QGraphicsItem * item )
*/
$method=|void|removeItem|QGraphicsItem *

/*
void render ( QPainter * painter, const QRectF & target = QRectF(), const QRectF & source = QRectF(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )
*/
$method=|void|render|QPainter *,const QRectF &=QRectF(),const QRectF &=QRectF(),Qt::AspectRatioMode=Qt::KeepAspectRatio

/*
QRectF sceneRect () const
*/
$method=|QRectF|sceneRect|

/*
QList<QGraphicsItem *> selectedItems () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_SELECTEDITEMS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsItem *> list = obj->selectedItems ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSITEM" );
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
        hb_itemPutPtr( pItem, (QGraphicsItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QPainterPath selectionArea () const
*/
$method=|QPainterPath|selectionArea|

/*
bool sendEvent ( QGraphicsItem * item, QEvent * event )
*/
$method=|bool|sendEvent|QGraphicsItem *,QEvent *

/*
void setActivePanel ( QGraphicsItem * item )
*/
$method=|void|setActivePanel|QGraphicsItem *

/*
void setActiveWindow ( QGraphicsWidget * widget )
*/
$method=|void|setActiveWindow|QGraphicsWidget *

/*
void setBackgroundBrush ( const QBrush & brush )
*/
$method=|void|setBackgroundBrush|const QBrush &

/*
void setBspTreeDepth ( int depth )
*/
$method=|void|setBspTreeDepth|int

/*
void setFocus ( Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
$method=|void|setFocus|Qt::FocusReason=Qt::OtherFocusReason

/*
void setFocusItem ( QGraphicsItem * item, Qt::FocusReason focusReason = Qt::OtherFocusReason )
*/
$method=|void|setFocusItem|QGraphicsItem *,Qt::FocusReason=Qt::OtherFocusReason

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setForegroundBrush ( const QBrush & brush )
*/
$method=|void|setForegroundBrush|const QBrush &

/*
void setItemIndexMethod ( ItemIndexMethod method )
*/
$method=|void|setItemIndexMethod|QGraphicsScene::ItemIndexMethod

/*
void setPalette ( const QPalette & palette )
*/
$method=|void|setPalette|const QPalette &

/*
void setSceneRect ( const QRectF & rect )
*/
$method=|void|setSceneRect,setSceneRect1|const QRectF &

/*
void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/
$method=|void|setSceneRect,setSceneRect2|qreal,qreal,qreal,qreal

//[1]void setSceneRect ( const QRectF & rect )
//[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_SETSCENERECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_SETSCENERECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
*/
$method=|void|setSelectionArea,setSelectionArea1|const QPainterPath &,const QTransform &

/*
void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )
*/
$method=|void|setSelectionArea,setSelectionArea2|const QPainterPath &,Qt::ItemSelectionMode,const QTransform &

//[1]void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
//[2]void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSELECTIONAREA )
{
  if( ISNUMPAR(2) && ISQPAINTERPATH(1) && ISQTRANSFORM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_SETSELECTIONAREA1 );
  }
  else if( ISNUMPAR(3) && ISQPAINTERPATH(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_SETSELECTIONAREA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSortCacheEnabled ( bool enabled )
*/
$method=|void|setSortCacheEnabled|bool

/*
void setStickyFocus ( bool enabled )
*/
$method=|void|setStickyFocus|bool

/*
void setStyle ( QStyle * style )
*/
$method=|void|setStyle|QStyle *

/*
bool stickyFocus () const
*/
$method=|bool|stickyFocus|

/*
QStyle * style () const
*/
$method=|QStyle *|style|

/*
void update ( qreal x, qreal y, qreal w, qreal h )
*/
$method=|void|update,update1|qreal,qreal,qreal,qreal

/*
void update ( const QRectF & rect = QRectF() )
*/
$method=|void|update,update2|const QRectF &=QRectF()

//[1]void update ( qreal x, qreal y, qreal w, qreal h )
//[2]void update ( const QRectF & rect = QRectF() )

HB_FUNC_STATIC( QGRAPHICSSCENE_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_UPDATE1 );
  }
  else if( ISBETWEEN(0,1) && (ISQRECTF(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSCENE_UPDATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QGraphicsView *> views () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENE_VIEWS )
{
  QGraphicsScene * obj = (QGraphicsScene *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGraphicsView *> list = obj->views ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSVIEW" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSVIEW" );
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
        hb_itemPutPtr( pItem, (QGraphicsView *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
qreal width () const
*/
$method=|qreal|width|

/*
void advance ()
*/
$method=|void|advance|

/*
void clear ()
*/
$method=|void|clear|

/*
void clearSelection ()
*/
$method=|void|clearSelection|

#pragma ENDDUMP
