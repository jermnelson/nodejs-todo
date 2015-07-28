local id = KEYS[1]
local desc = ARGV[1]
local timestamp = redis.pcall('time')
redis.pcall('hset', "todos", id, desc)
redis.pcall('zadd', "created:todos", timestamp, id)
return timestamp
