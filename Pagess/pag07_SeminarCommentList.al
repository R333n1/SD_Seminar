page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    Caption = 'Seminar Comment List';
    Editable = false;
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