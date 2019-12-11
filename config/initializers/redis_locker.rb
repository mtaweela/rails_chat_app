RedisLocker.redis = Redis.new({host: 'redis', port: 6379})

# Optionally specify the logger level (default is WARN)
RedisLocker.logger.level = Logger::WARN
