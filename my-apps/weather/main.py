import requests

api_key = '35e8a70434bdb13f0fd3547c8a3073b0'

weather_data = requests.get(
	f"https://api.openweathermap.org/data/2.5/weather?lat={39.308282}&lon={-76.449802}&units=imperial&appid={api_key}")

current_weather = weather_data.json()['weather'][0]['main']
icon_code = weather_data.json()['weather'][0]['icon']
current_temp = weather_data.json()['main']['temp']

def get_icon():
	match icon_code:
		case '01d':
			return '󰖙'
		case '01n':
			return ''
		case '02d':
			return ''
		case '02n':
			return ''
		case '03d' | '03n':
			return '󰖐'
		case '04d' | '04n':
			return ''
		case '09d' | '09n':
			return ''
		case '10d':
			return ''
		case '10n':
			return ''
		case '11d' | '11n':
			return ''
		case '13d' | '13n':
			return '󰼶'
		case '50d' | '50n':
			return '󰖑'

print(f"{round(current_temp)}\u00b0F {get_icon()} {current_weather}")
