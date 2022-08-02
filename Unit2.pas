unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt,Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxLabel, cxDBLabel,
  Vcl.Buttons;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    contr: TFDQuery;
    contrset: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel5: TPanel;
    Label12: TLabel;
    Panel6: TPanel;
    DBLookupComboBox3: TDBLookupComboBox;
    Panel7: TPanel;
    Label6: TLabel;
    Button3: TButton;
    Panel8: TPanel;
    DBLookupComboBox4: TDBLookupComboBox;
    Panel9: TPanel;
    Label7: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel10: TPanel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    cxDBLabel1: TcxDBLabel;
    Label10: TLabel;
    addnewdoc: TFDCommand;
    Label14: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button1Click2(Sender: TObject);
    procedure Button1Click3(Sender: TObject);
    procedure addmagazine(Sender: TObject);
  private

    { Private declarations }
  public
  var peopl,idcont,comme: String;
    { Public declarations }
  end;

var
  Form2: TForm2;


implementation
      uses unit5,unit4,unit3,unit6;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
       Form3.Visible:=True;
end;

procedure TForm2.addmagazine(Sender: TObject);
begin
       Form6.mgtype.Active:= True;
       contr.Active:= True;
       Form6.Visible:=True;
end;

procedure TForm2.Button1Click2(Sender: TObject);
begin
        peopl:=label9.Caption;
        idcont:=label10.Caption;
        if (label10.Caption=' ') then
       begin
        Form6.Visible:=True;
       end;
       if (label9.Caption=' ') then
       begin
        Form3.Visible:=True;
       end
       else
       begin
          addnewdoc.Params[0].AsString:=peopl;
          addnewdoc.Params[1].AsString:=idcont;
          addnewdoc.Params[2].AsString:='0';//addnewdoc.Params[2].AsString:=comme;
          //addnewdoc.Params[3].AsInteger:=2;
          addnewdoc.Execute;
          Form2.Visible:=False;
          ShowMessage('Договор успешно оформлен');
       end;

end;


procedure TForm2.Button1Click3(Sender: TObject);
begin
        ShowMessage('Находится в Разработке');
        {if (label10.Caption<>' ') then
       begin
        Form6.Visible:=True;
       end;
       if (label9.Caption<>' ') then
       begin
          Form3.Visible:=True;
       end
       else
       begin
          addnewdoc.Params[0].AsString:=idown;
          addnewdoc.Params[1].AsString:=idcont;
          addnewdoc.Params[2].AsString:=comme;
          addnewdoc.Params[3].AsInteger:=2;
         addnewdoc.Execute;
       end; }

end;

end.
