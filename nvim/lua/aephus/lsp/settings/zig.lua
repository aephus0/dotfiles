return {
	default_config = {
		cmd = { "zig" },
		filetypes = { "zig" },
		root_dir = util.root_pattern("build.zig", ".git"),
	};
	docs = {
		description = [[ ]];
		default_config = {
			root_dir = [[root_pattern("build.zig", ".git")]];
		}
	}
}
