%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|currentLoopChanged( int currentLoop )
$slot=|directionChanged( QAbstractAnimation::Direction newDirection )
$slot=|finished()
$slot=|stateChanged( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
$endSlotsClass

$signalMethod=|currentLoopChanged(int)
$signalMethod=|directionChanged(QAbstractAnimation::Direction)
$signalMethod=|finished()
$signalMethod=|stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)