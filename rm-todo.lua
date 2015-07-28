local id = KEYS[1]
redis.pcall("hdel", "todos", id)
local timestamp = redis.pcall("time")
redis.pcall("zadd", "completed:todos", timestamp, id)
return true
