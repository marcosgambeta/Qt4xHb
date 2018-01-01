/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QFileSystemWatcher INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addPath
   METHOD addPaths
   METHOD directories
   METHOD files
   METHOD removePath
   METHOD removePaths

   METHOD onDirectoryChanged
   METHOD onFileChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileSystemWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFileSystemWatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QFileSystemWatcher(QObject * parent = 0)
*/
void QFileSystemWatcher_new1 ()
{
  QFileSystemWatcher * o = new QFileSystemWatcher ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

/*
QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
*/
void QFileSystemWatcher_new2 ()
{
  QFileSystemWatcher * o = new QFileSystemWatcher ( PQSTRINGLIST(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

//[1]QFileSystemWatcher(QObject * parent = 0)
//[2]QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)

HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QFileSystemWatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QFileSystemWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILESYSTEMWATCHER_DELETE )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPath ( const QString & path )
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_ADDPATH )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->addPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_ADDPATHS )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->addPaths ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList directories () const
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_DIRECTORIES )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->directories () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList files () const
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_FILES )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->files () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removePath ( const QString & path )
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_REMOVEPATH )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->removePath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removePaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QFILESYSTEMWATCHER_REMOVEPATHS )
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->removePaths ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
