(*  ==== INTERPRETER LINK/LOADER ====
 *
 *  Copyright 2013 Ravenbrook Limited <http://www.ravenbrook.com/>.
 *  All rights reserved.
 *  
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are
 *  met:
 *  
 *  1. Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *  
 *  2. Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *  
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 *  IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 *  TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 *  PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 *  HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 *  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 *  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 *  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 *  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *  Revision Log
 *  ------------
 *  $Log: __interload.sml,v $
 *  Revision 1.4  1994/06/09 16:00:04  nickh
 *  New runtime directory structure.
 *
 *  Revision 1.3  1994/03/08  17:41:12  jont
 *  Moving module types into separate file
 *
 *  Revision 1.2  1993/01/04  15:22:21  daveb
 *  Added ObjectFile_ parameter.
 *
 *  Revision 1.1  1992/10/09  07:40:40  richard
 *  Initial revision
 *
 *)

require "../main/__code_module";
require "../rts/gen/__objectfile";
require "../utils/__lists";
require "__inter_envtypes";
require "_interload";

structure InterLoad_ =
  InterLoad (
    structure Code_Module = Code_Module_
    structure Inter_EnvTypes = Inter_EnvTypes_
    structure ObjectFile = ObjectFile_
    structure Lists = Lists_
  );
