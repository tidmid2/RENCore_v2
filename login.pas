unit login;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    FDB: TFDConnection;
    people: TFDQuery;
    peoplesouce: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    trRead: TFDTransaction;
    cxLookupComboBox1: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fdzakaz: String;
  end;

var
  Form4: TForm4    ;


implementation

{$R *.dfm}
uses mainmenu, LinkConnectionUnit;

procedure TForm4.DataModuleCreate(Sender: TObject);
begin
      SetConnectionDM(TDataModule(self), fdb);
end;


procedure TForm4.FormCreate(Sender: TObject);
begin
      people.Active:=true;
end;

procedure TForm4.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  //peoplesource.DataSet := fdzakaz;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
       Form5.Visible := True;
       Form4.Visible := False;

end;


end.
