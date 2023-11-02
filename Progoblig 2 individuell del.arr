use context essentials2021
include shared-gdrive(
  "dcic-2021", 
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source

ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
  load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
  end


#Bruker kWh som benevning, f.eks 10 kWh

#EPUOF = Energy-per-unit-of-fuel = 10 kWh
#DTPD = Distance-travelled-per-day = 40 km/h a day average
#DPUOF = Distance-per-unit-of-fuel = 8 kWh

EPUOF = 10
DTPD = 40
DPUOF = 8

fun bil-energi():
 block:
   energy-per-day = ((DTPD / DPUOF) * EPUOF)
   energy-per-day
 end
end


fun energi-to-number(s) -> Number:
 block:
   cases (Option) string-to-number(s):
     | some(a) => a
     | none => bil-energi()
   end
 end
where:
  energi-to-number("") is bil-energi()
 energi-to-number("48") is 48
end

nummerfiks = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

nummerfiks

summen = sum(nummerfiks, "energi")


fun gjennomsnitt():
  block:
    average = summen + bil-energi()
    print("Dette er gjennomsnittet av forbruket til en  vanlig innbygger i kWh:")
    average
  end
end
    
gjennomsnitt()


bar-chart(nummerfiks, "komponent", "energi")