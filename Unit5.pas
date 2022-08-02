unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.DBCGrids, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls,
  Vcl.StdCtrls, AdvLabel, DBAdvLabel, dxGDIPlusClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel, cxDBLabel;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
    TimeShowLabel: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image4: TImage;
    cxDBLabel1: TcxDBLabel;
    Timer1: TTimer;
    Label1: TLabel;
      //попытка с висибл
      //procedure FormCreate(Sender: TObject);
      //procedure Timer1Timer(Sender: TObject);}
      //procedure FormDeactivate(Sender: TObject);
      //procedure FormActivate(Sender: TObject);
     //function CurTime(rw: Boolean = true; wt: Boolean = true): Double;
     procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
    iscurtime: Boolean;
  public
    { Public declarations }

    CnClose: Boolean;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
uses unit1,unit4,unit2;



  //попытка с висибл
// procedure TForm5.FormCreate(Sender: TObject);
//begin
//  Form3.AlphaBlend := True;
//  Form3.AlphaBlendValue := 0;
//end;

{procedure TForm5.FormActivate(Sender: TObject);
begin
  Timer1.Enabled := true;
 // Form3.Visible := true;
end;

procedure TForm5.FormDeactivate(Sender: TObject);
begin
  Timer1.Enabled := false;
 // Form3.Visible := false;
end;   }

{procedure TForm5.Timer1Timer(Sender: TObject);
begin

  if TForm3.Visible = false then


end;  }

procedure TForm5.Button1Click(Sender: TObject);
begin
        Form2.Visible := True;

end;

{function TForm5.CurTime(rw: Boolean = true; wt: Boolean = true): Double;
var
  Tx: TextFile;
begin
  assignfile(Tx, 'curtm');
  if (rw = true) and (iscurtime = false) then
  begin
    iscurtime := true;
    rewrite(Tx);
    if wt then
      write(Tx, now)
    else
      write(Tx, 0);
    CloseFile(Tx);
  end
  else if rw = false then
  begin
    Reset(Tx);
    Read(Tx, Result);
    CloseFile(Tx);
  end;

  iscurtime := false;
end; }



procedure TForm5.Timer1Timer(Sender: TObject);
var datetime: TDateTime;
begin
  if Form5.Visible=True then
  begin
    datetime:=Now;
    TimeShowLabel.Caption:= TimeToStr(datetime);
  end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
        ShowMessage('Находится в Разработке');
end;

procedure TForm5.Image2Click(Sender: TObject);
begin
  if MessageDlg('Закрыть программу?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;

end;


procedure TForm5.Image4Click(Sender: TObject);
begin
  if MessageDlg('Вы хотите выйти?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        //Form4.Edit1.Text:=' ';
        Form5.Visible := False;
        RUt.Visible := True;
    end;
end;

end.
