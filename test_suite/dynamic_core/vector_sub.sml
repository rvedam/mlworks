(*

Result: OK
 
$Log: vector_sub.sml,v $
Revision 1.5  1998/02/18 11:56:00  mitchell
[Bug #30349]
Fix test to avoid non-unit sequence warning

 * Revision 1.4  1997/05/28  12:16:14  jont
 * [Bug #30090]
 * Remove uses of MLWorks.IO
 *
 * Revision 1.3  1996/05/08  12:19:51  jont
 * Vectors have moved
 *
 * Revision 1.2  1996/05/01  17:21:24  jont
 * Fixing up after changes to toplevel visible string and io stuff
 *
 * Revision 1.1  1993/03/30  11:40:40  jont
 * Initial revision
 *

Copyright 2013 Ravenbrook Limited <http://www.ravenbrook.com/>.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)

val a = MLWorks.Internal.Vector.vector[0,1,2,3,4,5,6,7,8,9]

val _ =
  if MLWorks.Internal.Vector.sub(a, 0) = 0 andalso
    MLWorks.Internal.Vector.sub(a, 1) = 1 andalso
    MLWorks.Internal.Vector.sub(a, 2) = 2 andalso
    MLWorks.Internal.Vector.sub(a, 3) = 3 andalso
    MLWorks.Internal.Vector.sub(a, 4) = 4 andalso
    MLWorks.Internal.Vector.sub(a, 5) = 5 andalso
    MLWorks.Internal.Vector.sub(a, 6) = 6 andalso
    MLWorks.Internal.Vector.sub(a, 7) = 7 andalso
    MLWorks.Internal.Vector.sub(a, 8) = 8 andalso
    MLWorks.Internal.Vector.sub(a, 9) = 9 then
    print"Pass1\n"
  else
    print"Fail1\n"

val _ =
  (ignore(MLWorks.Internal.Vector.sub(a, ~1));
   print"Fail2.1\n") handle MLWorks.Internal.Vector.Subscript =>
  ((ignore(MLWorks.Internal.Vector.sub(a, 10));
    print"Fail2.2\n") handle MLWorks.Internal.Vector.Subscript =>
   print"Pass2\n")
