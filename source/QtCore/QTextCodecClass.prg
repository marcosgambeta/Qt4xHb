/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QTEXTDECODER
REQUEST QTEXTENCODER
REQUEST QTEXTCODEC
#endif

CLASS QTextCodec

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD canEncode
   METHOD toUnicode
   METHOD fromUnicode
   METHOD makeDecoder
   METHOD makeEncoder
   METHOD name
   METHOD aliases
   METHOD mibEnum
   METHOD codecForName
   METHOD codecForMib
   METHOD availableCodecs
   METHOD availableMibs
   METHOD codecForLocale
   METHOD setCodecForLocale
   METHOD codecForTr
   METHOD setCodecForTr
   METHOD codecForCStrings
   METHOD setCodecForCStrings
   METHOD codecForHtml
   METHOD codecForUtfText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextCodec
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextCodec>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
bool canEncode(QChar) const
*/
void QTextCodec_canEncode1 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->canEncode ( *PQCHAR(1) ) );
  }
}

/*
bool canEncode(const QString&) const
*/
void QTextCodec_canEncode2 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->canEncode ( PQSTRING(1) ) );
  }
}

//[1]bool canEncode(QChar) const
//[2]bool canEncode(const QString&) const

HB_FUNC_STATIC( QTEXTCODEC_CANENCODE )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QTextCodec_canEncode1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_canEncode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toUnicode(const QByteArray&) const
*/
void QTextCodec_toUnicode1 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RQSTRING( obj->toUnicode ( *PQBYTEARRAY(1) ) );
  }
}

/*
QString toUnicode(const char* chars) const
*/
void QTextCodec_toUnicode2 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RQSTRING( obj->toUnicode ( PCONSTCHAR(1) ) );
  }
}

/*
QString toUnicode(const char *in, int length, ConverterState *state = 0) const
*/

//[1]QString toUnicode(const QByteArray&) const
//[2]QString toUnicode(const char* chars) const
//[3]QString toUnicode(const char *in, int length, ConverterState *state = 0) const

HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_toUnicode1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_toUnicode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray fromUnicode(const QString& uc) const
*/
void QTextCodec_fromUnicode1 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QByteArray * ptr = new QByteArray( obj->fromUnicode ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
  }
}

/*
QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const
*/

//[1]QByteArray fromUnicode(const QString& uc) const
//[2]QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const

HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_fromUnicode1();
  }
  //else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && (ISOBJECT(3)||ISNIL(3)) )
  //{
  //  HB_FUNC_EXEC( QTEXTCODEC_FROMUNICODE2 );
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextDecoder* makeDecoder() const
*/
void QTextCodec_makeDecoder1 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QTextDecoder * ptr = obj->makeDecoder ();
      _qt4xhb_createReturnClass ( ptr, "QTEXTDECODER", false );
  }
}

/*
QTextDecoder* makeDecoder(ConversionFlags flags) const
*/
void QTextCodec_makeDecoder2 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QTextDecoder * ptr = obj->makeDecoder ( (QTextCodec::ConversionFlags) hb_parni(1) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTDECODER", false );
  }
}

//[1]QTextDecoder* makeDecoder() const
//[2]QTextDecoder* makeDecoder(ConversionFlags flags) const

HB_FUNC_STATIC( QTEXTCODEC_MAKEDECODER )
{
  if( ISNUMPAR(0) )
  {
    QTextCodec_makeDecoder1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCodec_makeDecoder2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextEncoder* makeEncoder() const
*/
void QTextCodec_makeEncoder1 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QTextEncoder * ptr = obj->makeEncoder ();
      _qt4xhb_createReturnClass ( ptr, "QTEXTENCODER", false );
  }
}

/*
QTextEncoder* makeEncoder(ConversionFlags flags) const
*/
void QTextCodec_makeEncoder2 ()
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QTextEncoder * ptr = obj->makeEncoder ( (QTextCodec::ConversionFlags) hb_parni(1) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTENCODER", false );
  }
}

//[1]QTextEncoder* makeEncoder() const
//[2]QTextEncoder* makeEncoder(ConversionFlags flags) const

HB_FUNC_STATIC( QTEXTCODEC_MAKEENCODER )
{
  if( ISNUMPAR(0) )
  {
    QTextCodec_makeEncoder1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCodec_makeEncoder2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QByteArray name() const = 0
*/
HB_FUNC_STATIC( QTEXTCODEC_NAME )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QByteArray * ptr = new QByteArray( obj->name () );
      _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QList<QByteArray> aliases() const
*/
HB_FUNC_STATIC( QTEXTCODEC_ALIASES )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QByteArray> list = obj->aliases ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
virtual int mibEnum() const = 0
*/
HB_FUNC_STATIC( QTEXTCODEC_MIBENUM )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->mibEnum () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QTextCodec* codecForName(const QByteArray &name)
*/
void QTextCodec_codecForName1 ()
{

      QTextCodec * ptr = QTextCodec::codecForName ( *PQBYTEARRAY(1) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
}

/*
static QTextCodec* codecForName(const char *name)
*/
void QTextCodec_codecForName2 ()
{

      QTextCodec * ptr = QTextCodec::codecForName ( PCONSTCHAR(1) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
}

//[1]static QTextCodec* codecForName(const QByteArray &name)
//[2]static QTextCodec* codecForName(const char *name)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_codecForName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec* codecForMib(int mib)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORMIB )
{
    if( ISNUMPAR(1) && ISNUM(1) )
  {
      QTextCodec * ptr = QTextCodec::codecForMib ( PINT(1) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QByteArray> availableCodecs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLECODECS )
{
  QList<QByteArray> list = QTextCodec::availableCodecs ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QList<int> availableMibs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLEMIBS )
{
  QList<int> list = QTextCodec::availableMibs ();
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
static QTextCodec* codecForLocale()
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORLOCALE )
{
    if( ISNUMPAR(0) )
  {
      QTextCodec * ptr = QTextCodec::codecForLocale ();
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setCodecForLocale(QTextCodec *c)
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORLOCALE )
{
    if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
      QTextCodec::setCodecForLocale ( PQTEXTCODEC(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QTextCodec* codecForTr()
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORTR )
{
    if( ISNUMPAR(0) )
  {
      QTextCodec * ptr = QTextCodec::codecForTr ();
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setCodecForTr(QTextCodec *c)
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORTR )
{
    if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
      QTextCodec::setCodecForTr ( PQTEXTCODEC(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QTextCodec* codecForCStrings()
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORCSTRINGS )
{
    if( ISNUMPAR(0) )
  {
      QTextCodec * ptr = QTextCodec::codecForCStrings ();
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setCodecForCStrings(QTextCodec *c)
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORCSTRINGS )
{
    if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
      QTextCodec::setCodecForCStrings ( PQTEXTCODEC(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QTextCodec *codecForHtml(const QByteArray &ba)
*/
void QTextCodec_codecForHtml1 ()
{

      QTextCodec * ptr = QTextCodec::codecForHtml ( *PQBYTEARRAY(1) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
}

/*
static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
*/
void QTextCodec_codecForHtml2 ()
{

      QTextCodec * ptr = QTextCodec::codecForHtml ( *PQBYTEARRAY(1), PQTEXTCODEC(2) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
}

//[1]static QTextCodec *codecForHtml(const QByteArray &ba)
//[2]static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForHtml1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    QTextCodec_codecForHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba)
*/
void QTextCodec_codecForUtfText1 ()
{

      QTextCodec * ptr = QTextCodec::codecForUtfText ( *PQBYTEARRAY(1) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
*/
void QTextCodec_codecForUtfText2 ()
{

      QTextCodec * ptr = QTextCodec::codecForUtfText ( *PQBYTEARRAY(1), PQTEXTCODEC(2) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
}

//[1]static QTextCodec *codecForUtfText(const QByteArray &ba)
//[2]static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForUtfText1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    QTextCodec_codecForUtfText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTCODEC_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTCODEC_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCODEC_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTCODEC_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
