#!/bin/bash

echo "Welcome to DailyHoroscope!"

while getopts ":sm" o; do
	case "${o}" in
		s )
			welcome="Please choose one option below Sir!"
			;;
		m ) 
			welcome="Please choose one option below Madam!"
			;;
		* )
			welcome="Please choose one option below!"
			;;
	esac
done

if [ -z "$welcome" ]
then
	echo "Please choose one option below!"
else
	echo $welcome
fi
echo "A) Date of birth"
echo "B) Horoscope"

read choose
echo "You chose option $choose"
if [ $choose = 'A' ] || [ $choose = 'a' ]
then
	echo "Give me your month of birth (e.g. 2, 14)"
	read month
	echo "Give me your day of birth (e.g. 5, 16)"
	read day
	if [ $month -eq 12 ]
	then if [ $day -lt 22 ]
		then horoscope="Saggitarius"
	else
		 horoscope="Capricorn"
		fi
	elif [ $month -eq 1 ]
		then if [ $day -lt 20 ]
			then horoscope="Capricorn"
		else
			 horoscope="Aquarius"
		fi
	elif [ $month -eq 2 ]
		then if [ $day -lt 19 ]
		        then horoscope="Aquarius"
		else
		         horoscope="Pisces"
		fi
	elif [ $month -eq 3 ]
		then if [ $day -lt 21 ]
		        then horoscope="Pisces"
		else
		         horoscope="Aries"
		fi
	elif [ $month -eq 4 ]
		then if [ $day -lt 20 ]
		        then horoscope="Aries"
		else
		         horoscope="Taurus"
		fi
	elif [ $month -eq 5 ]
		then if [ $day -lt 21 ]
		        then horoscope="Taurus"
		else
		         horoscope="Gemini"
		fi
	elif [ $month -eq 6 ]
		then if [ $day -lt 21 ]
		        then horoscope="Gemini"
		else
		         horoscope="Cancer"
		fi
	elif [ $month -eq 7 ]
		then if [ $day -lt 23 ]
		        then horoscope="Cancer"
		else
		         horoscope="Leo"
		fi
	elif [ $month -eq 8 ]
		then if [ $day -lt 23 ]
		        then horoscope="Leo"
		else
		         horoscope="Virgo"
		fi
	elif [ $month -eq 9 ]
		then if [ $day -lt 23 ]
		        then horoscope="Virgo"
		else
		         horoscope="Libra"
		fi
	elif [ $month -eq 10 ]
		then if [ $day -lt 23 ]
		        then horoscope="Libra"
		else
		         horoscope="Scorpio"
		fi
	elif [ $month -eq 11 ]
		then if [ $day -lt 22 ]
		        then horoscope="Scorpio"
		else
		         horoscope="Sagittarius"
		fi
	fi
	echo "Your horoscope is $horoscope"
elif [ $choose = 'B' ] || [ $choose = 'b' ]
then
	echo "Give me your horoscope (e.g. Aries, Pisces)"
	read horoscope
else
	echo "Invalid"
fi

if [ $horoscope = 'Aries' ]
then
	curl -s https://www.astrology.com/horoscope/daily/aries.html |
	html2text | sed -n '/yesterday today tomorrow/,$p' |
	sed -n '/More daily aries Horoscopes For You/q;p' |
	tail -n+2 | head -n-2
elif [ $horoscope = 'Taurus' ]
then
	curl -s https://www.astrology.com/horoscope/daily/taurus.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily taurus Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Gemini' ]
then
        curl -s https://www.astrology.com/horoscope/daily/gemini.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily gemini Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Cancer' ]
then
        curl -s https://www.astrology.com/horoscope/daily/cancer.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily cancer Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Leo' ]
then
        curl -s https://www.astrology.com/horoscope/daily/leo.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily leo Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Virgo' ]
then
        curl -s https://www.astrology.com/horoscope/daily/virgo.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily virgo Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Libra' ]
then
        curl -s https://www.astrology.com/horoscope/daily/libra.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily libra Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Scorpio' ]
then
        curl -s https://www.astrology.com/horoscope/daily/scorpio.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily scorpio Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Sagittarius' ]
then
        curl -s https://www.astrology.com/horoscope/daily/sagittarius.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily sagittarius Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Capricorn' ]
then
        curl -s https://www.astrology.com/horoscope/daily/capricorn.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily capricorn Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Aquarius' ]
then
        curl -s https://www.astrology.com/horoscope/daily/aquarius.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily aquarius Horoscopes For You/q;p' |
        tail -n+2 | head -n-2
elif [ $horoscope = 'Pisces' ]
then
        curl -s https://www.astrology.com/horoscope/daily/pisces.html |
        html2text | sed -n '/yesterday today tomorrow/,$p' |
        sed -n '/More daily pisces Horoscopes For You/q;p' |
        tail -n+2 | head -n-2

fi
	




