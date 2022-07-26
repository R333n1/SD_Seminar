pageextension 50101 "CSD ResourceCardExt" extends "Resource Card"
//CSD1.00-2022-07-17
{
    layout
    {

        addlast(General)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")

            {
                ApplicationArea = All;
            }
            field("CSD Quanty Per Day"; Rec."CSD Quanty Per Day")

            {
                ApplicationArea = All;
            }

        }

        addafter("Personal Data")
        {
            group("CSD Room")
            {

                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
                {
                    ApplicationArea = all;
                }


            }
        }

    }







    trigger OnAfterGetRecord();

    begin
        ShowMaxField := (Rec.Type = Rec.Type::Machine);
        CurrPage.Update(false);

    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}