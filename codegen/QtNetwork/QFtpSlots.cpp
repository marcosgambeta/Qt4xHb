%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|commandFinished( int id, bool error )
$slot=|commandStarted( int id )
$slot=|dataTransferProgress( qint64 done, qint64 total )
$slot=|done( bool error )
$slot=|listInfo( const QUrlInfo & i )
$slot=|rawCommandReply( int replyCode, const QString & detail )
$slot=|readyRead()
$slot=|stateChanged( int state )
$endSlotsClass

$signalMethod=|commandFinished(int,bool)
$signalMethod=|commandStarted(int)
$signalMethod=|dataTransferProgress(qint64,qint64)
$signalMethod=|done(bool)
$signalMethod=|listInfo(QUrlInfo)
$signalMethod=|rawCommandReply(int,QString)
$signalMethod=|readyRead()
$signalMethod=|stateChanged(int)