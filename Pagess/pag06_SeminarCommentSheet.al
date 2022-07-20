page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    Caption = 'Seminar Comment Sheet';
    SourceTable = "CSD Seminar Comment Line";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {
                    ApplicationArea = All;

                }

                field(Code; Code)
                {
                    ApplicationArea = All;
                    Visible = false;

                }

                field(Comment; Comment)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}