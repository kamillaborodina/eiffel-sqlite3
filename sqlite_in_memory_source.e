note
	description: "[
		A SQLite database source for in-memory databases.
		
		Note: This source will be destroyed when the database is closed.
	]"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2009-06-09 00:43:08 +0200 (Die, 09 Jun 2009) $"
	revision: "$Revision: 79140 $"

class
	SQLITE_IN_MEMORY_SOURCE

inherit
	SQLITE_SOURCE

feature -- Access

	locator: IMMUTABLE_STRING_8
			-- <Precursor>
		once
			Result := ":memory:"
		end

feature -- Status report

	exists: BOOLEAN = True
			-- <Precursor>

invariant
	is_special: is_special

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
