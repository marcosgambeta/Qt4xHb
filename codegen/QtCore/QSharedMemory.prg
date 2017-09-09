$header

#include "hbclass.ch"


CLASS QSharedMemory INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setKey
   METHOD key
   METHOD setNativeKey
   METHOD nativeKey
   METHOD create
   METHOD size
   METHOD attach
   METHOD isAttached
   METHOD detach
   METHOD data
   METHOD lock
   METHOD unlock
   METHOD error
   METHOD errorString
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSharedMemory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSharedMemory(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_NEW1 )
{
  QSharedMemory * o = new QSharedMemory ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QSharedMemory(const QString &key, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_NEW2 )
{
  QSharedMemory * o = new QSharedMemory ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QSharedMemory(QObject *parent = 0)
//[2]QSharedMemory(const QString &key, QObject *parent = 0)

HB_FUNC_STATIC( QSHAREDMEMORY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSHAREDMEMORY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSHAREDMEMORY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setKey(const QString &key)
*/
$method=|void|setKey|const QString &

/*
QString key() const
*/
$method=|QString|key|

/*
void setNativeKey(const QString &key)
*/
$method=|void|setNativeKey|const QString &

/*
QString nativeKey() const
*/
$method=|QString|nativeKey|

/*
bool create(int size, AccessMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_CREATE )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->create ( PINT(1), ISNIL(2)? QSharedMemory::ReadWrite : (QSharedMemory::AccessMode) hb_parni(2) ) );
  }
}


/*
int size() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_SIZE )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->size () );
  }
}


/*
bool attach(AccessMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ATTACH )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->attach ( ISNIL(1)? QSharedMemory::ReadWrite : (QSharedMemory::AccessMode) hb_parni(1) ) );
  }
}


/*
bool isAttached() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ISATTACHED )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAttached () );
  }
}


/*
bool detach()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_DETACH )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->detach () );
  }
}


/*
void *data()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_DATA )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * retptr = obj->data ();
  hb_retptr( (void *) retptr );
  }
}




/*
bool lock()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_LOCK )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->lock () );
  }
}


/*
bool unlock()
*/
HB_FUNC_STATIC( QSHAREDMEMORY_UNLOCK )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->unlock () );
  }
}


/*
SharedMemoryError error() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ERROR )
{
  QSharedMemory * obj = (QSharedMemory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}

/*
QString errorString() const
*/
$method=|QString|errorString|

#pragma ENDDUMP
