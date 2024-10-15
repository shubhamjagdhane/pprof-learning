package stats

import "testing"

func BenchmarkAddTagsToName(b *testing.B) {
	tags := map[string]string{
		"endpoint": "hello",
		"os":       "OS X",
		"browser":  "Chrome",
	}

	for i := 0; i < b.N; i++ {
		addTagsToName("some-name", tags)
	}
}
