# Get Graphics Card Information
$gpu = Get-WmiObject Win32_VideoController | Select-Object Name, AdapterRAM

# Get SSD and HDD Information
$diskDrives = Get-WmiObject Win32_DiskDrive | Select-Object Model, Size

# Get RAM Information
$ram = Get-WmiObject Win32_PhysicalMemory | Measure-Object Capacity -Sum

# Get Processor Information
$cpu = Get-WmiObject Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors

# Get Motherboard Information
$motherboard = Get-WmiObject Win32_BaseBoard | Select-Object Manufacturer, Product

# Get BIOS Information
$bios = Get-WmiObject Win32_BIOS | Select-Object Manufacturer, Name, Version, SerialNumber

# Display the gathered information
Write-Host "PC Hardware Information:`n"

Write-Host "Graphics Card(s):"
foreach ($g in $gpu) {
    $gpuMemoryGB = [math]::round($g.AdapterRAM / 1GB, 2)
    Write-Host "  - Model: $($g.Name), Memory: $gpuMemoryGB GB"
}
Write-Host ""

Write-Host "Disk Drives:"
foreach ($disk in $diskDrives) {
    $diskSizeGB = [math]::round($disk.Size / 1GB, 2)
    Write-Host "  - Model: $($disk.Model), Size: $diskSizeGB GB"
}
Write-Host ""

$totalRamGB = [math]::round($ram.Sum / 1GB, 2)
Write-Host "RAM: $totalRamGB GB"
Write-Host ""

Write-Host "Processor:"
Write-Host "  - Model: $($cpu.Name)"
Write-Host "  - Cores: $($cpu.NumberOfCores)"
Write-Host "  - Logical Processors: $($cpu.NumberOfLogicalProcessors)"
Write-Host ""

Write-Host "Motherboard:"
Write-Host "  - Manufacturer: $($motherboard.Manufacturer)"
Write-Host "  - Model: $($motherboard.Product)"
Write-Host ""

Write-Host "BIOS:"
Write-Host "  - Manufacturer: $($bios.Manufacturer)"
Write-Host "  - Name: $($bios.Name)"
Write-Host "  - Version: $($bios.Version)"
Write-Host "  - Serial Number: $($bios.SerialNumber)"
Write-Host ""

# To save the output to a text file
$outputFile = "PC_Hardware_Info.txt"
$output = @"
PC Hardware Information:

Graphics Card(s):
$(foreach ($g in $gpu) { 
    $gpuMemoryGB = [math]::round($g.AdapterRAM / 1GB, 2)
    "  - Model: $($g.Name), Memory: $gpuMemoryGB GB"
})

Disk Drives:
$(foreach ($disk in $diskDrives) {
    $diskSizeGB = [math]::round($disk.Size / 1GB, 2)
    "  - Model: $($disk.Model), Size: $diskSizeGB GB"
})

RAM: $totalRamGB GB

Processor:
  - Model: $($cpu.Name)
  - Cores: $($cpu.NumberOfCores)
  - Logical Processors: $($cpu.NumberOfLogicalProcessors)

Motherboard:
  - Manufacturer: $($motherboard.Manufacturer)
  - Model: $($motherboard.Product)

BIOS:
  - Manufacturer: $($bios.Manufacturer)
  - Name: $($bios.Name)
  - Version: $($bios.Version)
  - Serial Number: $($bios.SerialNumber)
"@

$output | Out-File -FilePath $outputFile

Write-Host "Hardware information has been saved to $outputFile"
