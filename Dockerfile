FROM registry.access.redhat.com/ubi8/dotnet-31
#FROM registry.access.redhat.com/dotnet/dotnet-21-rhel7

ADD app /opt/app-root

RUN dotnet build /opt/app-root
RUN rm /opt/app-root/.nuget

EXPOSE 5000

CMD dotnet run --project /opt/app-root
