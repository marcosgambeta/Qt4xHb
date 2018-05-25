%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAnimationGroup

   METHOD new
   METHOD delete
   METHOD duration

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QParallelAnimationGroup ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual int duration () const
$virtualMethod=|int|duration|

#pragma ENDDUMP
