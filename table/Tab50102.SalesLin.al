/// <summary>
/// Table Sales Lin (ID 50102).
/// </summary>
table 50102 "Sales Lin"
{
    Caption = 'Sales Lin';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Sales N"; Code[20])
        {
            Caption = 'Sales N';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "sales Type"; Text[50])
        {
            Caption = 'sales Type';
        }
    }
    keys
    {
        key(PK; "Sales N")
        {
            Clustered = true;
        }
    }
}
