$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
#endif

CLASS QSslError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD certificate
   METHOD error
   METHOD errorString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSslError>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSslError ()
$internalConstructor=|new1|

$prototype=QSslError ( SslError error )
$internalConstructor=|new2|QSslError::SslError

$prototype=QSslError ( SslError error, const QSslCertificate & certificate )
$internalConstructor=|new3|QSslError::SslError,const QSslCertificate &

$prototype=QSslError ( const QSslError & other )
$internalConstructor=|new4|const QSslError &

//[1]QSslError ()
//[2]QSslError ( SslError error )
//[3]QSslError ( SslError error, const QSslCertificate & certificate )
//[4]QSslError ( const QSslError & other )

HB_FUNC_STATIC( QSSLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslError_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslError_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSSLCERTIFICATE(2) )
  {
    QSslError_new3();
  }
  else if( ISNUMPAR(1) && ISQSSLERROR(1) )
  {
    QSslError_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSslCertificate certificate () const
$method=|QSslCertificate|certificate|

$prototype=SslError error () const
$method=|QSslError::SslError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$extraMethods

#pragma ENDDUMP
