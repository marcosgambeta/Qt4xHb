%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|currentFilterChanged( const QString & newFilter )
$slot=|setupFinished()
$slot=|setupStarted()
$slot=|warning( const QString & msg )
$endSlotsClass

$signalMethod=|currentFilterChanged(QString)
$signalMethod=|setupFinished()
$signalMethod=|setupStarted()
$signalMethod=|warning(QString)