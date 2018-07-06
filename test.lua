local test = require('tap').test()
test:plan(1)

test:test('Simple test', function(test)
	test:plan(1)
	local a = 1
	test:is(a, 1)
end)