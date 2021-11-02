page 50103 "Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    CardPageId = "Course Card";
    Editable = false;
    Caption = 'Course List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(Code; Code)
                {
                    ApplicationArea = All;

                }
                field(Name; Name)
                {
                    ApplicationArea = All;

                }

                field(description; description)
                {
                    ApplicationArea = All;

                }

                field(Level; Level)
                {
                    ApplicationArea = All;

                }

                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;

                }

                field(SPA; SPA)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }

            action("Insert Table")
            {


                trigger OnAction();
                begin
                    InsertNewRecord();
                end;
            }
        }
    }

    var

        Level: text[30];

        Suggestion: text[80];

        SPA: Boolean;

    procedure InsertNewRecord();
    var
        courseRec: Record Course;
    begin
        with courseRec do begin

            Init;
            Code := '80055';
            Name := 'C/SIDE Solution Development';
            Description := 'Advanced topics in programming ';
            Type := Type::"Instructor Led";
            Duration := 5.0;
            price := 2500.0;
            Active := true;
            Difficulty := 10;
            PassingRate := 75;
            Insert;
            Message('Already Insert');

        end;
    end;

    trigger OnAfterGetRecord();
    begin
        Level := '';
        Suggestion := '';
        SPA := false;
        case Difficulty of
            1 .. 5:
                begin
                    level := 'Beginner';
                    Suggestion := 'Take e-elearning or remote training';

                end;
            6 .. 8:
                begin
                    level := 'Advenced';
                    Suggestion := 'Attend instructor-Led';

                end;
            9 .. 10:
                begin
                    level := 'Advenced';
                    Suggestion := 'Attend instructor-Led and self sdudy';

                end;
        end;
        if (PassingRate >= 70) And (Difficulty >= 6) then
            SPA := true;
    end;





}

