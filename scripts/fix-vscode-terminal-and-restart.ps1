$ErrorActionPreference = "Stop"

$settingsDir = Join-Path $env:APPDATA "Code\User"
$settingsPath = Join-Path $settingsDir "settings.json"

if (-not (Test-Path $settingsDir)) {
    New-Item -ItemType Directory -Path $settingsDir -Force | Out-Null
}

$settings = @{}
if (Test-Path $settingsPath) {
    $rawSettings = Get-Content -Path $settingsPath -Raw
    if (-not [string]::IsNullOrWhiteSpace($rawSettings)) {
        $parsed = $rawSettings | ConvertFrom-Json -AsHashtable
        if ($null -ne $parsed) {
            $settings = $parsed
        }
    }
}

$settings["terminal.integrated.windowsUseConptyDll"] = $true

$settings | ConvertTo-Json -Depth 100 | Set-Content -Path $settingsPath -Encoding utf8

Get-Process -Name Code -ErrorAction SilentlyContinue | Stop-Process -Force

$codeCommand = Get-Command code -ErrorAction SilentlyContinue
if ($null -ne $codeCommand) {
    Start-Process -FilePath $codeCommand.Source
} else {
    $defaultCodePath = Join-Path $env:LOCALAPPDATA "Programs\Microsoft VS Code\Code.exe"
    if (Test-Path $defaultCodePath) {
        Start-Process -FilePath $defaultCodePath
    } else {
        Write-Warning "Updated settings.json, but could not locate VS Code executable to restart it automatically."
    }
}

Write-Output "Applied terminal.integrated.windowsUseConptyDll=true and restarted VS Code."