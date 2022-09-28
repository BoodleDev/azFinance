unit uLCCentral;

interface

//Constants
const
  ttRate =  0;
  ttME   =  5;
  ttBalO = 10;
  ttPayO = 15;
  ttNorI = 20;
  ttFixI = 25;

  function GetTypeDesc(inType : integer):string;

implementation

  function GetTypeDesc(inType : integer):string;
  begin
    case inType of
      ttRate : Result := 'Rate change'; // ttRate
      ttME   : Result := 'Month-end'; //ttME
      ttBalO : Result := 'Opening bal.'; //ttBalO
      ttPayO : Result := 'Pay-out'; //ttPayO
      ttNorI : Result := 'Normal inst.';//ttNorI
      ttFixI : Result := 'Fixed inst.';//ttFixI
      else
        Result := 'none';
    end;
  end;

end.
