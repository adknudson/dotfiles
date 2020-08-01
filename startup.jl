import Pkg
let
	pkgs = ["Revise", "OhMyREPL"]
	for pkg in pkgs
		if Base.find_package(pkg) === nothing
			Pkg.add(pkg)
		end
	end
end

atreplinit() do repl
	@async try
		sleep(0.1)
		@eval using Revise
		@async Revise.wait_steal_repl_backend()
	catch
		@warn("Could not load Revise.")
	end
end

using OhMyREPL
OhMyREPL.colorscheme!("BoxyMonokai256")
OhMyREPL.input_prompt!(string(VERSION) * ">", :green)
OhMyREPL.output_prompt!("#>", :red)
OhMyREPL.enable_autocomplete_brackets(false)
