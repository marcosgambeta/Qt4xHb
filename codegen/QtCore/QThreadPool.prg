$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTHREADPOOL
#endif

CLASS QThreadPool INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeThreadCount
   METHOD expiryTimeout
   METHOD maxThreadCount
   METHOD releaseThread
   METHOD reserveThread
   METHOD setExpiryTimeout
   METHOD setMaxThreadCount
   METHOD start
   METHOD tryStart
   METHOD waitForDone
   METHOD globalInstance

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QThreadPool>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QThreadPool ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
int activeThreadCount () const
*/
$method=|int|activeThreadCount|

/*
int expiryTimeout () const
*/
$method=|int|expiryTimeout|

/*
int maxThreadCount () const
*/
$method=|int|maxThreadCount|

/*
void releaseThread ()
*/
$method=|void|releaseThread|

/*
void reserveThread ()
*/
$method=|void|reserveThread|

/*
void setExpiryTimeout ( int expiryTimeout )
*/
$method=|void|setExpiryTimeout|int

/*
void setMaxThreadCount ( int maxThreadCount )
*/
$method=|void|setMaxThreadCount|int

/*
void start ( QRunnable * runnable, int priority = 0 )
*/
$method=|void|start|QRunnable *,int=0

/*
bool tryStart ( QRunnable * runnable )
*/
$method=|bool|tryStart|QRunnable *

/*
void waitForDone ()
*/
$internalMethod=|void|waitForDone,waitForDone1|

/*
bool waitForDone ( int msecs )
*/
$internalMethod=|bool|waitForDone,waitForDone2|int

//[1]void waitForDone ()
//[2]bool waitForDone ( int msecs )

HB_FUNC_STATIC( QTHREADPOOL_WAITFORDONE )
{
  if( ISNUMPAR(0) )
  {
    QThreadPool_WaitForDone1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QThreadPool_WaitForDone2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QThreadPool * globalInstance ()
*/
$staticMethod=|QThreadPool *|globalInstance|

#pragma ENDDUMP
