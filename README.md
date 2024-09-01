# Pretix Docker-Compose setup
The repository includes a [Pretix](https://pretix.eu/about/de/) docker-compose configuration for local development.

## Usage

You can execute `docker-compose up -d --build --force-recreate` to start and build all related containers.

### Cronjobs

It is possible to adapt the `pretixuser` crontab entries by modifying the [crontab.bak](docker/pretix/crontab.bak) file.

## Contribution
If you would like to contribute something, have an improvement request, or want to make a change inside the code, please open a pull request.

## Support
If you need support, or you encounter a bug, please don't hesitate to open an issue.

## Donations
If you want to support my work, I ask you to take an unusual action inside the open source community. Donate the money to a non-profit organization like Doctors Without Borders or the Children's Cancer Aid. I will continue to build tools because I like them, and I am passionate about developing and sharing applications.

## License
This product is available under the Apache 2.0 license.
