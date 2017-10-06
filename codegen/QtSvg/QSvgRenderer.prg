$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
REQUEST QMATRIX
REQUEST QRECT
#endif

CLASS QSvgRenderer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD matrixForElement
   METHOD setFramesPerSecond
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF
   METHOD load
   METHOD render

   METHOD onRepaintNeeded

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSvgRenderer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSvgRenderer ( QObject * parent = 0 )
*/
$internalConstructor=|new1|QObject *=0

/*
QSvgRenderer ( const QString & filename, QObject * parent = 0 )
*/
$internalConstructor=|new2|const QString &,QObject *=0

/*
QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
*/
$internalConstructor=|new3|const QByteArray &,QObject *=0

/*
QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )
*/
$internalConstructor=|new4|QXmlStreamReader *,QObject *=0

//[1]QSvgRenderer ( QObject * parent = 0 )
//[2]QSvgRenderer ( const QString & filename, QObject * parent = 0 )
//[3]QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
//[4]QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )

HB_FUNC_STATIC( QSVGRENDERER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSvgRenderer_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSvgRenderer_new2();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSvgRenderer_new3();
  }
  else if( ISBETWEEN(1,2) && ISQXMLSTREAMREADER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSvgRenderer_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool animated () const
*/
$method=|bool|animated|

/*
QRectF boundsOnElement ( const QString & id ) const
*/
$method=|QRectF|boundsOnElement|const QString &

/*
QSize defaultSize () const
*/
$method=|QSize|defaultSize|

/*
bool elementExists ( const QString & id ) const
*/
$method=|bool|elementExists|const QString &

/*
int framesPerSecond () const
*/
$method=|int|framesPerSecond|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QMatrix matrixForElement ( const QString & id ) const
*/
$method=|QMatrix|matrixForElement|const QString &

/*
void setFramesPerSecond ( int num )
*/
$method=|void|setFramesPerSecond|int

/*
void setViewBox ( const QRect & viewbox )
*/
$internalMethod=|void|setViewBox,setViewBox1|const QRect &

/*
void setViewBox ( const QRectF & viewbox )
*/
$internalMethod=|void|setViewBox,setViewBox2|const QRectF &

//[1]void setViewBox ( const QRect & viewbox )
//[2]void setViewBox ( const QRectF & viewbox )

HB_FUNC_STATIC( QSVGRENDERER_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QSvgRenderer_setViewBox1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSvgRenderer_setViewBox2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect viewBox () const
*/
$method=|QRect|viewBox|

/*
QRectF viewBoxF () const
*/
$method=|QRectF|viewBoxF|

/*
bool load ( const QString & filename )
*/
$internalMethod=|bool|load,load1|const QString &

/*
bool load ( const QByteArray & contents )
*/
$internalMethod=|bool|load,load2|const QByteArray &

/*
bool load ( QXmlStreamReader * contents )
*/
$internalMethod=|bool|load,load3|QXmlStreamReader *

//[1]bool load ( const QString & filename )
//[2]bool load ( const QByteArray & contents )
//[3]bool load ( QXmlStreamReader * contents )

HB_FUNC_STATIC( QSVGRENDERER_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSvgRenderer_load1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSvgRenderer_load2();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMREADER(1) )
  {
    QSvgRenderer_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void render ( QPainter * painter )
*/
$internalMethod=|void|render,render1|QPainter *

/*
void render ( QPainter * painter, const QRectF & bounds )
*/
$internalMethod=|void|render,render2|QPainter *,const QRectF &

/*
void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )
*/
$internalMethod=|void|render,render3|QPainter *,const QString &,const QRectF &=QRectF()

//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRectF & bounds )
//[3]void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )

HB_FUNC_STATIC( QSVGRENDERER_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    QSvgRenderer_render1();
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECTF(2) )
  {
    QSvgRenderer_render2();
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISCHAR(2) && (ISQRECTF(3)||ISNIL(3)) )
  {
    QSvgRenderer_render3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
