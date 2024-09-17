/// <summary>
/// Table Sales Lin (ID 50102).
/// </summary>
table 50102 "Sales Lin"
{
    Caption = 'Sales Lin';
    DataClassification = ToBeClassified;
    LookupPageId = "Sales N";

    fields
    {
        field(1; "Sales N"; Code[20])
        {
            Caption = 'Sales N';
            Editable = false;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "sales Type"; Text[50])
        {
            Caption = 'sales Type';
        }
        field(4; Noseries; Code[20])
        {

        }
    }
    keys
    {
        key(PK; "Sales N")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "Sales N" = '' then begin
            NoSeriesMgt.InitSeries('SAL', Noseries, WorkDate(Today), "Sales N", Noseries);
        end;
    end;
}
