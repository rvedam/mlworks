(* Copyright (C) 1999 Harlequin Ltd.  All rights reserved.
 *
 * Interface to process termination.
 * This provides a set of MLWorks-specific exit codes, and
 * OS-specific exit/terminate functions.
 * 
 * We don't use OS.Process directly because it can't provide
 * the application-specific status values.
 *
 * Any type/value that shares a name with one in OS.Process behaves 
 * according to the description of that type/value in OS.Process.
 *
 * For more information on the additional error codes see where they are
 * used (mainly main/_batch.sml) since their names and values were initially 
 * based on the context in which they were used and the integer values
 * used in that context.
 * 
 * Revision Log
 * ------------
 *
 * $Log: mlworks_exit.sml,v $
 * Revision 1.1  1999/05/13 16:07:05  daveb
 * new unit
 * New unit.
 *
 *
 *)

signature MLWORKS_EXIT =
  sig
    type status

    val success : status

    val failure : status

    val uncaughtIOException : status

    val badUsage : status

    val stop : status

    val save : status

    val badInput : status

    val exit : status -> 'a

  end