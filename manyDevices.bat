setlocal EnableDelayedExpansion           
for /f "tokens=*" %%f in ('C:\Users\franMX\AppData\Local\Android\android-sdk\platform-tools\adb.exe devices') do (

		set devicestr=%%f

		if "!devicestr!"=="!devicestr:List=!" (
			for /f "tokens=1" %%d in ("!devicestr!") do (
				set deviceid=%%d
				echo !deviceid!
				echo !apk!
				C:\Users\franMX\AppData\Local\Android\android-sdk\platform-tools\adb.exe -s !deviceid! install app.apk
			)
		)

)
