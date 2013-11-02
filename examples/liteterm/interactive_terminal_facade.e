note
	description: "[
		Provides a facade implementation to the interactive terminal, exposing terminal manipulators and
		writers to the terminal.
	]"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2011-10-28 19:05:22 +0200 (Fre, 28 Okt 2011) $"
	revision: "$Revision: 87660 $"

deferred class
	INTERACTIVE_TERMINAL_FACADE

feature -- Access

	interactive_terminal: INTERACTIVE_TERMINAL
			-- Terminal used for interaction.
		deferred
		end

feature {NONE} -- Access

	terminal_writer: FILE
			-- File used to write to terminal.
		require
			interactive_terminal_is_interactive: interactive_terminal.is_interactive
		do
			Result := io.output
		end

	terminal_error_writer: FILE
			-- File used to write to the error terminal.
		require
			interactive_terminal_is_interactive: interactive_terminal.is_interactive
		do
			Result := io.error
		end

;note
	copyright: "Copyright (c) 1984-2009, Eiffel Software"
	license: "GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options: "http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end