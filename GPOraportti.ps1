# Skripti, joka tuottaa HTML-pohjaisen raportin ryhmäkäytännöistä

# Kysytään käyttäjältä tiedoston nimi ja polku

$Tiedosto = Read-Host -Prompt " Anna tiedoston polku ja nimi"

# Luodaan kaikki GPO:t sisätltävä HTML-raportti ja tallennetaan se
Get-GPOReport -All -ReportType html -Path $Tiedosto