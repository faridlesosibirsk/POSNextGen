unit UMoney;

interface

type

  TMoney = class // ???
  private
    fieldMoney: TMoney;
  public
    procedure add(Money: TMoney);
  end;

implementation

{ TMoney }

procedure TMoney.add(Money: TMoney);
begin
  //fieldMoney := fieldMoney + Money;
end;

end.
