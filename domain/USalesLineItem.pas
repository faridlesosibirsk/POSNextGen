unit USalesLineItem;

interface

uses
  UMoney;

type

  TSalesLineItem = class
  private
    quantity: integer;
  public
    function getSubtotal: TMoney;
  end;

implementation

{ TSalesLineItem }

function TSalesLineItem.getSubtotal: TMoney;
begin
  result := nil;
end;

end.
