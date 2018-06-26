%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD isActive
   METHOD queryAccessibleInterface
   METHOD setRootObject
   METHOD updateAccessibility

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=static bool isActive ()
$staticMethod=|bool|isActive|

$prototype=static QAccessibleInterface * queryAccessibleInterface ( QObject * object )
$staticMethod=|QAccessibleInterface *|queryAccessibleInterface|QObject *

$prototype=static void setRootObject ( QObject * object )
$staticMethod=|void|setRootObject|QObject *

$prototype=static void updateAccessibility ( QObject * object, int child, Event reason )
$staticMethod=|void|updateAccessibility|QObject *,int,QAccessible::Event

$extraMethods

#pragma ENDDUMP
