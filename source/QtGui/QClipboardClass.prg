/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QMIMEDATA
REQUEST QPIXMAP
#endif

CLASS QClipboard INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD clear
   METHOD image
   METHOD mimeData
   METHOD ownsClipboard
   METHOD ownsFindBuffer
   METHOD ownsSelection
   METHOD pixmap
   METHOD setImage
   METHOD setMimeData
   METHOD setPixmap
   METHOD setText
   METHOD supportsFindBuffer
   METHOD supportsSelection
   METHOD text1
   METHOD text2
   METHOD text

   METHOD onChanged
   METHOD onDataChanged
   METHOD onFindBufferChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QClipboard
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QClipboard>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QImage>
#include <QMimeData>
#include <QPixmap>

/*
void clear ( Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_CLEAR )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
    obj->clear ( (QClipboard::Mode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QImage image ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_IMAGE )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QImage * ptr = new QImage( obj->image ( (QClipboard::Mode) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
const QMimeData * mimeData ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_MIMEDATA )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QMimeData * ptr = obj->mimeData ( (QClipboard::Mode) par1 );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}

/*
bool ownsClipboard () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSCLIPBOARD )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->ownsClipboard () );
  }
}

/*
bool ownsFindBuffer () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->ownsFindBuffer () );
  }
}

/*
bool ownsSelection () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSSELECTION )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->ownsSelection () );
  }
}

/*
QPixmap pixmap ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_PIXMAP )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap ( (QClipboard::Mode) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setImage ( const QImage & image, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETIMAGE )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setImage ( *PQIMAGE(1), (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMimeData ( QMimeData * src, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETMIMEDATA )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMimeData * par1 = (QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setMimeData ( par1, (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap ( const QPixmap & pixmap, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETPIXMAP )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setPixmap ( *PQPIXMAP(1), (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETTEXT )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setText ( PQSTRING(1), (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool supportsFindBuffer () const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->supportsFindBuffer () );
  }
}

/*
bool supportsSelection () const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSSELECTION )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->supportsSelection () );
  }
}

/*
QString text ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_TEXT1 )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      RQSTRING( obj->text ( ISNIL(1)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString text ( QString & subtype, Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_TEXT2 )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    RQSTRING( obj->text ( par1, (QClipboard::Mode) hb_parni(2) ) );
  }
}

//[1]QString text ( Mode mode = Clipboard ) const
//[2]QString text ( QString & subtype, Mode mode = Clipboard ) const

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT2 );
  }
}

#pragma ENDDUMP
