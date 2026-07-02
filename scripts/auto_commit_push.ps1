$repo = Split-Path -Parent $PSScriptRoot
Set-Location -LiteralPath $repo

git add -A *> $null

$staged = git diff --cached --name-only
if ([string]::IsNullOrWhiteSpace($staged)) {
    exit 0
}

$msg = "Auto session update $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git -c user.name="Codex" -c user.email="codex@example.local" commit -m $msg *> $null
git push origin main *> $null
exit 0
