$header

#include "hbclass.ch"

CLASS QTextDecoder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toUnicode

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextDecoder>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextDecoder(const QTextCodec * codec)
*/
$internalConstructor=|new1|const QTextCodec *

/*
QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)
*/
$internalConstructor=|new2|const QTextCodec *,QTextCodec::ConversionFlags

//[1]QTextDecoder(const QTextCodec * codec)
//[2]QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)

HB_FUNC_STATIC( QTEXTDECODER_NEW )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QTextDecoder_new1();
  }
  else if( ISNUMPAR(2) && ISQTEXTCODEC(1) && ISNUM(2) )
  {
    QTextDecoder_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString toUnicode(const char * chars, int len)
*/
$internalMethod=|QString|toUnicode,toUnicode1|const char *,int

/*
void toUnicode(QString * target, const char * chars, int len)
*/
$internalMethod=|void|toUnicode,toUnicode2|QString *,const char *,int

/*
QString toUnicode(const QByteArray & ba)
*/
$internalMethod=|QString|toUnicode,toUnicode3|const QByteArray &

//[1]QString toUnicode(const char * chars, int len)
//[2]void toUnicode(QString * target, const char * chars, int len)
//[3]QString toUnicode(const QByteArray & ba)

HB_FUNC_STATIC( QTEXTDECODER_TOUNICODE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QTextDecoder_toUnicode1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) )
  {
    QTextDecoder_toUnicode2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextDecoder_toUnicode3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
