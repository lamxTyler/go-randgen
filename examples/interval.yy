/* interval expr test */

query:
    SELECT function_call
    | SELECT _datetime interval_expr

function_call:
    add_sub(_datetime, inter)

inter:
    INTERVAL flag expr_unit

add_sub:
    DATA_ADD | DATA_SUB

expr_unit:
    _tinyint_unsigned unit
    | _second_microsecond  SECOND_MICROSECOND
    | _minute_microsecond MINUTE_MICROSECOND
    | _minute_second MINUTE_SECOND
    | _hour_microsecond HOUR_MICROSECOND
    | _hour_second HOUR_SECOND
    | _hour_minute HOUR_MINUTE
    | _day_microsecond DAY_MICROSECOND
    | _day_second DAY_SECOND
    | _day_minute DAY_MINUTE
    | _day_hour DAY_HOUR
    | _year_month YEAR_MONTH


unit:
    MICROSECOND
    | SECOND
    | MINUTE
    | HOUR
    | DAY
    | WEEK
    | MONTH
    | QUARTER
    | YEAR
    | SECOND_MICROSECOND
    | MINUTE_MICROSECOND
    | MINUTE_SECOND
    | HOUR_MICROSECOND
    | HOUR_SECOND
    | HOUR_MINUTE
    | DAY_MICROSECOND
    | DAY_SECOND
    | DAY_MINUTE
    | DAY_HOUR
    | YEAR_MONTH

# 负号 或空
flag:
    -|

# 正负号
pos_neg:
    -|+

interval_expr:
    pos_neg inter interval_expr |