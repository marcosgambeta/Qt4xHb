%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD argument
   METHOD argumentCount
   METHOD context
   METHOD engine
   METHOD thisObject

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScriptValue>
#include <QScriptEngine>

$deleteMethod

$prototype=QScriptValue argument ( int index ) const
$method=|QScriptValue|argument|int

$prototype=int argumentCount () const
$method=|int|argumentCount|

$prototype=QScriptContext * context () const
$method=|QScriptContext *|context|

$prototype=QScriptEngine * engine () const
$method=|QScriptEngine *|engine|

$prototype=QScriptValue thisObject () const
$method=|QScriptValue|thisObject|

$extraMethods

#pragma ENDDUMP
