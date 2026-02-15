# Populate Expert Among Us index for the current workspace
# This script indexes the repository's commit history to build a searchable expert
# Re-run to incrementally update with new commits

$ErrorActionPreference = "Stop"

$Workspace = $PSScriptRoot
$ExpertName = Split-Path $Workspace -Leaf
$ExpertAmongUs = "$PSScriptRoot\..\expert-among-us"

uv run --project $ExpertAmongUs -m expert_among_us populate $ExpertName $Workspace @args
exit $LASTEXITCODE
