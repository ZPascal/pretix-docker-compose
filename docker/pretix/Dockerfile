FROM pretix/standalone:stable

USER root

RUN apt update && apt install cron nano -y

USER pretixuser

COPY crontab.bak /tmp/crontab.bak
RUN crontab /tmp/crontab.bak

EXPOSE 80
ENTRYPOINT ["pretix"]
CMD ["all"]