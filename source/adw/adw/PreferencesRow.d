/*
 * This file is part of d_adw.
 *
 * d_adw is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * d_adw is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with d_adw; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
module adw.PreferencesRow;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.ListBoxRow;
private import gtk.Widget;


/**
 * A [class@Gtk.ListBoxRow] used to present preferences.
 * 
 * The `AdwPreferencesRow` widget has a title that [class@Adw.PreferencesWindow]
 * will use to let the user look for a preference. It doesn't present the title
 * in any way and lets you present the preference as you please.
 * 
 * [class@Adw.ActionRow] and its derivatives are convenient to use as preference
 * rows as they take care of presenting the preference's title while letting you
 * compose the inputs of the preference around it.
 *
 * Since: 1.0
 */
public class PreferencesRow : ListBoxRow
{
	/** the main Gtk struct */
	protected AdwPreferencesRow* adwPreferencesRow;

	/** Get the main Gtk struct */
	public AdwPreferencesRow* getPreferencesRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwPreferencesRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwPreferencesRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwPreferencesRow* adwPreferencesRow, bool ownedRef = false)
	{
		this.adwPreferencesRow = adwPreferencesRow;
		super(cast(GtkListBoxRow*)adwPreferencesRow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_preferences_row_get_type();
	}

	/**
	 * Creates a new `AdwPreferencesRow`.
	 *
	 * Returns: the newly created `AdwPreferencesRow`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_preferences_row_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwPreferencesRow*) __p);
	}

	/**
	 * Gets the title of the preference represented by @self.
	 *
	 * Returns: the title
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_preferences_row_get_title(adwPreferencesRow));
	}

	/**
	 * Gets whether an embedded underline in the title indicates a mnemonic.
	 *
	 * Returns: whether an embedded underline in the title indicates a mnemonic
	 *
	 * Since: 1.0
	 */
	public bool getUseUnderline()
	{
		return adw_preferences_row_get_use_underline(adwPreferencesRow) != 0;
	}

	/**
	 * Sets the title of the preference represented by @self.
	 *
	 * Params:
	 *     title = the title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_preferences_row_set_title(adwPreferencesRow, Str.toStringz(title));
	}

	/**
	 * Sets whether an embedded underline in the title indicates a mnemonic.
	 *
	 * Params:
	 *     useUnderline = `TRUE` if underlines in the text indicate mnemonics
	 *
	 * Since: 1.0
	 */
	public void setUseUnderline(bool useUnderline)
	{
		adw_preferences_row_set_use_underline(adwPreferencesRow, useUnderline);
	}
}
