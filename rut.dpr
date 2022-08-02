program rut;

uses
  Vcl.Forms,
  login in 'login.pas' {Form4},
  mainmenu in 'mainmenu.pas' {Form5},
  newdocument in 'newdocument.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
