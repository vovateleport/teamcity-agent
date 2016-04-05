FROM vt25/teamcity0

RUN mkdir /TeamCityAgent && mkdir /TeamCityAgent/work && mkdir /TeamCityAgent/tmp && mkdir /TeamCityAgent/system

ADD buildAgent.properties /TeamCity/buildAgent/conf/buildAgent.properties

EXPOSE 9090

VOLUME ["/TeamCityAgent"]

CMD /TeamCity/buildAgent/bin/agent.sh run
