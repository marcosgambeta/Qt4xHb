/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBITMAP
REQUEST QIMAGE
REQUEST QMATRIX
REQUEST QRECT
REQUEST QSIZE
REQUEST QTRANSFORM
#endif

CLASS QPixmap INHERIT QPaintDevice

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD cacheKey
   METHOD convertFromImage
   METHOD copy
   METHOD createHeuristicMask
   METHOD createMaskFromColor
   METHOD depth
   METHOD detach
   METHOD fill
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD height
   METHOD isNull
   METHOD isQBitmap
   METHOD load
   METHOD loadFromData
   METHOD mask
   METHOD rect
   METHOD save
   METHOD scaled
   METHOD scaledToHeight
   METHOD scaledToWidth
   METHOD scroll
   METHOD setMask
   METHOD size
   METHOD swap
   METHOD toImage
   METHOD transformed
   METHOD width
   METHOD defaultDepth
   METHOD fromImage
   METHOD fromImageReader
   METHOD grabWidget
   METHOD grabWindow
   METHOD trueMatrix
   METHOD toVariant
   METHOD fromVariant

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPixmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPixmap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtGui/QBitmap>
#include <QtCore/QVariant>

/*
QPixmap ()
*/
HB_FUNC_STATIC( QPIXMAP_NEW1 )
{
  QPixmap * obj = new QPixmap();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPixmap ( int width, int height )
*/
HB_FUNC_STATIC( QPIXMAP_NEW2 )
{
  QPixmap * obj = new QPixmap( PINT(1), PINT(2) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_NEW3 )
{
  QPixmap * obj = new QPixmap( PQSTRING(1), OPCONSTCHAR(2,0), ISNIL(3)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(3) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPixmap ( const char * const[] xpm )
*/

/*
QPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QPIXMAP_NEW5 )
{
  QPixmap * obj = new QPixmap( *PQPIXMAP(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPixmap ( const QSize & size )
*/
HB_FUNC_STATIC( QPIXMAP_NEW6 )
{
  QPixmap * obj = new QPixmap( *PQSIZE(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
[1]QPixmap ()
[2]QPixmap ( int width, int height )
[3]QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
[4]QPixmap ( const char * const[] xpm )
[5]QPixmap ( const QPixmap & pixmap )
[6]QPixmap ( const QSize & size )
*/

HB_FUNC_STATIC( QPIXMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPIXMAP_DELETE )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

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
qint64 cacheKey () const
*/
HB_FUNC_STATIC( QPIXMAP_CACHEKEY )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->cacheKey() );
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
bool convertFromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_CONVERTFROMIMAGE )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
    {
#endif
      RBOOL( obj->convertFromImage( *PQIMAGE(1), ISNIL(2)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(2) ) );
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
QPixmap copy ( const QRect & rectangle = QRect() ) const
*/
void QPixmap_copy1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->copy( ISNIL(1)? QRect() : *(QRect *) Qt4xHb::itemGetPtr(1) ) );
    Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap copy ( int x, int y, int width, int height ) const
*/
void QPixmap_copy2()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->copy( PINT(1), PINT(2), PINT(3), PINT(4) ) );
    Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
[1]QPixmap copy ( const QRect & rectangle = QRect() ) const
[2]QPixmap copy ( int x, int y, int width, int height ) const
*/

HB_FUNC_STATIC( QPIXMAP_COPY )
{
  if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    QPixmap_copy1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPixmap_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QBitmap createHeuristicMask ( bool clipTight = true ) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEHEURISTICMASK )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      QBitmap * ptr = new QBitmap( obj->createHeuristicMask( OPBOOL(1,true) ) );
      Qt4xHb::createReturnClass( ptr, "QBITMAP", true );
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
QBitmap createMaskFromColor ( const QColor & maskColor, Qt::MaskMode mode ) const
*/
void QPixmap_createMaskFromColor1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QBitmap * ptr = new QBitmap( obj->createMaskFromColor( ISOBJECT(1)? *(QColor *) Qt4xHb::itemGetPtr(1) : QColor(hb_parc(1)), (Qt::MaskMode) hb_parni(2) ) );
    Qt4xHb::createReturnClass( ptr, "QBITMAP", true );
  }
}

/*
QBitmap createMaskFromColor ( const QColor & maskColor ) const
*/
void QPixmap_createMaskFromColor2()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QBitmap * ptr = new QBitmap( obj->createMaskFromColor( ISOBJECT(1)? *(QColor *) Qt4xHb::itemGetPtr(1) : QColor(hb_parc(1)) ) );
    Qt4xHb::createReturnClass( ptr, "QBITMAP", true );
  }
}

/*
[1]QBitmap createMaskFromColor ( const QColor & maskColor, Qt::MaskMode mode ) const
[2]QBitmap createMaskFromColor ( const QColor & maskColor ) const
*/

HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR )
{
  if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISNUM(2) )
  {
    QPixmap_createMaskFromColor1();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QPixmap_createMaskFromColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int depth() const
*/
HB_FUNC_STATIC( QPIXMAP_DEPTH )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->depth() );
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
void detach ()
*/
HB_FUNC_STATIC( QPIXMAP_DETACH )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->detach();
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
void fill ( const QColor & color = Qt::white )
*/
void QPixmap_fill1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fill( ISNIL(1)? Qt::white : *(QColor *) Qt4xHb::itemGetPtr(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( const QWidget * widget, const QPoint & offset )
*/
void QPixmap_fill2()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fill( PQWIDGET(1), *PQPOINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( const QWidget * widget, int x, int y )
*/
void QPixmap_fill3()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fill( PQWIDGET(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void fill ( const QColor & color = Qt::white )
[2]void fill ( const QWidget * widget, const QPoint & offset )
[3]void fill ( const QWidget * widget, int x, int y )
*/

HB_FUNC_STATIC( QPIXMAP_FILL )
{
  if( ISBETWEEN(0,1) && (ISQCOLOR(1)||ISCHAR(1)||ISNUM(1)||ISNIL(1)) )
  {
    QPixmap_fill1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQPOINT(2) )
  {
    QPixmap_fill2();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_fill3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasAlpha() const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHA )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasAlpha() );
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
bool hasAlphaChannel() const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHACHANNEL )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasAlphaChannel() );
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
int height() const
*/
HB_FUNC_STATIC( QPIXMAP_HEIGHT )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->height() );
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
HB_FUNC_STATIC( QPIXMAP_ISNULL )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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
bool isQBitmap() const
*/
HB_FUNC_STATIC( QPIXMAP_ISQBITMAP )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isQBitmap() );
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
bool load ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_LOAD )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
    {
#endif
      RBOOL( obj->load( PQSTRING(1), OPCONSTCHAR(2,0), ISNIL(3)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(3) ) );
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
bool loadFromData ( const uchar * data, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPixmap_loadFromData1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->loadFromData( PCONSTUCHAR(1), PUINT(2), OPCONSTCHAR(3,0), ISNIL(4)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(4) ) );
  }
}

/*
bool loadFromData ( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPixmap_loadFromData2()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->loadFromData( *PQBYTEARRAY(1), OPCONSTCHAR(2,0), ISNIL(3)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(3) ) );
  }
}

/*
[1]bool loadFromData ( const uchar * data, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
[2]bool loadFromData ( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/

HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QPixmap_loadFromData1();
  }
  else if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_loadFromData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QBitmap mask () const
*/
HB_FUNC_STATIC( QPIXMAP_MASK )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBitmap * ptr = new QBitmap( obj->mask() );
      Qt4xHb::createReturnClass( ptr, "QBITMAP", true );
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
QRect rect () const
*/
HB_FUNC_STATIC( QPIXMAP_RECT )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->rect() );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
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
bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
*/
void QPixmap_save1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save( PQSTRING(1), OPCONSTCHAR(2,0), OPINT(3,-1) ) );
  }
}

/*
bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
*/
void QPixmap_save2()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save( PQIODEVICE(1), OPCONSTCHAR(2,0), OPINT(3,-1) ) );
  }
}

/*
[1]bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
[2]bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
*/

HB_FUNC_STATIC( QPIXMAP_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_save1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
void QPixmap_scaled1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->scaled( *PQSIZE(1), ISNIL(2)? (Qt::AspectRatioMode) Qt::IgnoreAspectRatio : (Qt::AspectRatioMode) hb_parni(2), ISNIL(3)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(3) ) );
    Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
void QPixmap_scaled2()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->scaled( PINT(1), PINT(2), ISNIL(3)? (Qt::AspectRatioMode) Qt::IgnoreAspectRatio : (Qt::AspectRatioMode) hb_parni(3), ISNIL(4)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(4) ) );
    Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
[1]QPixmap scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
[2]QPixmap scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/

HB_FUNC_STATIC( QPIXMAP_SCALED )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_scaled1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QPixmap_scaled2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap scaledToHeight ( int height, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOHEIGHT )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->scaledToHeight( PINT(1), ISNIL(2)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(2) ) );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
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
QPixmap scaledToWidth ( int width, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOWIDTH )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->scaledToWidth( PINT(1), ISNIL(2)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(2) ) );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
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
void scroll ( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
*/
void QPixmap_scroll1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scroll( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PINT(6), ISNIL(7)? 0 : (QRegion *) Qt4xHb::itemGetPtr(7) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scroll ( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )
*/
void QPixmap_scroll2()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scroll( PINT(1), PINT(2), *PQRECT(3), ISNIL(4)? 0 : (QRegion *) Qt4xHb::itemGetPtr(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void scroll ( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
[2]void scroll ( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )
*/

HB_FUNC_STATIC( QPIXMAP_SCROLL )
{
  if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQREGION(7)||ISNIL(7)) )
  {
    QPixmap_scroll1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQRECT(3) && (ISQREGION(4)||ISNIL(4)) )
  {
    QPixmap_scroll2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMask ( const QBitmap & mask )
*/
HB_FUNC_STATIC( QPIXMAP_SETMASK )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBITMAP(1) )
    {
#endif
      obj->setMask( *PQBITMAP(1) );
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
QSize size () const
*/
HB_FUNC_STATIC( QPIXMAP_SIZE )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->size() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
void swap ( QPixmap & other )
*/
HB_FUNC_STATIC( QPIXMAP_SWAP )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->swap( *PQPIXMAP(1) );
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
QImage toImage () const
*/
HB_FUNC_STATIC( QPIXMAP_TOIMAGE )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QImage * ptr = new QImage( obj->toImage() );
      Qt4xHb::createReturnClass( ptr, "QIMAGE", true );
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
QPixmap transformed ( const QTransform & transform, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
void QPixmap_transformed1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->transformed( *PQTRANSFORM(1), ISNIL(2)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(2) ) );
    Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
void QPixmap_transformed2()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->transformed( *PQMATRIX(1), ISNIL(2)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(2) ) );
    Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
[1]QPixmap transformed ( const QTransform & transform, Qt::TransformationMode mode = Qt::FastTransformation ) const
[2]QPixmap transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/

HB_FUNC_STATIC( QPIXMAP_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QPixmap_transformed1();
  }
  else if( ISBETWEEN(1,2) && ISQMATRIX(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QPixmap_transformed2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int width() const
*/
HB_FUNC_STATIC( QPIXMAP_WIDTH )
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->width() );
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
static int defaultDepth()
*/
HB_FUNC_STATIC( QPIXMAP_DEFAULTDEPTH )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QPixmap::defaultDepth() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPixmap fromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
  {
#endif
    QPixmap * ptr = new QPixmap( QPixmap::fromImage( *PQIMAGE(1), ISNIL(2)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(2) ) );
    Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPixmap fromImageReader ( QImageReader * imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGEREADER )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQIMAGEREADER(1) && ISOPTNUM(2) )
  {
#endif
    QPixmap * ptr = new QPixmap( QPixmap::fromImageReader( PQIMAGEREADER(1), ISNIL(2)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(2) ) );
    Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPixmap grabWidget ( QWidget * widget, const QRect & rectangle )
*/
void QPixmap_grabWidget1()
{

  QPixmap * ptr = new QPixmap( QPixmap::grabWidget( PQWIDGET(1), *PQRECT(2) ) );
  Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
}

/*
static QPixmap grabWidget ( QWidget * widget, int x = 0, int y = 0, int width = -1, int height = -1 )
*/
void QPixmap_grabWidget2()
{

  QPixmap * ptr = new QPixmap( QPixmap::grabWidget( PQWIDGET(1), OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
  Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
}

/*
[1]QPixmap grabWidget ( QWidget * widget, const QRect & rectangle )
[2]QPixmap grabWidget ( QWidget * widget, int x = 0, int y = 0, int width = -1, int height = -1 )
*/

HB_FUNC_STATIC( QPIXMAP_GRABWIDGET )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQRECT(2) )
  {
    QPixmap_grabWidget1();
  }
  else if( ISBETWEEN(1,5) && ISQWIDGET(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    QPixmap_grabWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap grabWindow ( WId window, int x = 0, int y = 0, int width = -1, int height = -1 )
*/
HB_FUNC_STATIC( QPIXMAP_GRABWINDOW )
{
  WId par1 = (WId) hb_parptr(1);
  QPixmap * ptr = new QPixmap( QPixmap::grabWindow ( par1, OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
  Qt4xHb::createReturnClass ( ptr, "QPIXMAP", true );
}

/*
static QTransform trueMatrix ( const QTransform & matrix, int width, int height )
*/
void QPixmap_trueMatrix1()
{

  QTransform * ptr = new QTransform( QPixmap::trueMatrix( *PQTRANSFORM(1), PINT(2), PINT(3) ) );
  Qt4xHb::createReturnClass( ptr, "QTRANSFORM", true );
}

/*
static QMatrix trueMatrix ( const QMatrix & m, int w, int h )
*/
void QPixmap_trueMatrix2()
{

  QMatrix * ptr = new QMatrix( QPixmap::trueMatrix( *PQMATRIX(1), PINT(2), PINT(3) ) );
  Qt4xHb::createReturnClass( ptr, "QMATRIX", true );
}

/*
[1]QTransform trueMatrix ( const QTransform & matrix, int width, int height )
[2]QMatrix trueMatrix ( const QMatrix & m, int w, int h )
*/

HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_trueMatrix1();
  }
  else if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_trueMatrix2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant toVariant()
*/
void QPixmap_toVariant1()
{
  QPixmap * obj = (QPixmap *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QPixmap>( *obj );
    Qt4xHb::createReturnClass( variant, "QVARIANT", true );
  }
}

/*
static QVariant toVariant( const QPixmap & )
*/
void QPixmap_toVariant2()
{
  QPixmap * pixmap = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * variant = new QVariant();
  variant->setValue<QPixmap>( *pixmap );
  Qt4xHb::createReturnClass( variant, "QVARIANT", true );
}

//[1]QVariant toVariant()
//[2]static QVariant toVariant( const QPixmap & )

HB_FUNC_STATIC( QPIXMAP_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QPixmap_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QPixmap_toVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap fromVariant( const QVariant & )
*/
HB_FUNC_STATIC( QPIXMAP_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * pixmap = new QPixmap( variant->value<QPixmap>() );
    Qt4xHb::createReturnClass( pixmap, "QPIXMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
