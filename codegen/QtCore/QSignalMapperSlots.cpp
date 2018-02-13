%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|mapped( int i )
$slot=|mapped( const QString & s )
$slot=|mapped( QWidget * w )
$slot=|mapped( QObject * o )
$endSlotsClass

$beginGroup
$signalMethod=|mapped(int)
$signalMethod=|mapped(QString)
$signalMethod=|mapped(QWidget*)
$signalMethod=|mapped(QObject*)
$endGroup