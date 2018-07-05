%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QInputContext>

$deleteMethod

$prototype=QInputContext * create ( const QString & key, QObject * parent )
$method=|QInputContext *|create|const QString &,QObject *

$prototype=static QString description ( const QString & key )
$staticMethod=|QString|description|const QString &

$prototype=static QString displayName ( const QString & key )
$staticMethod=|QString|displayName|const QString &

$prototype=static QStringList keys ()
$staticMethod=|QStringList|keys|

$prototype=static QStringList languages ( const QString & key )
$staticMethod=|QStringList|languages|const QString &

$extraMethods

#pragma ENDDUMP
