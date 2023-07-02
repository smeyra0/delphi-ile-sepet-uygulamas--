unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    ListBox2: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

 


procedure TForm1.Button1Click(Sender: TObject);

   var
        SelectedItem: string;
        begin
             SelectedItem := ListBox1.Items[ListBox1.ItemIndex];
            ListBox2.Items.Add(SelectedItem);

end;





procedure TForm1.Button2Click(Sender: TObject);

         var
yeniurun: string;


begin
          yeniurun := InputBox('Yeni �r�n Ekle', '�r�n Ad�:', '');

  if yeniurun <> '' then
  begin
    ListBox1.Items.Add(yeniurun);
    ShowMessage('Yeni �r�n eklendi: ' + yeniurun);
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
        var
  Secili: Integer;
begin
  Secili := ListBox1.ItemIndex;

  if Secili <> -1 then
  begin
    ListBox1.Items.Delete(Secili);
    ShowMessage('�r�n ��kar�ld�');
  end
  else
    ShowMessage('L�tfen bir �r�n se�in');
end;



procedure TForm1.Button4Click(Sender: TObject);
       var
          Secilmis: string;
begin


         Secilmis := ListBox2.Items[ListBox2.ItemIndex];
         ListBox2.Items.Delete(ListBox2.ItemIndex);

           ListBox1.Items.Add(Secilmis);


end;

procedure TForm1.Button5Click(Sender: TObject);

       var
  Sec_urun: Integer;
  yeni_urun: string;

begin

    Sec_urun := ListBox1.ItemIndex;

  if Sec_urun <> -1 then
  begin
    yeni_urun := InputBox('�r�n D�zenle', 'Yeni �r�n Ad�:', ListBox1.Items[Sec_urun]);

    if yeni_urun <> '' then
    begin
      ListBox1.Items[Sec_urun] := yeni_urun;
      ShowMessage('�r�n d�zenlendi: ' + yeni_urun);
    end
    else
      ShowMessage('Ge�erli bir �r�n ad� girin');
  end
  else
    ShowMessage('L�tfen d�zenlemek i�in bir �r�n se�in');
end;









procedure TForm1.Edit1Change(Sender: TObject);
   var
  i: Integer;
    searchText: string;


begin
         ListBox1.ClearSelection; // �nceki se�imi temizle

  searchText := UpperCase(Edit1.Text); // Aranacak metni b�y�k harfe d�n��t�r

  for i := 0 to ListBox1.Items.Count - 1 do
  begin
    if Pos(searchText, UpperCase(ListBox1.Items[i])) > 0 then
    begin
      ListBox1.Selected[i] := True; // E�le�en ��eyi se�
      ListBox1.ItemIndex := i; // E�le�en ��eyi g�r�n�r yap
    end;
  end;




end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  ListBox1.Items.Add('�ikolata- (10) TL');
  ListBox1.Items.Add('�eker - (8) TL');
  ListBox1.Items.Add('cips - (15) TL');
  ListBox1.Items.Add('kola - (12) TL');
  ListBox1.Items.Add('�ekirdek - (9) TL');

     end;






end.
