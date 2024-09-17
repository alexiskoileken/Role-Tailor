page 50107 Salessubline
{
    ApplicationArea = All;
    Caption = 'Salessubline';
    PageType = ListPart;
    SourceTable = "Sales sub line";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;

                }
                field(name; Rec.name)
                {
                    ApplicationArea = all;
                }
                field("phone number"; Rec."phone number")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
