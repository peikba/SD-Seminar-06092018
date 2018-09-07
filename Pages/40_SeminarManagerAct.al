page 123456740 "CSD Seminar Manager Act"
{
    PageType = CardPart;
    SourceTable = "CSD Seminar Cue";

    layout
    {
        area(content)
        {
            cuegroup(Registrations)
            {
                Caption = 'Registrations';

                field(Planned; Planned)
                {

                }
                field(Registration; Registration)
                {

                }
                actions
                {
                    action(New)
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = create;
                    }
                }
            }
            cuegroup("For Posting")
            {
                Caption = 'For Posting';

                field(Closed; Closed)
                {

                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            Insert;
        end;
    end;
}