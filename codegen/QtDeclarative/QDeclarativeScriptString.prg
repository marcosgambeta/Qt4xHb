%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeContext>

$prototype=QDeclarativeScriptString ()
$internalConstructor=|new1|

$prototype=QDeclarativeScriptString ( const QDeclarativeScriptString & other )
$internalConstructor=|new2|const QDeclarativeScriptString &

/*
[1]QDeclarativeScriptString ()
[2]QDeclarativeScriptString ( const QDeclarativeScriptString & other )
*/

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeScriptString_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVESCRIPTSTRING(1) )
  {
    QDeclarativeScriptString_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=QDeclarativeContext * context() const

$prototypeV2=QObject * scopeObject() const

$prototypeV2=QString script() const

$prototypeV2=void setContext( QDeclarativeContext * context )

$prototypeV2=void setScopeObject( QObject * object )

$prototypeV2=void setScript( const QString & script )

$extraMethods

#pragma ENDDUMP
