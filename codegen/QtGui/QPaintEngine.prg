%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool begin ( QPaintDevice * pdev ) = 0
$virtualMethod=|bool|begin|QPaintDevice *

$prototype=virtual void drawEllipse ( const QRectF & rect )
$internalVirtualMethod=|void|drawEllipse,drawEllipse1|const QRectF &

$prototype=virtual void drawEllipse ( const QRect & rect )
$internalVirtualMethod=|void|drawEllipse,drawEllipse2|const QRect &

/*
[1]virtual void drawEllipse ( const QRectF & rect )
[2]virtual void drawEllipse ( const QRect & rect )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPaintEngine_drawEllipse1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPaintEngine_drawEllipse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=drawEllipse

$prototype=virtual void drawImage ( const QRectF & rectangle, const QImage & image, const QRectF & sr, Qt::ImageConversionFlags flags = Qt::AutoColor )
$virtualMethod=|void|drawImage|const QRectF &,const QImage &,const QRectF &,Qt::ImageConversionFlags=Qt::AutoColor

/*
[1]virtual void drawLines ( const QLineF * lines, int lineCount )
[2]virtual void drawLines ( const QLine * lines, int lineCount )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWLINES )
{
}
$addMethod=drawLines

$prototype=virtual void drawPath ( const QPainterPath & path )
$virtualMethod=|void|drawPath|const QPainterPath &

$prototype=virtual void drawPixmap ( const QRectF & r, const QPixmap & pm, const QRectF & sr ) = 0
$virtualMethod=|void|drawPixmap|const QRectF &,const QPixmap &,const QRectF &

/*
[1]virtual void drawPoints ( const QPointF * points, int pointCount )
[2]virtual void drawPoints ( const QPoint * points, int pointCount )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOINTS )
{
}
$addMethod=drawPoints

/*
[1]virtual void drawPolygon ( const QPointF * points, int pointCount, PolygonDrawMode mode )
[2]virtual void drawPolygon ( const QPoint * points, int pointCount, PolygonDrawMode mode )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWPOLYGON )
{
}
$addMethod=drawPolygon

/*
[1]virtual void drawRects ( const QRectF * rects, int rectCount )
[2]virtual void drawRects ( const QRect * rects, int rectCount )
*/

HB_FUNC_STATIC( QPAINTENGINE_DRAWRECTS )
{
}
$addMethod=drawRects

$prototype=virtual void drawTextItem ( const QPointF & p, const QTextItem & textItem )
$virtualMethod=|void|drawTextItem|const QPointF &,const QTextItem &

$prototype=virtual void drawTiledPixmap ( const QRectF & rect, const QPixmap & pixmap, const QPointF & p )
$virtualMethod=|void|drawTiledPixmap|const QRectF &,const QPixmap &,const QPointF &

$prototypeV2=virtual bool end() = 0

$prototype=bool hasFeature ( PaintEngineFeatures feature ) const
$method=|bool|hasFeature|QPaintEngine::PaintEngineFeatures

$prototypeV2=bool isActive() const

$prototype=QPaintDevice * paintDevice () const
$method=|QPaintDevice *|paintDevice|

$prototype=QPainter * painter () const
$method=|QPainter *|painter|

$prototype=void setActive ( bool state )
$method=|void|setActive|bool

$prototype=virtual Type type () const = 0
$virtualMethod=|QPaintEngine::Type|type|

$prototype=virtual void updateState ( const QPaintEngineState & state ) = 0
$virtualMethod=|void|updateState|const QPaintEngineState &

$extraMethods

#pragma ENDDUMP
