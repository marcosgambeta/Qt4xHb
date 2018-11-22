%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QReadWriteLock ()
$internalConstructor=|new1|

$prototype=QReadWriteLock ( RecursionMode recursionMode )
$internalConstructor=|new2|QReadWriteLock::RecursionMode

//[1]QReadWriteLock ()
//[2]QReadWriteLock ( RecursionMode recursionMode )

HB_FUNC_STATIC( QREADWRITELOCK_NEW )
{
  if( ISNUMPAR(0) )
  {
    QReadWriteLock_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QReadWriteLock_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void lockForRead ()
$method=|void|lockForRead|

$prototype=void lockForWrite ()
$method=|void|lockForWrite|

$prototype=bool tryLockForRead ()
$internalMethod=|bool|tryLockForRead,tryLockForRead1|

$prototype=bool tryLockForRead ( int timeout )
$internalMethod=|bool|tryLockForRead,tryLockForRead2|int

//[1]bool tryLockForRead ()
//[2]bool tryLockForRead ( int timeout )

HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORREAD )
{
  if( ISNUMPAR(0) )
  {
    QReadWriteLock_tryLockForRead1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QReadWriteLock_tryLockForRead2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=tryLockForRead

$prototype=bool tryLockForWrite ()
$internalMethod=|bool|tryLockForWrite,tryLockForWrite1|

$prototype=bool tryLockForWrite ( int timeout )
$internalMethod=|bool|tryLockForWrite,tryLockForWrite2|int

//[1]bool tryLockForWrite ()
//[2]bool tryLockForWrite ( int timeout )

HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORWRITE )
{
  if( ISNUMPAR(0) )
  {
    QReadWriteLock_tryLockForWrite1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QReadWriteLock_tryLockForWrite2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=tryLockForWrite

$prototype=void unlock ()
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP
