/// <summary>
/// Page System Administrator (ID 50100).
/// </summary>
page 50100 "System Administrator"
{
    ApplicationArea = All;
    Caption = 'System Administrator';
    PageType = RoleCenter;

    layout
    {
        area(Content)
        {

        }

    }
    actions
    {
        area(Sections)
        {
            group("&Users")
            {
                action(users)
                {
                    Caption = 'users';
                    ApplicationArea = basic, suite;
                    RunObject = page "User Groups";
                }

            }
        }
        area(Creation)
        {
            action("User Setup")
            {
                Caption = 'User Setup';
                ApplicationArea = basic, suite;
                RunObject = page "User Setup";
            }
            action(sessions)
            {
                Caption = 'sessions';
                ApplicationArea = basic, suite;
                RunObject = page "Concurrent Session List";
            }
        }
    }
}
