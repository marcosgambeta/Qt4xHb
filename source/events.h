/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef EVENTS_H
#define EVENTS_H

#include <QtCore/QObject>
#include <QtCore/QEvent>
#include <QtCore/QList>
#include <QtCore/QCoreApplication>
#include <QtCore/QMutex>
#include <QtCore/QMetaEnum>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Events_connect_event( QObject * object, int type, PHB_ITEM codeblock );
bool Events_disconnect_event( QObject * object, int type );
void Events_release_codeblocks();
void Events_disconnect_all_events( QObject * obj, bool children );
PHB_ITEM Events_return_object( QEvent * ptr, const char * classname );
PHB_ITEM Events_return_qobject( QObject * ptr, const char * classname );

class Events: public QObject
{
  public:
  Events( QObject *parent = 0 );
  ~Events();
  QList<QObject*> list1;     // armazena ponteiro do objeto
  QList<QEvent::Type> list2; // armazena tipo de evento
  QList<PHB_ITEM> list3;     // armazena codeblock
  QMutex * mutex;

  protected:
  bool eventFilter( QObject *obj, QEvent *event );
};

#endif
