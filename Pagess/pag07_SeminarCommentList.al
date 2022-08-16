page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    Caption = 'Seminar Comment List';
    Editable = false;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Comment Line";
    ApplicationArea = all;

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


}