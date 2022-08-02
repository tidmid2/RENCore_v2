unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit;
type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    iinbiin: TEdit;
    namecont: TEdit;
    surnamecont: TEdit;
    numbercont: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    addcontr: TFDCommand;
    procedure Button1Click(Sender: TObject);
    procedure iinbiinClick(Sender: TObject);
    procedure namecontClick(Sender: TObject);
    procedure surnamecontClick(Sender: TObject);
    procedure numbercontClick(Sender: TObject);
  private
    { Private declarations }
  public
  var
    //iin,nomer: Integer;
    nameñ,surname,iin,nomer: String;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
  uses unit5,unit4,unit2;
{$R *.dfm}



procedure TForm3.Button1Click(Sender: TObject);
begin
      // Form3.Visible:=False;



       iin:=iinbiin.Text;
       nomer:=numbercont.Text;
       nameñ:=namecont.Text;
       if surnamecont.Text='Ôàìèëèÿ' then
       begin
          surname:=' ';
       end
       else
       begin
         surname:=surnamecont.Text;
       end;


       addcontr.Params[1].AsString:=iin;
       addcontr.Params[0].AsString:=nameñ;
       addcontr.Params[2].AsString:=surname;
       addcontr.Params[3].AsString:=nomer;
       addcontr.Execute;

       Form3.Visible:=False;
       Form2.Label9.Caption:=iin;
       Form2.Label11.Caption:=nameñ;
       Form2.Label13.Caption:=surname;



//       ShowMessage(iin);
//       ShowMessage(nomer);
//       ShowMessage(name);
//       ShowMessage(surname);
end;


procedure TForm3.iinbiinClick(Sender: TObject);
begin
     iinbiin.Text:=' ';
end;

procedure TForm3.namecontClick(Sender: TObject);
begin
       namecont.Text:=' ';
end;

procedure TForm3.numbercontClick(Sender: TObject);
begin
      numbercont.Text:=' ';
end;


procedure TForm3.surnamecontClick(Sender: TObject);
begin
    surnamecont.Text:=' ';
end;

end.
