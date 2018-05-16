import logging

logging.basicConfig(level=logging.INFO)

log = logging.getLogger("Loggger")

log.setLevel(logging.WARNING)

log.setHandler(logging.StreamHandler)

log.setFormatter(logging.Formatter)
