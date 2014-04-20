currentDate = date_current_date();
global.aFirst = false;
global.gg_birthday = false;
global.xmas = false;
global.dsmBirthday=false
global.dpmBirthday=false

if(date_get_month(currentDate) == 4 and date_get_day(currentDate) == 1)
{
    if(date_get_year(currentDate) != 2011) // April fools bubble disabled this year because of big release
        global.aFirst = true;
    else
        global.gg_birthday = true;
}

if(date_get_month(currentDate) == 9 and date_get_day(currentDate) == 7)
    global.gg_birthday = true;

if((date_get_month(currentDate) == 12 and date_get_day(currentDate) > 23) or (date_get_month(currentDate) == 1 and date_get_day(currentDate) < 3)) {
    global.xmas = true;
}
if(date_get_month(currentDate) == 11 and date_get_day(currentDate) == 2){
    global.dsmBirthday = true;
}
if(date_get_month(currentDate) == 8 and date_get_day(currentDate) == 31){
    global.dpmBirthday = true;
}

if(global.aFirst)
    sprite_assign(BubblesS, BubbleFaceS);

if(global.gg_birthday)
    partyTime();
if(global.xmas)
    xmasTime();
if(global.dsmBirthday)
    dsmBirthdayTime()
if(global.dpmBirthday)
    dpmBirthdayTime()
