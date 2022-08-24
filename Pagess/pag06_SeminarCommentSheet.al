page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    Caption = 'Seminar Comment Sheet';
    SourceTable = "CSD Seminar Comment Line";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;

                }

                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    Visible = false;

                }

                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnNewRecord(BelowRec: boolean)
    begin
        Rec.SetupNewLline;

    end;
}