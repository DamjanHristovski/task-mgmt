FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /app

# Copy all source code (including .csproj and migrations)
COPY . .

# Install EF Core CLI tool globally
RUN dotnet tool install --global dotnet-ef
ENV PATH="${PATH}:/root/.dotnet/tools"

RUN chmod +x ./entrypoint.sh

EXPOSE 5000

ENTRYPOINT ["./entrypoint.sh"]
