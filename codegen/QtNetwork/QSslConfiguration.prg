%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QSslKey>
#include <QtNetwork/QSslCipher>

$prototype=QSslConfiguration ()
$internalConstructor=|new1|

$prototype=QSslConfiguration ( const QSslConfiguration & other )
$internalConstructor=|new2|const QSslConfiguration &

/*
[1]QSslConfiguration ()
[2]QSslConfiguration ( const QSslConfiguration & other )
*/

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslConfiguration_new1();
  }
  if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
    QSslConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QList<QSslCertificate> caCertificates() const

$prototypeV2=QList<QSslCipher> ciphers() const

$prototypeV2=bool isNull() const

$prototypeV2=QSslCertificate localCertificate() const

$prototypeV2=QSslCertificate peerCertificate() const

$prototypeV2=QList<QSslCertificate> peerCertificateChain() const

$prototypeV2=int peerVerifyDepth() const

$prototypeV2=QSslSocket::PeerVerifyMode peerVerifyMode() const

$prototypeV2=QSslKey privateKey() const

$prototypeV2=QSsl::SslProtocol protocol() const

$prototypeV2=QSslCipher sessionCipher() const

$prototype=void setCaCertificates ( const QList<QSslCertificate> & certificates )
$method=|void|setCaCertificates|const QList<QSslCertificate> &

$prototype=void setCiphers ( const QList<QSslCipher> & ciphers )
$method=|void|setCiphers|const QList<QSslCipher> &

$prototype=void setLocalCertificate ( const QSslCertificate & certificate )
$method=|void|setLocalCertificate|const QSslCertificate &

$prototype=void setPeerVerifyDepth ( int depth )
$method=|void|setPeerVerifyDepth|int

$prototype=void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
$method=|void|setPeerVerifyMode|QSslSocket::PeerVerifyMode

$prototype=void setPrivateKey ( const QSslKey & key )
$method=|void|setPrivateKey|const QSslKey &

$prototype=void setProtocol ( QSsl::SslProtocol protocol )
$method=|void|setProtocol|QSsl::SslProtocol

$prototypeV2=static QSslConfiguration defaultConfiguration()

$prototype=static void setDefaultConfiguration ( const QSslConfiguration & configuration )
$staticMethod=|void|setDefaultConfiguration|const QSslConfiguration &

$extraMethods

#pragma ENDDUMP
