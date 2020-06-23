%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>

$prototype=QVideoSurfaceFormat ()
$internalConstructor=|new1|

$prototype=QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
$internalConstructor=|new2|const QSize &,QVideoFrame::PixelFormat,QAbstractVideoBuffer::HandleType=QAbstractVideoBuffer::NoHandle

$prototype=QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )
$internalConstructor=|new3|const QVideoSurfaceFormat &

/*
[1]QVideoSurfaceFormat ()
[2]QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
[3]QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )
*/

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoSurfaceFormat_new1();
  }
  else if( ISBETWEEN(2,3) && ISQSIZE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QVideoSurfaceFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
  {
    QVideoSurfaceFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=int frameHeight() const

$prototypeV2=qreal frameRate() const

$prototypeV2=QSize frameSize() const

$prototypeV2=int frameWidth() const

$prototypeV2=QAbstractVideoBuffer::HandleType handleType() const

$prototypeV2=bool isValid() const

$prototypeV2=QSize pixelAspectRatio() const

$prototypeV2=QVideoFrame::PixelFormat pixelFormat() const

$prototypeV2=QVariant property( const char * name ) const

$prototypeV2=QList<QByteArray> propertyNames() const

$prototypeV2=QVideoSurfaceFormat::Direction scanLineDirection() const

$prototypeV2=void setFrameRate( qreal rate )

$prototype=void setFrameSize ( const QSize & size )
$internalMethod=|void|setFrameSize,setFrameSize1|const QSize &

$prototype=void setFrameSize ( int width, int height )
$internalMethod=|void|setFrameSize,setFrameSize2|int,int

/*
[1]void setFrameSize ( const QSize & size )
[2]void setFrameSize ( int width, int height )
*/

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoSurfaceFormat_setFrameSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoSurfaceFormat_setFrameSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFrameSize

$prototype=void setPixelAspectRatio ( const QSize & ratio )
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio1|const QSize &

$prototype=void setPixelAspectRatio ( int horizontal, int vertical )
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio2|int,int

/*
[1]void setPixelAspectRatio ( const QSize & ratio )
[2]void setPixelAspectRatio ( int horizontal, int vertical )
*/

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoSurfaceFormat_setPixelAspectRatio1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoSurfaceFormat_setPixelAspectRatio2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPixelAspectRatio

$prototypeV2=void setProperty( const char * name, const QVariant & value )

$prototypeV2=void setScanLineDirection( QVideoSurfaceFormat::Direction direction )

$prototypeV2=void setViewport( const QRect & viewport )

$prototypeV2=void setYCbCrColorSpace( QVideoSurfaceFormat::YCbCrColorSpace space )

$prototypeV2=QSize sizeHint() const

$prototypeV2=QRect viewport() const

$prototypeV2=QVideoSurfaceFormat::YCbCrColorSpace yCbCrColorSpace() const

$extraMethods

#pragma ENDDUMP
