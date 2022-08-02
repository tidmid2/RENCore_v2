unit Unit4;

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
  TRUT = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CreateForm(Sender: TObject);
  private
  var pwdd: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RUT: TRUT;

implementation

{$R *.dfm}
uses Unit5;
procedure TRUT.CreateForm(Sender: TObject);
begin
     FDQuery1.Active:=True;
end;

procedure TRUT.Button1Click(Sender: TObject);
begin
      pwdd:=Edit1.Text;
      if (pwdd=FDQuery1.FieldByName('pwd').AsString) then
      begin
         Form5.Visible := True;
         RUT.Visible := False;
         Edit1.Text:=' '
      end
      else
      begin
        ShowMessage('Ќеправильный пароль или пользователь');
      end;


end;







end.
