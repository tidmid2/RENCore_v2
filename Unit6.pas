unit Unit6;

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
  TForm6 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    adressmagazin: TEdit;
    Panel3: TPanel;
    Label1: TLabel;
    namemagazin: TEdit;
    Panel4: TPanel;
    Label4: TLabel;
    Panel5: TPanel;
    Label5: TLabel;
    mgtypelookup: TDBLookupComboBox;
    mgtypeset: TDataSource;
    mgtype: TFDQuery;
    ownertypelookup: TDBLookupComboBox;
    addmagaz: TFDCommand;
    procedure Button1Click(Sender: TObject);
    procedure namemagazinChange(Sender: TObject);
    procedure adressmagazinChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    magazin,adressmg,mgtyped,ownermg: String;
  end;

var
  Form6: TForm6;

implementation
      uses unit3,unit4,unit5,unit2;
{$R *.dfm}

procedure TForm6.adressmagazinChange(Sender: TObject);
begin
       adressmagazin.Text:= ' ';
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
       magazin:=namemagazin.Text;
       adressmg:=adressmagazin.Text;
       mgtyped:=mgtypelookup.Text;
       ownermg:=ownertypelookup.Text;
       addmagaz.Params[0].AsString:=magazin;
       addmagaz.Params[1].AsString:=adressmg;
       addmagaz.Params[2].AsString:=ownermg;
       addmagaz.Params[3].AsString:=mgtyped;
       addmagaz.Execute;
       Form6.Visible:=False;

       Form2.Label10.Caption:=magazin;
end;

procedure TForm6.namemagazinChange(Sender: TObject);
begin
         namemagazin.Text:= ' ';
end;

end.
