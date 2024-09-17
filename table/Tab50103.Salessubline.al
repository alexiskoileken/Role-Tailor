/// <summary>
/// Table Sales sub line (ID 50103).
/// </summary>
table 50103 "Sales sub line"
{
    Caption = 'Sales sub line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "sales line "; Code[20])
        {
            Caption = 'sales line ';
        }
        field(3; name; Text[50])
        {
            Caption = 'name';
        }
        field(4; "phone number"; Code[50])
        {
            Caption = 'phone number';
        }
    }
    keys
    {
        key(PK; "No.", "sales line ")
        {
            Clustered = true;
        }
    }
}
