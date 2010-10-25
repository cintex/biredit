{-------------------------------------------------------------------------------
BirEdit text editor.
Copyright (C) 2008 Aleksey Tatuyko

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>

You can contact with me by e-mail: tatuich@mail.ru


The Original Code is BirEdit.dpr by Aleksey Tatuyko, released 2008-11-07.
All Rights Reserved.

$Id: BirEdit.dpr,v 1.1.8.201 2008/11/07 12:24:00 maelh Exp $

You may retrieve the latest version of this file at the BirEdit home page,
located at http://BirEdit.FireForge.net
 
 }

program BirEdit;

uses
  Forms,
  uMainFrm in 'uMainFrm.pas' {Editor: TTntForm};

{$R *.res}
{$R fileicon.res}

begin
  Application.Initialize;
  Application.Title:='BirEdit';
  Application.MainFormOnTaskBar:=True;
  Application.CreateForm(TEditor, Editor);
  Application.Run;
end.
