report 123456701 "CSD Seminar Reg. Part. List"
{
    UsageCategory=ReportsAndAnalysis;
    Caption='Seminar Reg. Participant List';
    RDLCLayout='./Layouts/SeminarRegParticipantList.rdl';
    dataset
    {
        dataitem("CSD Seminar Reg. Header";"CSD Seminar Reg. Header")
        {
            RequestFilterFields="Seminar No.","Instructor Resource No.";

            column(No_;"No.")
            {
                IncludeCaption=true;
            }
            column(Seminar_No_;"Seminar No.")
            {
                IncludeCaption=true;
            }
            column(Seminar_Name;"Seminar Name")
            {
                IncludeCaption=true;
            }
            column(Duration;Duration)
            {
                IncludeCaption=true;
            }
            column(Starting_Date;"Starting Date")
            {
                IncludeCaption=true;
            }
            column(Instructor_Name;"Instructor Name")
            {
                IncludeCaption=true;
            }
            column(Room_Name;"Room Name")
            {
                IncludeCaption=true;
            }
            dataitem("CSD Seminar Registration Line";"CSD Seminar Registration Line")
            {
                DataItemLink="Document No."=field("No.");

                column(Bill_to_Customer_No_;"Bill-to Customer No.")
                {
                    IncludeCaption=true;
                }
                column(Participant_Contact_No_;"Participant Contact No.")
                {
                    IncludeCaption=true;
                }
                column(Participant_Name;"Participant Name")
                {
                    IncludeCaption=true;
                }
            }
        }
        dataitem("Company Information";"Company Information")
        {
            column(Picture;Picture)
            {

            }
            column(CompanyName;CompanyName)
            {
                
            }
            column(E_Mail;"E-Mail")
            {
                
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field(ShowDetails;ShowDetails)
                    {
                        Caption='Show Details';
                    }
                }
            }
        }
    
    }
    
    var
        ShowDetails : Boolean;
}