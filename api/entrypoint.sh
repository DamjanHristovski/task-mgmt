#!/bin/bash
set -e

echo "🟡 Applying EF Core migrations..."
cd TasksMgmtAPI
dotnet ef database update

echo "🟢 Starting API..."
dotnet run --project TasksMgmt.API.csproj --no-build --no-restore