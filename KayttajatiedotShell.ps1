# Haetaan AD-käyttäjän olennaiset tiedot

# Kysytään käyttäjältä, minkä nimiseen tiedostoon käyttäjät dokumentoidaan
$Tiedosto = Read-host "mihin tallennetaan, anna polku ja nimi"

# Luetaan AD-käyttäjätiedot muuttujaan
$Käyttäjät = Get-ADUser -Filter * -Properties AccountExpirationdate, Office, OfficePhone Description, DisplayName, whenCreated, whenChanged

# Putkiteaan tiedot CSV-tiedostoon
$Käyttäjät | Export-Csv -Encoding Unicode -Delimiter "`t" -Path $Tiedosto