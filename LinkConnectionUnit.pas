unit LinkConnectionUnit;

interface

uses FireDAC.Comp.Client, Data.DB, Vcl.Forms, System.Classes, System.SysUtils;

type
  TQr = class(TFDQuery)
    procedure beforeact(DataSet: TDataSet);
    procedure afteract(DataSet: TDataSet);
    procedure onPosterr(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  end;

type
  TCmd = class(TFDCommand)
    procedure beforecmd(Sender: TObject);
    procedure aftercmd(Sender: TObject);
    procedure onErr(ASender, AInitiator: TObject; var AException: Exception);
  end;

procedure setConnection(frm: TForm; fdb: TFDConnection);

procedure setConnectionDM(frm: TDataModule; fdb: TFDConnection);

implementation

procedure setConnection(frm: TForm; fdb: TFDConnection);
var
  i: Integer;
  Qr: TQr;
  cmd: TCmd;
begin
  for i := 0 to frm.ComponentCount - 1 do
  begin
    if frm.Components[i] is TFDQuery then
    begin
      TFDQuery(frm.Components[i]).Connection := fdb;
      TFDQuery(frm.Components[i]).Transaction := fdb.Transaction;
      if TFDQuery(frm.Components[i]).UpdateOptions.ReadOnly = false then
      begin

        TFDQuery(frm.Components[i]).UpdateTransaction := fdb.UpdateTransaction;
        if TFDQuery(frm.Components[i]).CachedUpdates = false then
        begin
          TFDQuery(frm.Components[i]).BeforePost := Qr.beforeact;
          TFDQuery(frm.Components[i]).BeforeDelete := Qr.beforeact;
          TFDQuery(frm.Components[i]).AfterPost := Qr.afteract;
          TFDQuery(frm.Components[i]).AfterDelete := Qr.afteract;
          TFDQuery(frm.Components[i]).OnPostError := Qr.onPosterr;
          TFDQuery(frm.Components[i]).OnDeleteError := Qr.onPosterr;
          TFDQuery(frm.Components[i]).OnEditError := Qr.onPosterr;
        end;
      end;
    end
    else if frm.Components[i] is TFDCommand then
    begin

      TFDCommand(frm.Components[i]).Connection := fdb;
      TFDCommand(frm.Components[i]).Transaction := fdb.UpdateTransaction;
      TFDCommand(frm.Components[i]).OnError := cmd.onErr;
      TFDCommand(frm.Components[i]).BeforePrepare := cmd.beforecmd;
      TFDCommand(frm.Components[i]).AfterExecute := cmd.aftercmd;
    end
    else if frm.Components[i] is TFDUpdateSQL then
    begin
      TFDUpdateSQL(frm.Components[i]).Connection := fdb;
    end
    else if frm.Components[i] is TFDEventAlerter then
      TFDEventAlerter(frm.Components[i]).Connection := fdb;

  end;
end;

procedure setConnectionDM(frm: TDataModule; fdb: TFDConnection);
var
  i: Integer;
  Qr: TQr;
  cmd: TCmd;
begin
  for i := 0 to frm.ComponentCount - 1 do
  begin
    if (frm.Components[i] is TFDQuery) and (frm.Components[i].Tag > -1) then
    begin
      TFDQuery(frm.Components[i]).Connection := fdb;
      TFDQuery(frm.Components[i]).Transaction := fdb.Transaction;
      if TFDQuery(frm.Components[i]).UpdateOptions.ReadOnly = false then
      begin

        TFDQuery(frm.Components[i]).UpdateTransaction := fdb.UpdateTransaction;
        if TFDQuery(frm.Components[i]).CachedUpdates = false then
        begin
          TFDQuery(frm.Components[i]).BeforePost := Qr.beforeact;
          TFDQuery(frm.Components[i]).BeforeDelete := Qr.beforeact;
          TFDQuery(frm.Components[i]).AfterPost := Qr.afteract;
          TFDQuery(frm.Components[i]).AfterDelete := Qr.afteract;
          TFDQuery(frm.Components[i]).OnPostError := Qr.onPosterr;
          TFDQuery(frm.Components[i]).OnDeleteError := Qr.onPosterr;
          TFDQuery(frm.Components[i]).OnEditError := Qr.onPosterr;
        end;
      end;
    end
    else if frm.Components[i] is TFDCommand then
    begin

      TFDCommand(frm.Components[i]).Connection := fdb;
      TFDCommand(frm.Components[i]).Transaction := fdb.UpdateTransaction;
      TFDCommand(frm.Components[i]).OnError := cmd.onErr;
      TFDCommand(frm.Components[i]).BeforePrepare := cmd.beforecmd;
      TFDCommand(frm.Components[i]).AfterExecute := cmd.aftercmd;
    end
    else if frm.Components[i] is TFDUpdateSQL then
    begin
      TFDUpdateSQL(frm.Components[i]).Connection := fdb;
    end
    else if frm.Components[i] is TFDEventAlerter then
      TFDEventAlerter(frm.Components[i]).Connection := fdb;

  end;
end;

{ TQr }

procedure TQr.afteract(DataSet: TDataSet);
begin
  TFDQuery(DataSet).UpdateTransaction.Commit;
  if TFDQuery(DataSet).CachedUpdates = false then
    TFDQuery(DataSet).Refresh;
end;

procedure TQr.beforeact(DataSet: TDataSet);
begin
  TFDQuery(DataSet).UpdateTransaction.StartTransaction;
end;

procedure TQr.onPosterr(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  TFDQuery(DataSet).Cancel;
  TFDQuery(DataSet).UpdateTransaction.Rollback;
end;

{ TCmd }

procedure TCmd.aftercmd(Sender: TObject);
begin
  TFDCommand(Sender).Transaction.Commit;
end;

procedure TCmd.beforecmd(Sender: TObject);
begin
  TFDCommand(Sender).Transaction.StartTransaction;
end;

procedure TCmd.onErr(ASender, AInitiator: TObject; var AException: Exception);
begin
  if TFDCommand(ASender).Transaction.Active then
    TFDCommand(ASender).Transaction.Rollback;
end;

end.
