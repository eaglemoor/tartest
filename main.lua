box.cfg{}

local tspace = box.schema.create_space('testspace', { if_not_exists = true })

tspace:create_index('pk', { type = 'hash', parts = {1, 'number'} })

tspace:insert{1, "test"}

require("console").start()