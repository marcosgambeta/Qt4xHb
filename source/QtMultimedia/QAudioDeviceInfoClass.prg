/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAudioDeviceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD deviceName
   METHOD isFormatSupported
   METHOD isNull
   METHOD nearestFormat
   METHOD preferredFormat
   METHOD supportedFrequencies
   METHOD supportedSampleRates
   METHOD supportedChannels
   METHOD supportedChannelCounts
   METHOD supportedSampleSizes
   METHOD supportedByteOrders
   METHOD supportedSampleTypes
   METHOD supportedCodecs
   METHOD availableDevices
   METHOD defaultInputDevice
   METHOD defaultOutputDevice

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioDeviceInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAudioDeviceInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAudioDeviceInfo ()
*/
void QAudioDeviceInfo_new1 ()
{
  QAudioDeviceInfo * o = new QAudioDeviceInfo ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QAudioDeviceInfo ( const QAudioDeviceInfo & other )
*/
void QAudioDeviceInfo_new2 ()
{
  QAudioDeviceInfo * o = new QAudioDeviceInfo ( *PQAUDIODEVICEINFO(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QAudioDeviceInfo ()
//[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioDeviceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    QAudioDeviceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_DELETE )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString deviceName () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEVICENAME )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->deviceName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFormatSupported ( const QAudioFormat & settings ) const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_ISFORMATSUPPORTED )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
      RBOOL( obj->isFormatSupported ( *PQAUDIOFORMAT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_ISNULL )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isNull () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAudioFormat nearestFormat ( const QAudioFormat & settings ) const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_NEARESTFORMAT )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
      QAudioFormat * ptr = new QAudioFormat( obj->nearestFormat ( *PQAUDIOFORMAT(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QAUDIOFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAudioFormat preferredFormat () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_PREFERREDFORMAT )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAudioFormat * ptr = new QAudioFormat( obj->preferredFormat () );
      _qt4xhb_createReturnClass ( ptr, "QAUDIOFORMAT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> supportedFrequencies() const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDFREQUENCIES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<int> list = obj->supportedFrequencies ();
      _qt4xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> supportedSampleRates () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLERATES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<int> list = obj->supportedSampleRates ();
      _qt4xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> supportedChannels() const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCHANNELS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<int> list = obj->supportedChannels ();
      _qt4xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> supportedChannelCounts () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCHANNELCOUNTS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<int> list = obj->supportedChannelCounts ();
      _qt4xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<int> supportedSampleSizes () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLESIZES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<int> list = obj->supportedSampleSizes ();
      _qt4xhb_convert_qlist_int_to_array ( list );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QAudioFormat::Endian> supportedByteOrders () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDBYTEORDERS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QAudioFormat::Endian> list = obj->supportedByteOrders ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QAudioFormat::SampleType> supportedSampleTypes () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLETYPES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QAudioFormat::SampleType> list = obj->supportedSampleTypes ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList supportedCodecs () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCODECS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->supportedCodecs () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QList<QAudioDeviceInfo> availableDevices ( QAudio::Mode mode )
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_AVAILABLEDEVICES )
{
    if( ISNUMPAR(1) && ISNUM(1) )
  {
      QList<QAudioDeviceInfo> list = QAudioDeviceInfo::availableDevices ( (QAudio::Mode) hb_parni(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QAUDIODEVICEINFO" );
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
          hb_itemPutPtr( pItem, (QAudioDeviceInfo *) new QAudioDeviceInfo ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QAUDIODEVICEINFO", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QAudioDeviceInfo defaultInputDevice ()
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEFAULTINPUTDEVICE )
{
    if( ISNUMPAR(0) )
  {
      QAudioDeviceInfo * ptr = new QAudioDeviceInfo( QAudioDeviceInfo::defaultInputDevice () );
      _qt4xhb_createReturnClass ( ptr, "QAUDIODEVICEINFO", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QAudioDeviceInfo defaultOutputDevice ()
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEFAULTOUTPUTDEVICE )
{
    if( ISNUMPAR(0) )
  {
      QAudioDeviceInfo * ptr = new QAudioDeviceInfo( QAudioDeviceInfo::defaultOutputDevice () );
      _qt4xhb_createReturnClass ( ptr, "QAUDIODEVICEINFO", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEWFROM )
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

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAUDIODEVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAUDIODEVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_SETSELFDESTRUCTION )
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
