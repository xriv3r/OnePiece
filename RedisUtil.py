import redis

redis_client = redis.Redis(host=u'localhost')

redis_client.set("ping", "pong")

assert redis_client.get("ping") == "pong"
