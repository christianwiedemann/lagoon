ARG UPSTREAM_REPO
ARG UPSTREAM_TAG
FROM ${UPSTREAM_REPO:-testlagoon}/mariadb-10.5-drupal:${UPSTREAM_TAG:-latest}
