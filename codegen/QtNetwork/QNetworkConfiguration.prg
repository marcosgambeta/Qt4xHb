%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD bearerName
   METHOD bearerType
   METHOD bearerTypeName
   METHOD children
   METHOD identifier
   METHOD isRoamingAvailable
   METHOD isValid
   METHOD name
   METHOD purpose
   METHOD state
   METHOD type

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkConfiguration ()
$internalConstructor=|new1|

$prototype=QNetworkConfiguration ( const QNetworkConfiguration & other )
$internalConstructor=|new2|const QNetworkConfiguration &

//[1]QNetworkConfiguration ()
//[2]QNetworkConfiguration ( const QNetworkConfiguration & other )

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkConfiguration_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    QNetworkConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString bearerName () const (deprecated)
$method=|QString|bearerName|

$prototype=BearerType bearerType () const
$method=|QNetworkConfiguration::BearerType|bearerType|

$prototype=QString bearerTypeName () const
$method=|QString|bearerTypeName|

$prototype=QList<QNetworkConfiguration> children () const
$method=|QList<QNetworkConfiguration>|children|

$prototype=QString identifier () const
$method=|QString|identifier|

$prototype=bool isRoamingAvailable () const
$method=|bool|isRoamingAvailable|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString name () const
$method=|QString|name|

$prototype=Purpose purpose () const
$method=|QNetworkConfiguration::Purpose|purpose|

$prototype=StateFlags state () const
$method=|QNetworkConfiguration::StateFlags|state|

$prototype=Type type () const
$method=|QNetworkConfiguration::Type|type|

$extraMethods

#pragma ENDDUMP
