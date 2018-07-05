%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDateTimeEdit

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDateEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QDateEdit ( const QDate & date, QWidget * parent = 0 )
$internalConstructor=|new2|const QDate &,QWidget *=0

//[1]QDateEdit ( QWidget * parent = 0 )
//[2]QDateEdit ( const QDate & date, QWidget * parent = 0 )

HB_FUNC_STATIC( QDATEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDateEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDateEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
