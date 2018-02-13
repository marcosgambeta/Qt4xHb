%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|iconChanged()
$slot=|linkClicked( const QUrl & url )
$slot=|loadFinished( bool ok )
$slot=|loadProgress( int progress )
$slot=|loadStarted()
$slot=|statusBarMessage( const QString & text )
$slot=|titleChanged( const QString & title )
$slot=|urlChanged( const QUrl & url )
$endSlotsClass

$signalMethod=|iconChanged()
$signalMethod=|linkClicked(QUrl)
$signalMethod=|loadFinished(bool)
$signalMethod=|loadProgress(int)
$signalMethod=|loadStarted()
$signalMethod=|statusBarMessage(QString)
$signalMethod=|titleChanged(QString)
$signalMethod=|urlChanged(QUrl)