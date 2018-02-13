%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|aboutToUnmanageWidget( QWidget * widget )
$slot=|activated( QWidget * widget )
$slot=|changed()
$slot=|featureChanged( QDesignerFormWindowInterface::Feature feature )
$slot=|fileNameChanged( const QString & fileName )
$slot=|geometryChanged()
$slot=|mainContainerChanged( QWidget * mainContainer )
$slot=|objectRemoved( QObject * object2 )
$slot=|resourceFilesChanged()
$slot=|selectionChanged()
$slot=|widgetManaged( QWidget * widget )
$slot=|widgetRemoved( QWidget * widget )
$slot=|widgetUnmanaged( QWidget * widget )
$endSlotsClass

$signalMethod=|aboutToUnmanageWidget(QWidget*)
$signalMethod=|activated(QWidget*)
$signalMethod=|changed()
$signalMethod=|featureChanged(QDesignerFormWindowInterface::Feature)
$signalMethod=|fileNameChanged(QString)
$signalMethod=|geometryChanged()
$signalMethod=|mainContainerChanged(QWidget*)
$signalMethod=|objectRemoved(QObject*)
$signalMethod=|resourceFilesChanged()
$signalMethod=|selectionChanged()
$signalMethod=|widgetManaged(QWidget*)
$signalMethod=|widgetRemoved(QWidget*)
$signalMethod=|widgetUnmanaged(QWidget*)