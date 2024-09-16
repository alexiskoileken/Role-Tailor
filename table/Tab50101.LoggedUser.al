/// <summary>
/// Table Logged User (ID 50101).
/// </summary>
table 50101 "Logged User"
{
    Caption = 'Logged User';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; primary; Code[20])
        {
            Caption = 'primary';
        }
        field(2; "No of logged user"; Integer)
        {
            Caption = 'No of logged user';
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type" = const("Web Client")));
        }
    }
    keys
    {
        key(PK; primary)
        {
            Clustered = true;
        }
    }
}
