# Function to format the size in GB
function Format-SizeInGB {
    param (
        [int64]$SizeInBytes
    )
    return [math]::round($SizeInBytes / 1GB, 2)
}

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

# Prepare the gathered information
$output = @"
PC Hardware Information:

Graphics Card(s):
$(foreach ($g in $gpu) {
    $gpuMemoryGB = Format-SizeInGB -SizeInBytes $g.AdapterRAM
    "  - Model: $($g.Name), Memory: $gpuMemoryGB GB"
})

Disk Drives:
$(foreach ($disk in $diskDrives) {
    $diskSizeGB = Format-SizeInGB -SizeInBytes $disk.Size
    "  - Model: $($disk.Model), Size: $diskSizeGB GB"
})

RAM: $([math]::round($ram.Sum / 1GB, 2)) GB

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

# Save the output to a text file
$outputFile = "PC_Hardware_Info.txt"
$output | Out-File -FilePath $outputFile

Write-Host "Hardware information has been saved to $outputFile"

