var monthCount, weekDaysCount, weekStartDay,
    weekHolidayDay, monthHolidayDay, holidaysCount: integer;
var daysInMonth: array [1..110000] of integer;
var input, output: text;
var i: integer;
var weekDayInHoliday: integer;
begin

    holidaysCount := 0;

    assign( input, 'input.txt' );
    reset( input );

    read( input, monthCount, weekDaysCount );
    for i := 1 to monthCount do
        read( input, daysInMonth[i] );

    read( input, weekStartDay, weekHolidayDay, monthHolidayDay );

    close( input );

    for i := 1 to monthCount do
    begin
        weekDayInHoliday := ( monthHolidayDay - weekDaysCount +
                              weekStartDay ) mod weekDaysCount;
        if weekDayInHoliday = weekHolidayDay then
            Inc( holidaysCount );

        weekStartDay := ( daysInMonth[i] - weekDaysCount +
                          weekStartDay ) mod weekDaysCount;
    end;

    assign( output, 'output.txt' );
    rewrite( output );
    write( output, holidaysCount );
    close( output );
end.
