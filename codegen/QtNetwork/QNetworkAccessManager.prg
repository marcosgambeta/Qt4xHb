$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QABSTRACTNETWORKCACHE
REQUEST QNETWORKCOOKIEJAR
REQUEST QNETWORKREPLY
REQUEST QNETWORKPROXY
REQUEST QNETWORKPROXYFACTORY
#endif

CLASS QNetworkAccessManager INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD activeConfiguration
   METHOD cache
   METHOD configuration
   METHOD cookieJar
   METHOD deleteResource
   METHOD get
   METHOD head
   METHOD networkAccessible
   METHOD post1
   METHOD post2
   METHOD post
   METHOD proxy
   METHOD proxyFactory
   METHOD put1
   METHOD put2
   METHOD put
   METHOD sendCustomRequest
   METHOD setCache
   METHOD setConfiguration
   METHOD setCookieJar
   METHOD setNetworkAccessible
   METHOD setProxy
   METHOD setProxyFactory
   METHOD onAuthenticationRequired
   METHOD onFinished
   METHOD onNetworkAccessibleChanged
   METHOD onProxyAuthenticationRequired
   METHOD onSslErrors
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkAccessManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QNetworkAccessManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QNetworkConfiguration>
#include <QNetworkProxy>

/*
QNetworkAccessManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NEW )
{
  QNetworkAccessManager * o = new QNetworkAccessManager ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QNetworkConfiguration activeConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ACTIVECONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->activeConfiguration () );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
QAbstractNetworkCache * cache () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractNetworkCache * ptr = obj->cache ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTNETWORKCACHE" );
  }
}


/*
QNetworkConfiguration configuration () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration () );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
QNetworkCookieJar * cookieJar () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_COOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkCookieJar * ptr = obj->cookieJar ();
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCOOKIEJAR" );
  }
}


/*
QNetworkReply * deleteResource ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETERESOURCE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkReply * ptr = obj->deleteResource ( *PQNETWORKREQUEST(1) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
QNetworkReply * get ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_GET )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkReply * ptr = obj->get ( *PQNETWORKREQUEST(1) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
QNetworkReply * head ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_HEAD )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkReply * ptr = obj->head ( *PQNETWORKREQUEST(1) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
NetworkAccessibility networkAccessible () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->networkAccessible () );
  }
}


/*
QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST1 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkReply * ptr = obj->post ( *PQNETWORKREQUEST(1), PQIODEVICE(2) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST2 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkReply * ptr = obj->post ( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


//[1]QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_POST1 );
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_POST2 );
  }
}

/*
QNetworkProxy proxy () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy () );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
  }
}


/*
QNetworkProxyFactory * proxyFactory () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkProxyFactory * ptr = obj->proxyFactory ();
    _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXYFACTORY" );
  }
}


/*
QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT1 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkReply * ptr = obj->put ( *PQNETWORKREQUEST(1), PQIODEVICE(2) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT2 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkReply * ptr = obj->put ( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


//[1]QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_PUT1 );
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_PUT2 );
  }
}

/*
QNetworkReply * sendCustomRequest ( const QNetworkRequest & request, const QByteArray & verb, QIODevice * data = 0 )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SENDCUSTOMREQUEST )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par3 = ISNIL(3)? 0 : (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QNetworkReply * ptr = obj->sendCustomRequest ( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2), par3 );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
void setCache ( QAbstractNetworkCache * cache )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractNetworkCache * par1 = (QAbstractNetworkCache *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCache ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setConfiguration ( const QNetworkConfiguration & config )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setConfiguration ( *PQNETWORKCONFIGURATION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCookieJar ( QNetworkCookieJar * cookieJar )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCOOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkCookieJar * par1 = (QNetworkCookieJar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCookieJar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessible ( NetworkAccessibility accessible )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETNETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNetworkAccessible ( (QNetworkAccessManager::NetworkAccessibility) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProxy ( const QNetworkProxy & proxy )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setProxy ( *PQNETWORKPROXY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProxyFactory ( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkProxyFactory * par1 = (QNetworkProxyFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProxyFactory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP