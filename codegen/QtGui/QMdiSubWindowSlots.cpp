%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|aboutToActivate()
$slot=|windowStateChanged( Qt::WindowStates oldState, Qt::WindowStates newState )
$endSlotsClass

$signalMethod=|aboutToActivate()
$signalMethod=|windowStateChanged(Qt::WindowStates,Qt::WindowStates)