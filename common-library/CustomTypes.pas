unit CustomTypes;

interface

{ TDataMode values }

const
  dmNone = 0;
  dmNew = 1;
  dmEdit = 2;
  dmDelete = 3;
  dmRead = 4;

type
  TDataMode = Low(Integer)..High(Integer);//(dmNew,dmEdit,dmDelete,dmRead);


implementation

end.
 