unit uBSConst;

interface
//Types

//Constants
const
  // Entity Types
  PSNtype = 1;
  CPYtype = 2;

  // Address types
  AdrPost = 1;
  AdrPhys = 2;

  // Entity mail types for SendEmail
  tpeNVNS = 0;  // Not verified, Not Sent
  tpeVNS  = 10; // Verified, No send
  tpeNVS  = 20; // Not Verified, Send
  tpeVS   = 30; // Verified, Send

implementation

end.
