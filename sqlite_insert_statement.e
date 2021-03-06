note
	description: "[
		A statement class specific to processing INSERT statements.
	]"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2010-03-22 19:42:30 +0100 (Mon, 22 Mär 2010) $"
	revision: "$Revision: 82641 $"

class
	SQLITE_INSERT_STATEMENT

inherit
	SQLITE_MODIFY_STATEMENT
		redefine
			on_before_execute,
			on_after_executed
		end

create
	make

feature -- Measurement

	last_row_id: INTEGER_64
			-- Last inserted row

feature {NONE} -- Action handlers

	on_before_execute
			-- <Precursor>
		do
			Precursor
			last_row_id := 0
		end

	on_after_executed
			-- <Precursor>
		do
			Precursor
			if is_connected and then database.is_readable then
				last_row_id := sqlite3_last_insert_rowid (sqlite_api, internal_db)
			end
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
