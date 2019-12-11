RedisLocker.redis = Redis.new({host: ENV['REDIS_HOST'], port: 6379})

# Optionally specify the logger level (default is WARN)
RedisLocker.logger.level = Logger::WARN
