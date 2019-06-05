/*!
 * jQuery JavaScript Library v1.3.2
 * http://jquery.com/
 *
 * Copyright (c) 2009 John Resig
 * Dual licensed under the MIT and GPL licenses.
 * http://docs.jquery.com/License
 *
 * Date: 2009-02-19 17:34:21 -0500 (Thu, 19 Feb 2009)
 * Revision: 6246
 */
(function(){

var 
	// Will speed up references to window, and allows munging its name.
	window = this,
	// Will speed up references to undefined, and allows munging its name.
	undefined,
	// Map over jQuery in case of overwrite
	_jQuery = window.jQuery,
	// Map over the $ in case of overwrite
	_$ = window.$,

	jQuery = window.jQuery = window.$ = function( selector, context ) {
		// The jQuery object is actually just the init constructor 'enhanced'
		return new jQuery.fn.init( selector, context );
	},

	// A simple way to check for HTML strings or ID strings
	// (both of which we optimize for)
	quickExpr = /^[^<]*(<(.|\s)+>)[^>]*$|^#([\w-]+)$/,
	// Is it a simple selector
	isSimple = /^.[^:#\[\.,]*$/;

jQuery.fn = jQuery.prototype = {
	init: function( selector, context ) {
		// Make sure that a selection was provided
		selector = selector || document;

		// Handle $(DOMElement)
		if ( selector.nodeType ) {
			this[0] = selector;
			this.length = 1;
			this.context = selector;
			return this;
		}
		// Handle HTML strings
		if ( typeof selector === "string" ) {
			// Are we dealing with HTML string or an ID?
			var match = quickExpr.exec( selector );

			// Verify a match, and that no context was specified for #id
			if ( match && (match[1] || !context) ) {

				// HANDLE: $(html) -> $(array)
				if ( match[1] )
					selector = jQuery.clean( [ match[1] ], context );

				// HANDLE: $("#id")
				else {
					var elem = document.getElementById( match[3] );

					// Handle the case where IE and Opera return items
					// by name instead of ID
					if ( elem && elem.id != match[3] )
						return jQuery().find( selector );

					// Otherwise, we inject the element directly into the jQuery object
					var ret = jQuery( elem || [] );
					ret.context = document;
					ret.selector = selector;
					return ret;
				}

			// HANDLE: $(expr, [context])
			// (which is just equivalent to: $(content).find(expr)
			} else
				return jQuery( context ).find( selector );

		// HANDLE: $(function)
		// Shortcut for document ready
		} else if ( jQuery.isFunction( selector ) )
			return jQuery( document ).ready( selector );

		// Make sure that old selector state is passed along
		if ( selector.selector && selector.context ) {
			this.selector = selector.selector;
			this.context = selector.context;
		}

		return this.setArray(jQuery.isArray( selector ) ?
			selector :
			jQuery.makeArray(selector));
	},

	// Start with an empty selector
	selector: "",

	// The current version of jQuery being used
	jquery: "1.3.2",

	// The number of elements contained in the matched element set
	size: function() {
		return this.length;
	},

	// Get the Nth element in the matched element set OR
	// Get the whole matched element set as a clean array
	get: function( num ) {
		return num === undefined ?

			// Return a 'clean' array
			Array.prototype.slice.call( this ) :

			// Return just the object
			this[ num ];
	},

	// Take an array of elements and push it onto the stack
	// (returning the new matched element set)
	pushStack: function( elems, name, selector ) {
		// Build a new jQuery matched element set
		var ret = jQuery( elems );

		// Add the old object onto the stack (as a reference)
		ret.prevObject = this;

		ret.context = this.context;

		if ( name === "find" )
			ret.selector = this.selector + (this.selector ? " " : "") + selector;
		else if ( name )
			ret.selector = this.selector + "." + name + "(" + selector + ")";

		// Return the newly-formed element set
		return ret;
	},

	// Force the current matched set of elements to become
	// the specified array of elements (destroying the stack in the process)
	// You should use pushStack() in order to do this, but maintain the stack
	setArray: function( elems ) {
		// Resetting the length to 0, then using the native Array push
		// is a super-fast way to populate an object with array-like properties
		this.length = 0;
		Array.prototype.push.apply( this, elems );

		return this;
	},

	// Execute a callback for every element in the matched set.
	// (You can seed the arguments with an array of args, but this is
	// only used internally.)
	each: function( callback, args ) {
		return jQuery.each( this, callback, args );
	},

	// Determine the position of an element within
	// the matched set of elements
	index: function( elem ) {
		// Locate the position of the desired element
		return jQuery.inArray(
			// If it receives a jQuery object, the first element is used
			elem && elem.jquery ? elem[0] : elem
		, this );
	},

	attr: function( name, value, type ) {
		var options = name;

		// Look for the case where we're accessing a style value
		if ( typeof name === "string" )
			if ( value === undefined )
				return this[0] && jQuery[ type || "attr" ]( this[0], name );

			else {
				options = {};
				options[ name ] = value;
			}

		// Check to see if we're setting style values
		return this.each(function(i){
			// Set all the styles
			for ( name in options )
				jQuery.attr(
					type ?
						this.style :
						this,
					name, jQuery.prop( this, options[ name ], type, i, name )
				);
		});
	},

	css: function( key, value ) {
		// ignore negative width and height values
		if ( (key == 'width' || key == 'height') && parseFloat(value) < 0 )
			value = undefined;
		return this.attr( key, value, "curCSS" );
	},

	text: function( text ) {
		if ( typeof text !== "object" && text != null )
			return this.empty().append( (this[0] && this[0].ownerDocument || document).createTextNode( text ) );

		var ret = "";

		jQuery.each( text || this, function(){
			jQuery.each( this.childNodes, function(){
				if ( this.nodeType != 8 )
					ret += this.nodeType != 1 ?
						this.nodeValue :
						jQuery.fn.text( [ this ] );
			});
		});

		return ret;
	},

	wrapAll: function( html ) {
		if ( this[0] ) {
			// The elements to wrap the target around
			var wrap = jQuery( html, this[0].ownerDocument ).clone();

			if ( this[0].parentNode )
				wrap.insertBefore( this[0] );

			wrap.map(function(){
				var elem = this;

				while ( elem.firstChild )
					elem = elem.firstChild;

				return elem;
			}).append(this);
		}

		return this;
	},

	wrapInner: function( html ) {
		return this.each(function(){
			jQuery( this ).contents().wrapAll( html );
		});
	},

	wrap: function( html ) {
		return this.each(function(){
			jQuery( this ).wrapAll( html );
		});
	},

	append: function() {
		return this.domManip(arguments, true, function(elem){
			if (this.nodeType == 1)
				this.appendChild( elem );
		});
	},

	prepend: function() {
		return this.domManip(arguments, true, function(elem){
			if (this.nodeType == 1)
				this.insertBefore( elem, this.firstChild );
		});
	},

	before: function() {
		return this.domManip(arguments, false, function(elem){
			this.parentNode.insertBefore( elem, this );
		});
	},

	after: function() {
		return this.domManip(arguments, false, function(elem){
			this.parentNode.insertBefore( elem, this.nextSibling );
		});
	},

	end: function() {
		return this.prevObject || jQuery( [] );
	},

	// For internal use only.
	// Behaves like an Array's method, not like a jQuery method.
	push: [].push,
	sort: [].sort,
	splice: [].splice,

	find: function( selector ) {
		if ( this.length === 1 ) {
			var ret = this.pushStack( [], "find", selector );
			ret.length = 0;
			jQuery.find( selector, this[0], ret );
			return ret;
		} else {
			return this.pushStack( jQuery.unique(jQuery.map(this, function(elem){
				return jQuery.find( selector, elem );
			})), "find", selector );
		}
	},

	clone: function( events ) {
		// Do the clone
		var ret = this.map(function(){
			if ( !jQuery.support.noCloneEvent && !jQuery.isXMLDoc(this) ) {
				// IE copies events bound via attachEvent when
				// using cloneNode. Calling detachEvent on the
				// clone will also remove the events from the orignal
				// In order to get around this, we use innerHTML.
				// Unfortunately, this means some modifications to
				// attributes in IE that are actually only stored
				// as properties will not be copied (such as the
				// the name attribute on an input).
				var html = this.outerHTML;
				if ( !html ) {
					var div = this.ownerDocument.createElement("div");
					div.appendChild( this.cloneNode(true) );
					html = div.innerHTML;
				}

				return jQuery.clean([html.replace(/ jQuery\d+="(?:\d+|null)"/g, "").replace(/^\s*/, "")])[0];
			} else
				return this.cloneNode(true);
		});

		// Copy the events from the original to the clone
		if ( events === true ) {
			var orig = this.find("*").andSelf(), i = 0;

			ret.find("*").andSelf().each(function(){
				if ( this.nodeName !== orig[i].nodeName )
					return;

				var events = jQuery.data( orig[i], "events" );

				for ( var type in events ) {
					for ( var handler in events[ type ] ) {
						jQuery.event.add( this, type, events[ type ][ handler ], events[ type ][ handler ].data );
					}
				}

				i++;
			});
		}

		// Return the cloned set
		return ret;
	},

	filter: function( selector ) {
		return this.pushStack(
			jQuery.isFunction( selector ) &&
			jQuery.grep(this, function(elem, i){
				return selector.call( elem, i );
			}) ||

			jQuery.multiFilter( selector, jQuery.grep(this, function(elem){
				return elem.nodeType === 1;
			}) ), "filter", selector );
	},

	closest: function( selector ) {
		var pos = jQuery.expr.match.POS.test( selector ) ? jQuery(selector) : null,
			closer = 0;

		return this.map(function(){
			var cur = this;
			while ( cur && cur.ownerDocument ) {
				if ( pos ? pos.index(cur) > -1 : jQuery(cur).is(selector) ) {
					jQuery.data(cur, "closest", closer);
					return cur;
				}
				cur = cur.parentNode;
				closer++;
			}
		});
	},

	not: function( selector ) {
		if ( typeof selector === "string" )
			// test special case where just one selector is passed in
			if ( isSimple.test( selector ) )
				return this.pushStack( jQuery.multiFilter( selector, this, true ), "not", selector );
			else
				selector = jQuery.multiFilter( selector, this );

		var isArrayLike = selector.length && selector[selector.length - 1] !== undefined && !selector.nodeType;
		return this.filter(function() {
			return isArrayLike ? jQuery.inArray( this, selector ) < 0 : this != selector;
		});
	},

	add: function( selector ) {
		return this.pushStack( jQuery.unique( jQuery.merge(
			this.get(),
			typeof selector === "string" ?
				jQuery( selector ) :
				jQuery.makeArray( selector )
		)));
	},

	is: function( selector ) {
		return !!selector && jQuery.multiFilter( selector, this ).length > 0;
	},

	hasClass: function( selector ) {
		return !!selector && this.is( "." + selector );
	},

	val: function( value ) {
		if ( value === undefined ) {			
			var elem = this[0];

			if ( elem ) {
				if( jQuery.nodeName( elem, 'option' ) )
					return (elem.attributes.value || {}).specified ? elem.value : elem.text;
				
				// We need to handle select boxes special
				if ( jQuery.nodeName( elem, "select" ) ) {
					var index = elem.selectedIndex,
						values = [],
						options = elem.options,
						one = elem.type == "select-one";

					// Nothing was selected
					if ( index < 0 )
						return null;

					// Loop through all the selected options
					for ( var i = one ? index : 0, max = one ? index + 1 : options.length; i < max; i++ ) {
						var option = options[ i ];

						if ( option.selected ) {
							// Get the specifc value for the option
							value = jQuery(option).val();

							// We don't need an array for one selects
							if ( one )
								return value;

							// Multi-Selects return an array
							values.push( value );
						}
					}

					return values;				
				}

				// Everything else, we just grab the value
				return (elem.value || "").replace(/\r/g, "");

			}

			return undefined;
		}

		if ( typeof value === "number" )
			value += '';

		return this.each(function(){
			if ( this.nodeType != 1 )
				return;

			if ( jQuery.isArray(value) && /radio|checkbox/.test( this.type ) )
				this.checked = (jQuery.inArray(this.value, value) >= 0 ||
					jQuery.inArray(this.name, value) >= 0);

			else if ( jQuery.nodeName( this, "select" ) ) {
				var values = jQuery.makeArray(value);

				jQuery( "option", this ).each(function(){
					this.selected = (jQuery.inArray( this.value, values ) >= 0 ||
						jQuery.inArray( this.text, values ) >= 0);
				});

				if ( !values.length )
					this.selectedIndex = -1;

			} else
				this.value = value;
		});
	},

	html: function( value ) {
		return value === undefined ?
			(this[0] ?
				this[0].innerHTML.replace(/ jQuery\d+="(?:\d+|null)"/g, "") :
				null) :
			this.empty().append( value );
	},

	replaceWith: function( value ) {
		return this.after( value ).remove();
	},

	eq: function( i ) {
		return this.slice( i, +i + 1 );
	},

	slice: function() {
		return this.pushStack( Array.prototype.slice.apply( this, arguments ),
			"slice", Array.prototype.slice.call(arguments).join(",") );
	},

	map: function( callback ) {
		return this.pushStack( jQuery.map(this, function(elem, i){
			return callback.call( elem, i, elem );
		}));
	},

	andSelf: function() {
		return this.add( this.prevObject );
	},

	domManip: function( args, table, callback ) {
		if ( this[0] ) {
			var fragment = (this[0].ownerDocument || this[0]).createDocumentFragment(),
				scripts = jQuery.clean( args, (this[0].ownerDocument || this[0]), fragment ),
				first = fragment.firstChild;

			if ( first )
				for ( var i = 0, l = this.length; i < l; i++ )
					callback.call( root(this[i], first), this.length > 1 || i > 0 ?
							fragment.cloneNode(true) : fragment );
		
			if ( scripts )
				jQuery.each( scripts, evalScript );
		}

		return this;
		
		function root( elem, cur ) {
			return table && jQuery.nodeName(elem, "table") && jQuery.nodeName(cur, "tr") ?
				(elem.getElementsByTagName("tbody")[0] ||
				elem.appendChild(elem.ownerDocument.createElement("tbody"))) :
				elem;
		}
	}
};

// Give the init function the jQuery prototype for later instantiation
jQuery.fn.init.prototype = jQuery.fn;

function evalScript( i, elem ) {
	if ( elem.src )
		jQuery.ajax({
			url: elem.src,
			async: false,
			dataType: "script"
		});

	else
		jQuery.globalEval( elem.text || elem.textContent || elem.innerHTML || "" );

	if ( elem.parentNode )
		elem.parentNode.removeChild( elem );
}

function now(){
	return +new Date;
}

jQuery.extend = jQuery.fn.extend = function() {
	// copy reference to target object
	var target = arguments[0] || {}, i = 1, length = arguments.length, deep = false, options;

	// Handle a deep copy situation
	if ( typeof target === "boolean" ) {
		deep = target;
		target = arguments[1] || {};
		// skip the boolean and the target
		i = 2;
	}

	// Handle case when target is a string or something (possible in deep copy)
	if ( typeof target !== "object" && !jQuery.isFunction(target) )
		target = {};

	// extend jQuery itself if only one argument is passed
	if ( length == i ) {
		target = this;
		--i;
	}

	for ( ; i < length; i++ )
		// Only deal with non-null/undefined values
		if ( (options = arguments[ i ]) != null )
			// Extend the base object
			for ( var name in options ) {
				var src = target[ name ], copy = options[ name ];

				// Prevent never-ending loop
				if ( target === copy )
					continue;

				// Recurse if we're merging object values
				if ( deep && copy && typeof copy === "object" && !copy.nodeType )
					target[ name ] = jQuery.extend( deep, 
						// Never move original objects, clone them
						src || ( copy.length != null ? [ ] : { } )
					, copy );

				// Don't bring in undefined values
				else if ( copy !== undefined )
					target[ name ] = copy;

			}

	// Return the modified object
	return target;
};

// exclude the following css properties to add px
var	exclude = /z-?index|font-?weight|opacity|zoom|line-?height/i,
	// cache defaultView
	defaultView = document.defaultView || {},
	toString = Object.prototype.toString;

jQuery.extend({
	noConflict: function( deep ) {
		window.$ = _$;

		if ( deep )
			window.jQuery = _jQuery;

		return jQuery;
	},

	// See test/unit/core.js for details concerning isFunction.
	// Since version 1.3, DOM methods and functions like alert
	// aren't supported. They return false on IE (#2968).
	isFunction: function( obj ) {
		return toString.call(obj) === "[object Function]";
	},

	isArray: function( obj ) {
		return toString.call(obj) === "[object Array]";
	},

	// check if an element is in a (or is an) XML document
	isXMLDoc: function( elem ) {
		return elem.nodeType === 9 && elem.documentElement.nodeName !== "HTML" ||
			!!elem.ownerDocument && jQuery.isXMLDoc( elem.ownerDocument );
	},

	// Evalulates a script in a global context
	globalEval: function( data ) {
		if ( data && /\S/.test(data) ) {
			// Inspired by code by Andrea Giammarchi
			// http://webreflection.blogspot.com/2007/08/global-scope-evaluation-and-dom.html
			var head = document.getElementsByTagName("head")[0] || document.documentElement,
				script = document.createElement("script");

			script.type = "text/javascript";
			if ( jQuery.support.scriptEval )
				script.appendChild( document.createTextNode( data ) );
			else
				script.text = data;

			// Use insertBefore instead of appendChild  to circumvent an IE6 bug.
			// This arises when a base node is used (#2709).
			head.insertBefore( script, head.firstChild );
			head.removeChild( script );
		}
	},

	nodeName: function( elem, name ) {
		return elem.nodeName && elem.nodeName.toUpperCase() == name.toUpperCase();
	},

	// args is for internal usage only
	each: function( object, callback, args ) {
		var name, i = 0, length = object.length;

		if ( args ) {
			if ( length === undefined ) {
				for ( name in object )
					if ( callback.apply( object[ name ], args ) === false )
						break;
			} else
				for ( ; i < length; )
					if ( callback.apply( object[ i++ ], args ) === false )
						break;

		// A special, fast, case for the most common use of each
		} else {
			if ( length === undefined ) {
				for ( name in object )
					if ( callback.call( object[ name ], name, object[ name ] ) === false )
						break;
			} else
				for ( var value = object[0];
					i < length && callback.call( value, i, value ) !== false; value = object[++i] ){}
		}

		return object;
	},

	prop: function( elem, value, type, i, name ) {
		// Handle executable functions
		if ( jQuery.isFunction( value ) )
			value = value.call( elem, i );

		// Handle passing in a number to a CSS property
		return typeof value === "number" && type == "curCSS" && !exclude.test( name ) ?
			value + "px" :
			value;
	},

	className: {
		// internal only, use addClass("class")
		add: function( elem, classNames ) {
			jQuery.each((classNames || "").split(/\s+/), function(i, className){
				if ( elem.nodeType == 1 && !jQuery.className.has( elem.className, className ) )
					elem.className += (elem.className ? " " : "") + className;
			});
		},

		// internal only, use removeClass("class")
		remove: function( elem, classNames ) {
			if (elem.nodeType == 1)
				elem.className = classNames !== undefined ?
					jQuery.grep(elem.className.split(/\s+/), function(className){
						return !jQuery.className.has( classNames, className );
					}).join(" ") :
					"";
		},

		// internal only, use hasClass("class")
		has: function( elem, className ) {
			return elem && jQuery.inArray( className, (elem.className || elem).toString().split(/\s+/) ) > -1;
		}
	},

	// A method for quickly swapping in/out CSS properties to get correct calculations
	swap: function( elem, options, callback ) {
		var old = {};
		// Remember the old values, and insert the new ones
		for ( var name in options ) {
			old[ name ] = elem.style[ name ];
			elem.style[ name ] = options[ name ];
		}

		callback.call( elem );

		// Revert the old values
		for ( var name in options )
			elem.style[ name ] = old[ name ];
	},

	css: function( elem, name, force, extra ) {
		if ( name == "width" || name == "height" ) {
			var val, props = { position: "absolute", visibility: "hidden", display:"block" }, which = name == "width" ? [ "Left", "Right" ] : [ "Top", "Bottom" ];

			function getWH() {
				val = name == "width" ? elem.offsetWidth : elem.offsetHeight;

				if ( extra === "border" )
					return;

				jQuery.each( which, function() {
					if ( !extra )
						val -= parseFloat(jQuery.curCSS( elem, "padding" + this, true)) || 0;
					if ( extra === "margin" )
						val += parseFloat(jQuery.curCSS( elem, "margin" + this, true)) || 0;
					else
						val -= parseFloat(jQuery.curCSS( elem, "border" + this + "Width", true)) || 0;
				});
			}

			if ( elem.offsetWidth !== 0 )
				getWH();
			else
				jQuery.swap( elem, props, getWH );

			return Math.max(0, Math.round(val));
		}

		return jQuery.curCSS( elem, name, force );
	},

	curCSS: function( elem, name, force ) {
		var ret, style = elem.style;

		// We need to handle opacity special in IE
		if ( name == "opacity" && !jQuery.support.opacity ) {
			ret = jQuery.attr( style, "opacity" );

			return ret == "" ?
				"1" :
				ret;
		}

		// Make sure we're using the right name for getting the float value
		if ( name.match( /float/i ) )
			name = styleFloat;

		if ( !force && style && style[ name ] )
			ret = style[ name ];

		else if ( defaultView.getComputedStyle ) {

			// Only "float" is needed here
			if ( name.match( /float/i ) )
				name = "float";

			name = name.replace( /([A-Z])/g, "-$1" ).toLowerCase();

			var computedStyle = defaultView.getComputedStyle( elem, null );

			if ( computedStyle )
				ret = computedStyle.getPropertyValue( name );

			// We should always get a number back from opacity
			if ( name == "opacity" && ret == "" )
				ret = "1";

		} else if ( elem.currentStyle ) {
			var camelCase = name.replace(/\-(\w)/g, function(all, letter){
				return letter.toUpperCase();
			});

			ret = elem.currentStyle[ name ] || elem.currentStyle[ camelCase ];

			// From the awesome hack by Dean Edwards
			// http://erik.eae.net/archives/2007/07/27/18.54.15/#comment-102291

			// If we're not dealing with a regular pixel number
			// but a number that has a weird ending, we need to convert it to pixels
			if ( !/^\d+(px)?$/i.test( ret ) && /^\d/.test( ret ) ) {
				// Remember the original values
				var left = style.left, rsLeft = elem.runtimeStyle.left;

				// Put in the new values to get a computed value out
				elem.runtimeStyle.left = elem.currentStyle.left;
				style.left = ret || 0;
				ret = style.pixelLeft + "px";

				// Revert the changed values
				style.left = left;
				elem.runtimeStyle.left = rsLeft;
			}
		}

		return ret;
	},

	clean: function( elems, context, fragment ) {
		context = context || document;

		// !context.createElement fails in IE with an error but returns typeof 'object'
		if ( typeof context.createElement === "undefined" )
			context = context.ownerDocument || context[0] && context[0].ownerDocument || document;

		// If a single string is passed in and it's a single tag
		// just do a createElement and skip the rest
		if ( !fragment && elems.length === 1 && typeof elems[0] === "string" ) {
			var match = /^<(\w+)\s*\/?>$/.exec(elems[0]);
			if ( match )
				return [ context.createElement( match[1] ) ];
		}

		var ret = [], scripts = [], div = context.createElement("div");

		jQuery.each(elems, function(i, elem){
			if ( typeof elem === "number" )
				elem += '';

			if ( !elem )
				return;

			// Convert html string into DOM nodes
			if ( typeof elem === "string" ) {
				// Fix "XHTML"-style tags in all browsers
				elem = elem.replace(/(<(\w+)[^>]*?)\/>/g, function(all, front, tag){
					return tag.match(/^(abbr|br|col|img|input|link|meta|param|hr|area|embed)$/i) ?
						all :
						front + "></" + tag + ">";
				});

				// Trim whitespace, otherwise indexOf won't work as expected
				var tags = elem.replace(/^\s+/, "").substring(0, 10).toLowerCase();

				var wrap =
					// option or optgroup
					!tags.indexOf("<opt") &&
					[ 1, "<select multiple='multiple'>", "</select>" ] ||

					!tags.indexOf("<leg") &&
					[ 1, "<fieldset>", "</fieldset>" ] ||

					tags.match(/^<(thead|tbody|tfoot|colg|cap)/) &&
					[ 1, "<table>", "</table>" ] ||

					!tags.indexOf("<tr") &&
					[ 2, "<table><tbody>", "</tbody></table>" ] ||

				 	// <thead> matched above
					(!tags.indexOf("<td") || !tags.indexOf("<th")) &&
					[ 3, "<table><tbody><tr>", "</tr></tbody></table>" ] ||

					!tags.indexOf("<col") &&
					[ 2, "<table><tbody></tbody><colgroup>", "</colgroup></table>" ] ||

					// IE can't serialize <link> and <script> tags normally
					!jQuery.support.htmlSerialize &&
					[ 1, "div<div>", "</div>" ] ||

					[ 0, "", "" ];

				// Go to html and back, then peel off extra wrappers
				div.innerHTML = wrap[1] + elem + wrap[2];

				// Move to the right depth
				while ( wrap[0]-- )
					div = div.lastChild;

				// Remove IE's autoinserted <tbody> from table fragments
				if ( !jQuery.support.tbody ) {

					// String was a <table>, *may* have spurious <tbody>
					var hasBody = /<tbody/i.test(elem),
						tbody = !tags.indexOf("<table") && !hasBody ?
							div.firstChild && div.firstChild.childNodes :

						// String was a bare <thead> or <tfoot>
						wrap[1] == "<table>" && !hasBody ?
							div.childNodes :
							[];

					for ( var j = tbody.length - 1; j >= 0 ; --j )
						if ( jQuery.nodeName( tbody[ j ], "tbody" ) && !tbody[ j ].childNodes.length )
							tbody[ j ].parentNode.removeChild( tbody[ j ] );

					}

				// IE completely kills leading whitespace when innerHTML is used
				if ( !jQuery.support.leadingWhitespace && /^\s/.test( elem ) )
					div.insertBefore( context.createTextNode( elem.match(/^\s*/)[0] ), div.firstChild );
				
				elem = jQuery.makeArray( div.childNodes );
			}

			if ( elem.nodeType )
				ret.push( elem );
			else
				ret = jQuery.merge( ret, elem );

		});

		if ( fragment ) {
			for ( var i = 0; ret[i]; i++ ) {
				if ( jQuery.nodeName( ret[i], "script" ) && (!ret[i].type || ret[i].type.toLowerCase() === "text/javascript") ) {
					scripts.push( ret[i].parentNode ? ret[i].parentNode.removeChild( ret[i] ) : ret[i] );
				} else {
					if ( ret[i].nodeType === 1 )
						ret.splice.apply( ret, [i + 1, 0].concat(jQuery.makeArray(ret[i].getElementsByTagName("script"))) );
					fragment.appendChild( ret[i] );
				}
			}
			
			return scripts;
		}

		return ret;
	},

	attr: function( elem, name, value ) {
		// don't set attributes on text and comment nodes
		if (!elem || elem.nodeType == 3 || elem.nodeType == 8)
			return undefined;

		var notxml = !jQuery.isXMLDoc( elem ),
			// Whether we are setting (or getting)
			set = value !== undefined;

		// Try to normalize/fix the name
		name = notxml && jQuery.props[ name ] || name;

		// Only do all the following if this is a node (faster for style)
		// IE elem.getAttribute passes even for style
		if ( elem.tagName ) {

			// These attributes require special treatment
			var special = /href|src|style/.test( name );

			// Safari mis-reports the default selected property of a hidden option
			// Accessing the parent's selectedIndex property fixes it
			if ( name == "selected" && elem.parentNode )
				elem.parentNode.selectedIndex;

			// If applicable, access the attribute via the DOM 0 way
			if ( name in elem && notxml && !special ) {
				if ( set ){
					// We can't allow the type property to be changed (since it causes problems in IE)
					if ( name == "type" && jQuery.nodeName( elem, "input" ) && elem.parentNode )
						throw "type property can't be changed";

					elem[ name ] = value;
				}

				// browsers index elements by id/name on forms, give priority to attributes.
				if( jQuery.nodeName( elem, "form" ) && elem.getAttributeNode(name) )
					return elem.getAttributeNode( name ).nodeValue;

				// elem.tabIndex doesn't always return the correct value when it hasn't been explicitly set
				// http://fluidproject.org/blog/2008/01/09/getting-setting-and-removing-tabindex-values-with-javascript/
				if ( name == "tabIndex" ) {
					var attributeNode = elem.getAttributeNode( "tabIndex" );
					return attributeNode && attributeNode.specified
						? attributeNode.value
						: elem.nodeName.match(/(button|input|object|select|textarea)/i)
							? 0
							: elem.nodeName.match(/^(a|area)$/i) && elem.href
								? 0
								: undefined;
				}

				return elem[ name ];
			}

			if ( !jQuery.support.style && notxml &&  name == "style" )
				return jQuery.attr( elem.style, "cssText", value );

			if ( set )
				// convert the value to a string (all browsers do this but IE) see #1070
				elem.setAttribute( name, "" + value );

			var attr = !jQuery.support.hrefNormalized && notxml && special
					// Some attributes require a special call on IE
					? elem.getAttribute( name, 2 )
					: elem.getAttribute( name );

			// Non-existent attributes return null, we normalize to undefined
			return attr === null ? undefined : attr;
		}

		// elem is actually elem.style ... set the style

		// IE uses filters for opacity
		if ( !jQuery.support.opacity && name == "opacity" ) {
			if ( set ) {
				// IE has trouble with opacity if it does not have layout
				// Force it by setting the zoom level
				elem.zoom = 1;

				// Set the alpha filter to set the opacity
				elem.filter = (elem.filter || "").replace( /alpha\([^)]*\)/, "" ) +
					(parseInt( value ) + '' == "NaN" ? "" : "alpha(opacity=" + value * 100 + ")");
			}

			return elem.filter && elem.filter.indexOf("opacity=") >= 0 ?
				(parseFloat( elem.filter.match(/opacity=([^)]*)/)[1] ) / 100) + '':
				"";
		}

		name = name.replace(/-([a-z])/ig, function(all, letter){
			return letter.toUpperCase();
		});

		if ( set )
			elem[ name ] = value;

		return elem[ name ];
	},

	trim: function( text ) {
		return (text || "").replace( /^\s+|\s+$/g, "" );
	},

	makeArray: function( array ) {
		var ret = [];

		if( array != null ){
			var i = array.length;
			// The window, strings (and functions) also have 'length'
			if( i == null || typeof array === "string" || jQuery.isFunction(array) || array.setInterval )
				ret[0] = array;
			else
				while( i )
					ret[--i] = array[i];
		}

		return ret;
	},

	inArray: function( elem, array ) {
		for ( var i = 0, length = array.length; i < length; i++ )
		// Use === because on IE, window == document
			if ( array[ i ] === elem )
				return i;

		return -1;
	},

	merge: function( first, second ) {
		// We have to loop this way because IE & Opera overwrite the length
		// expando of getElementsByTagName
		var i = 0, elem, pos = first.length;
		// Also, we need to make sure that the correct elements are being returned
		// (IE returns comment nodes in a '*' query)
		if ( !jQuery.support.getAll ) {
			while ( (elem = second[ i++ ]) != null )
				if ( elem.nodeType != 8 )
					first[ pos++ ] = elem;

		} else
			while ( (elem = second[ i++ ]) != null )
				first[ pos++ ] = elem;

		return first;
	},

	unique: function( array ) {
		var ret = [], done = {};

		try {

			for ( var i = 0, length = array.length; i < length; i++ ) {
				var id = jQuery.data( array[ i ] );

				if ( !done[ id ] ) {
					done[ id ] = true;
					ret.push( array[ i ] );
				}
			}

		} catch( e ) {
			ret = array;
		}

		return ret;
	},

	grep: function( elems, callback, inv ) {
		var ret = [];

		// Go through the array, only saving the items
		// that pass the validator function
		for ( var i = 0, length = elems.length; i < length; i++ )
			if ( !inv != !callback( elems[ i ], i ) )
				ret.push( elems[ i ] );

		return ret;
	},

	map: function( elems, callback ) {
		var ret = [];

		// Go through the array, translating each of the items to their
		// new value (or values).
		for ( var i = 0, length = elems.length; i < length; i++ ) {
			var value = callback( elems[ i ], i );

			if ( value != null )
				ret[ ret.length ] = value;
		}

		return ret.concat.apply( [], ret );
	}
});

// Use of jQuery.browser is deprecated.
// It's included for backwards compatibility and plugins,
// although they should work to migrate away.

var userAgent = navigator.userAgent.toLowerCase();

// Figure out what browser is being used
jQuery.browser = {
	version: (userAgent.match( /.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/ ) || [0,'0'])[1],
	safari: /webkit/.test( userAgent ),
	opera: /opera/.test( userAgent ),
	msie: /msie/.test( userAgent ) && !/opera/.test( userAgent ),
	mozilla: /mozilla/.test( userAgent ) && !/(compatible|webkit)/.test( userAgent )
};

jQuery.each({
	parent: function(elem){return elem.parentNode;},
	parents: function(elem){return jQuery.dir(elem,"parentNode");},
	next: function(elem){return jQuery.nth(elem,2,"nextSibling");},
	prev: function(elem){return jQuery.nth(elem,2,"previousSibling");},
	nextAll: function(elem){return jQuery.dir(elem,"nextSibling");},
	prevAll: function(elem){return jQuery.dir(elem,"previousSibling");},
	siblings: function(elem){return jQuery.sibling(elem.parentNode.firstChild,elem);},
	children: function(elem){return jQuery.sibling(elem.firstChild);},
	contents: function(elem){return jQuery.nodeName(elem,"iframe")?elem.contentDocument||elem.contentWindow.document:jQuery.makeArray(elem.childNodes);}
}, function(name, fn){
	jQuery.fn[ name ] = function( selector ) {
		var ret = jQuery.map( this, fn );

		if ( selector && typeof selector == "string" )
			ret = jQuery.multiFilter( selector, ret );

		return this.pushStack( jQuery.unique( ret ), name, selector );
	};
});

jQuery.each({
	appendTo: "append",
	prependTo: "prepend",
	insertBefore: "before",
	insertAfter: "after",
	replaceAll: "replaceWith"
}, function(name, original){
	jQuery.fn[ name ] = function( selector ) {
		var ret = [], insert = jQuery( selector );

		for ( var i = 0, l = insert.length; i < l; i++ ) {
			var elems = (i > 0 ? this.clone(true) : this).get();
			jQuery.fn[ original ].apply( jQuery(insert[i]), elems );
			ret = ret.concat( elems );
		}

		return this.pushStack( ret, name, selector );
	};
});

jQuery.each({
	removeAttr: function( name ) {
		jQuery.attr( this, name, "" );
		if (this.nodeType == 1)
			this.removeAttribute( name );
	},

	addClass: function( classNames ) {
		jQuery.className.add( this, classNames );
	},

	removeClass: function( classNames ) {
		jQuery.className.remove( this, classNames );
	},

	toggleClass: function( classNames, state ) {
		if( typeof state !== "boolean" )
			state = !jQuery.className.has( this, classNames );
		jQuery.className[ state ? "add" : "remove" ]( this, classNames );
	},

	remove: function( selector ) {
		if ( !selector || jQuery.filter( selector, [ this ] ).length ) {
			// Prevent memory leaks
			jQuery( "*", this ).add([this]).each(function(){
				jQuery.event.remove(this);
				jQuery.removeData(this);
			});
			if (this.parentNode)
				this.parentNode.removeChild( this );
		}
	},

	empty: function() {
		// Remove element nodes and prevent memory leaks
		jQuery(this).children().remove();

		// Remove any remaining nodes
		while ( this.firstChild )
			this.removeChild( this.firstChild );
	}
}, function(name, fn){
	jQuery.fn[ name ] = function(){
		return this.each( fn, arguments );
	};
});

// Helper function used by the dimensions and offset modules
function num(elem, prop) {
	return elem[0] && parseInt( jQuery.curCSS(elem[0], prop, true), 10 ) || 0;
}
var expando = "jQuery" + now(), uuid = 0, windowData = {};

jQuery.extend({
	cache: {},

	data: function( elem, name, data ) {
		elem = elem == window ?
			windowData :
			elem;

		var id = elem[ expando ];

		// Compute a unique ID for the element
		if ( !id )
			id = elem[ expando ] = ++uuid;

		// Only generate the data cache if we're
		// trying to access or manipulate it
		if ( name && !jQuery.cache[ id ] )
			jQuery.cache[ id ] = {};

		// Prevent overriding the named cache with undefined values
		if ( data !== undefined )
			jQuery.cache[ id ][ name ] = data;

		// Return the named cache data, or the ID for the element
		return name ?
			jQuery.cache[ id ][ name ] :
			id;
	},

	removeData: function( elem, name ) {
		elem = elem == window ?
			windowData :
			elem;

		var id = elem[ expando ];

		// If we want to remove a specific section of the element's data
		if ( name ) {
			if ( jQuery.cache[ id ] ) {
				// Remove the section of cache data
				delete jQuery.cache[ id ][ name ];

				// If we've removed all the data, remove the element's cache
				name = "";

				for ( name in jQuery.cache[ id ] )
					break;

				if ( !name )
					jQuery.removeData( elem );
			}

		// Otherwise, we want to remove all of the element's data
		} else {
			// Clean up the element expando
			try {
				delete elem[ expando ];
			} catch(e){
				// IE has trouble directly removing the expando
				// but it's ok with using removeAttribute
				if ( elem.removeAttribute )
					elem.removeAttribute( expando );
			}

			// Completely remove the data cache
			delete jQuery.cache[ id ];
		}
	},
	queue: function( elem, type, data ) {
		if ( elem ){
	
			type = (type || "fx") + "queue";
	
			var q = jQuery.data( elem, type );
	
			if ( !q || jQuery.isArray(data) )
				q = jQuery.data( elem, type, jQuery.makeArray(data) );
			else if( data )
				q.push( data );
	
		}
		return q;
	},

	dequeue: function( elem, type ){
		var queue = jQuery.queue( elem, type ),
			fn = queue.shift();
		
		if( !type || type === "fx" )
			fn = queue[0];
			
		if( fn !== undefined )
			fn.call(elem);
	}
});

jQuery.fn.extend({
	data: function( key, value ){
		var parts = key.split(".");
		parts[1] = parts[1] ? "." + parts[1] : "";

		if ( value === undefined ) {
			var data = this.triggerHandler("getData" + parts[1] + "!", [parts[0]]);

			if ( data === undefined && this.length )
				data = jQuery.data( this[0], key );

			return data === undefined && parts[1] ?
				this.data( parts[0] ) :
				data;
		} else
			return this.trigger("setData" + parts[1] + "!", [parts[0], value]).each(function(){
				jQuery.data( this, key, value );
			});
	},

	removeData: function( key ){
		return this.each(function(){
			jQuery.removeData( this, key );
		});
	},
	queue: function(type, data){
		if ( typeof type !== "string" ) {
			data = type;
			type = "fx";
		}

		if ( data === undefined )
			return jQuery.queue( this[0], type );

		return this.each(function(){
			var queue = jQuery.queue( this, type, data );
			
			 if( type == "fx" && queue.length == 1 )
				queue[0].call(this);
		});
	},
	dequeue: function(type){
		return this.each(function(){
			jQuery.dequeue( this, type );
		});
	}
});/*!
 * Sizzle CSS Selector Engine - v0.9.3
 *  Copyright 2009, The Dojo Foundation
 *  Released under the MIT, BSD, and GPL Licenses.
 *  More information: http://sizzlejs.com/
 */
(function(){

var chunker = /((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^[\]]*\]|['"][^'"]*['"]|[^[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?/g,
	done = 0,
	toString = Object.prototype.toString;

var Sizzle = function(selector, context, results, seed) {
	results = results || [];
	context = context || document;

	if ( context.nodeType !== 1 && context.nodeType !== 9 )
		return [];
	
	if ( !selector || typeof selector !== "string" ) {
		return results;
	}

	var parts = [], m, set, checkSet, check, mode, extra, prune = true;
	
	// Reset the position of the chunker regexp (start from head)
	chunker.lastIndex = 0;
	
	while ( (m = chunker.exec(selector)) !== null ) {
		parts.push( m[1] );
		
		if ( m[2] ) {
			extra = RegExp.rightContext;
			break;
		}
	}

	if ( parts.length > 1 && origPOS.exec( selector ) ) {
		if ( parts.length === 2 && Expr.relative[ parts[0] ] ) {
			set = posProcess( parts[0] + parts[1], context );
		} else {
			set = Expr.relative[ parts[0] ] ?
				[ context ] :
				Sizzle( parts.shift(), context );

			while ( parts.length ) {
				selector = parts.shift();

				if ( Expr.relative[ selector ] )
					selector += parts.shift();

				set = posProcess( selector, set );
			}
		}
	} else {
		var ret = seed ?
			{ expr: parts.pop(), set: makeArray(seed) } :
			Sizzle.find( parts.pop(), parts.length === 1 && context.parentNode ? context.parentNode : context, isXML(context) );
		set = Sizzle.filter( ret.expr, ret.set );

		if ( parts.length > 0 ) {
			checkSet = makeArray(set);
		} else {
			prune = false;
		}

		while ( parts.length ) {
			var cur = parts.pop(), pop = cur;

			if ( !Expr.relative[ cur ] ) {
				cur = "";
			} else {
				pop = parts.pop();
			}

			if ( pop == null ) {
				pop = context;
			}

			Expr.relative[ cur ]( checkSet, pop, isXML(context) );
		}
	}

	if ( !checkSet ) {
		checkSet = set;
	}

	if ( !checkSet ) {
		throw "Syntax error, unrecognized expression: " + (cur || selector);
	}

	if ( toString.call(checkSet) === "[object Array]" ) {
		if ( !prune ) {
			results.push.apply( results, checkSet );
		} else if ( context.nodeType === 1 ) {
			for ( var i = 0; checkSet[i] != null; i++ ) {
				if ( checkSet[i] && (checkSet[i] === true || checkSet[i].nodeType === 1 && contains(context, checkSet[i])) ) {
					results.push( set[i] );
				}
			}
		} else {
			for ( var i = 0; checkSet[i] != null; i++ ) {
				if ( checkSet[i] && checkSet[i].nodeType === 1 ) {
					results.push( set[i] );
				}
			}
		}
	} else {
		makeArray( checkSet, results );
	}

	if ( extra ) {
		Sizzle( extra, context, results, seed );

		if ( sortOrder ) {
			hasDuplicate = false;
			results.sort(sortOrder);

			if ( hasDuplicate ) {
				for ( var i = 1; i < results.length; i++ ) {
					if ( results[i] === results[i-1] ) {
						results.splice(i--, 1);
					}
				}
			}
		}
	}

	return results;
};

Sizzle.matches = function(expr, set){
	return Sizzle(expr, null, null, set);
};

Sizzle.find = function(expr, context, isXML){
	var set, match;

	if ( !expr ) {
		return [];
	}

	for ( var i = 0, l = Expr.order.length; i < l; i++ ) {
		var type = Expr.order[i], match;
		
		if ( (match = Expr.match[ type ].exec( expr )) ) {
			var left = RegExp.leftContext;

			if ( left.substr( left.length - 1 ) !== "\\" ) {
				match[1] = (match[1] || "").replace(/\\/g, "");
				set = Expr.find[ type ]( match, context, isXML );
				if ( set != null ) {
					expr = expr.replace( Expr.match[ type ], "" );
					break;
				}
			}
		}
	}

	if ( !set ) {
		set = context.getElementsByTagName("*");
	}

	return {set: set, expr: expr};
};

Sizzle.filter = function(expr, set, inplace, not){
	var old = expr, result = [], curLoop = set, match, anyFound,
		isXMLFilter = set && set[0] && isXML(set[0]);

	while ( expr && set.length ) {
		for ( var type in Expr.filter ) {
			if ( (match = Expr.match[ type ].exec( expr )) != null ) {
				var filter = Expr.filter[ type ], found, item;
				anyFound = false;

				if ( curLoop == result ) {
					result = [];
				}

				if ( Expr.preFilter[ type ] ) {
					match = Expr.preFilter[ type ]( match, curLoop, inplace, result, not, isXMLFilter );

					if ( !match ) {
						anyFound = found = true;
					} else if ( match === true ) {
						continue;
					}
				}

				if ( match ) {
					for ( var i = 0; (item = curLoop[i]) != null; i++ ) {
						if ( item ) {
							found = filter( item, match, i, curLoop );
							var pass = not ^ !!found;

							if ( inplace && found != null ) {
								if ( pass ) {
									anyFound = true;
								} else {
									curLoop[i] = false;
								}
							} else if ( pass ) {
								result.push( item );
								anyFound = true;
							}
						}
					}
				}

				if ( found !== undefined ) {
					if ( !inplace ) {
						curLoop = result;
					}

					expr = expr.replace( Expr.match[ type ], "" );

					if ( !anyFound ) {
						return [];
					}

					break;
				}
			}
		}

		// Improper expression
		if ( expr == old ) {
			if ( anyFound == null ) {
				throw "Syntax error, unrecognized expression: " + expr;
			} else {
				break;
			}
		}

		old = expr;
	}

	return curLoop;
};

var Expr = Sizzle.selectors = {
	order: [ "ID", "NAME", "TAG" ],
	match: {
		ID: /#((?:[\w\u00c0-\uFFFF_-]|\\.)+)/,
		CLASS: /\.((?:[\w\u00c0-\uFFFF_-]|\\.)+)/,
		NAME: /\[name=['"]*((?:[\w\u00c0-\uFFFF_-]|\\.)+)['"]*\]/,
		ATTR: /\[\s*((?:[\w\u00c0-\uFFFF_-]|\\.)+)\s*(?:(\S?=)\s*(['"]*)(.*?)\3|)\s*\]/,
		TAG: /^((?:[\w\u00c0-\uFFFF\*_-]|\\.)+)/,
		CHILD: /:(only|nth|last|first)-child(?:\((even|odd|[\dn+-]*)\))?/,
		POS: /:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^-]|$)/,
		PSEUDO: /:((?:[\w\u00c0-\uFFFF_-]|\\.)+)(?:\((['"]*)((?:\([^\)]+\)|[^\2\(\)]*)+)\2\))?/
	},
	attrMap: {
		"class": "className",
		"for": "htmlFor"
	},
	attrHandle: {
		href: function(elem){
			return elem.getAttribute("href");
		}
	},
	relative: {
		"+": function(checkSet, part, isXML){
			var isPartStr = typeof part === "string",
				isTag = isPartStr && !/\W/.test(part),
				isPartStrNotTag = isPartStr && !isTag;

			if ( isTag && !isXML ) {
				part = part.toUpperCase();
			}

			for ( var i = 0, l = checkSet.length, elem; i < l; i++ ) {
				if ( (elem = checkSet[i]) ) {
					while ( (elem = elem.previousSibling) && elem.nodeType !== 1 ) {}

					checkSet[i] = isPartStrNotTag || elem && elem.nodeName === part ?
						elem || false :
						elem === part;
				}
			}

			if ( isPartStrNotTag ) {
				Sizzle.filter( part, checkSet, true );
			}
		},
		">": function(checkSet, part, isXML){
			var isPartStr = typeof part === "string";

			if ( isPartStr && !/\W/.test(part) ) {
				part = isXML ? part : part.toUpperCase();

				for ( var i = 0, l = checkSet.length; i < l; i++ ) {
					var elem = checkSet[i];
					if ( elem ) {
						var parent = elem.parentNode;
						checkSet[i] = parent.nodeName === part ? parent : false;
					}
				}
			} else {
				for ( var i = 0, l = checkSet.length; i < l; i++ ) {
					var elem = checkSet[i];
					if ( elem ) {
						checkSet[i] = isPartStr ?
							elem.parentNode :
							elem.parentNode === part;
					}
				}

				if ( isPartStr ) {
					Sizzle.filter( part, checkSet, true );
				}
			}
		},
		"": function(checkSet, part, isXML){
			var doneName = done++, checkFn = dirCheck;

			if ( !part.match(/\W/) ) {
				var nodeCheck = part = isXML ? part : part.toUpperCase();
				checkFn = dirNodeCheck;
			}

			checkFn("parentNode", part, doneName, checkSet, nodeCheck, isXML);
		},
		"~": function(checkSet, part, isXML){
			var doneName = done++, checkFn = dirCheck;

			if ( typeof part === "string" && !part.match(/\W/) ) {
				var nodeCheck = part = isXML ? part : part.toUpperCase();
				checkFn = dirNodeCheck;
			}

			checkFn("previousSibling", part, doneName, checkSet, nodeCheck, isXML);
		}
	},
	find: {
		ID: function(match, context, isXML){
			if ( typeof context.getElementById !== "undefined" && !isXML ) {
				var m = context.getElementById(match[1]);
				return m ? [m] : [];
			}
		},
		NAME: function(match, context, isXML){
			if ( typeof context.getElementsByName !== "undefined" ) {
				var ret = [], results = context.getElementsByName(match[1]);

				for ( var i = 0, l = results.length; i < l; i++ ) {
					if ( results[i].getAttribute("name") === match[1] ) {
						ret.push( results[i] );
					}
				}

				return ret.length === 0 ? null : ret;
			}
		},
		TAG: function(match, context){
			return context.getElementsByTagName(match[1]);
		}
	},
	preFilter: {
		CLASS: function(match, curLoop, inplace, result, not, isXML){
			match = " " + match[1].replace(/\\/g, "") + " ";

			if ( isXML ) {
				return match;
			}

			for ( var i = 0, elem; (elem = curLoop[i]) != null; i++ ) {
				if ( elem ) {
					if ( not ^ (elem.className && (" " + elem.className + " ").indexOf(match) >= 0) ) {
						if ( !inplace )
							result.push( elem );
					} else if ( inplace ) {
						curLoop[i] = false;
					}
				}
			}

			return false;
		},
		ID: function(match){
			return match[1].replace(/\\/g, "");
		},
		TAG: function(match, curLoop){
			for ( var i = 0; curLoop[i] === false; i++ ){}
			return curLoop[i] && isXML(curLoop[i]) ? match[1] : match[1].toUpperCase();
		},
		CHILD: function(match){
			if ( match[1] == "nth" ) {
				// parse equations like 'even', 'odd', '5', '2n', '3n+2', '4n-1', '-n+6'
				var test = /(-?)(\d*)n((?:\+|-)?\d*)/.exec(
					match[2] == "even" && "2n" || match[2] == "odd" && "2n+1" ||
					!/\D/.test( match[2] ) && "0n+" + match[2] || match[2]);

				// calculate the numbers (first)n+(last) including if they are negative
				match[2] = (test[1] + (test[2] || 1)) - 0;
				match[3] = test[3] - 0;
			}

			// TODO: Move to normal caching system
			match[0] = done++;

			return match;
		},
		ATTR: function(match, curLoop, inplace, result, not, isXML){
			var name = match[1].replace(/\\/g, "");
			
			if ( !isXML && Expr.attrMap[name] ) {
				match[1] = Expr.attrMap[name];
			}

			if ( match[2] === "~=" ) {
				match[4] = " " + match[4] + " ";
			}

			return match;
		},
		PSEUDO: function(match, curLoop, inplace, result, not){
			if ( match[1] === "not" ) {
				// If we're dealing with a complex expression, or a simple one
				if ( match[3].match(chunker).length > 1 || /^\w/.test(match[3]) ) {
					match[3] = Sizzle(match[3], null, null, curLoop);
				} else {
					var ret = Sizzle.filter(match[3], curLoop, inplace, true ^ not);
					if ( !inplace ) {
						result.push.apply( result, ret );
					}
					return false;
				}
			} else if ( Expr.match.POS.test( match[0] ) || Expr.match.CHILD.test( match[0] ) ) {
				return true;
			}
			
			return match;
		},
		POS: function(match){
			match.unshift( true );
			return match;
		}
	},
	filters: {
		enabled: function(elem){
			return elem.disabled === false && elem.type !== "hidden";
		},
		disabled: function(elem){
			return elem.disabled === true;
		},
		checked: function(elem){
			return elem.checked === true;
		},
		selected: function(elem){
			// Accessing this property makes selected-by-default
			// options in Safari work properly
			elem.parentNode.selectedIndex;
			return elem.selected === true;
		},
		parent: function(elem){
			return !!elem.firstChild;
		},
		empty: function(elem){
			return !elem.firstChild;
		},
		has: function(elem, i, match){
			return !!Sizzle( match[3], elem ).length;
		},
		header: function(elem){
			return /h\d/i.test( elem.nodeName );
		},
		text: function(elem){
			return "text" === elem.type;
		},
		radio: function(elem){
			return "radio" === elem.type;
		},
		checkbox: function(elem){
			return "checkbox" === elem.type;
		},
		file: function(elem){
			return "file" === elem.type;
		},
		password: function(elem){
			return "password" === elem.type;
		},
		submit: function(elem){
			return "submit" === elem.type;
		},
		image: function(elem){
			return "image" === elem.type;
		},
		reset: function(elem){
			return "reset" === elem.type;
		},
		button: function(elem){
			return "button" === elem.type || elem.nodeName.toUpperCase() === "BUTTON";
		},
		input: function(elem){
			return /input|select|textarea|button/i.test(elem.nodeName);
		}
	},
	setFilters: {
		first: function(elem, i){
			return i === 0;
		},
		last: function(elem, i, match, array){
			return i === array.length - 1;
		},
		even: function(elem, i){
			return i % 2 === 0;
		},
		odd: function(elem, i){
			return i % 2 === 1;
		},
		lt: function(elem, i, match){
			return i < match[3] - 0;
		},
		gt: function(elem, i, match){
			return i > match[3] - 0;
		},
		nth: function(elem, i, match){
			return match[3] - 0 == i;
		},
		eq: function(elem, i, match){
			return match[3] - 0 == i;
		}
	},
	filter: {
		PSEUDO: function(elem, match, i, array){
			var name = match[1], filter = Expr.filters[ name ];

			if ( filter ) {
				return filter( elem, i, match, array );
			} else if ( name === "contains" ) {
				return (elem.textContent || elem.innerText || "").indexOf(match[3]) >= 0;
			} else if ( name === "not" ) {
				var not = match[3];

				for ( var i = 0, l = not.length; i < l; i++ ) {
					if ( not[i] === elem ) {
						return false;
					}
				}

				return true;
			}
		},
		CHILD: function(elem, match){
			var type = match[1], node = elem;
			switch (type) {
				case 'only':
				case 'first':
					while (node = node.previousSibling)  {
						if ( node.nodeType === 1 ) return false;
					}
					if ( type == 'first') return true;
					node = elem;
				case 'last':
					while (node = node.nextSibling)  {
						if ( node.nodeType === 1 ) return false;
					}
					return true;
				case 'nth':
					var first = match[2], last = match[3];

					if ( first == 1 && last == 0 ) {
						return true;
					}
					
					var doneName = match[0],
						parent = elem.parentNode;
	
					if ( parent && (parent.sizcache !== doneName || !elem.nodeIndex) ) {
						var count = 0;
						for ( node = parent.firstChild; node; node = node.nextSibling ) {
							if ( node.nodeType === 1 ) {
								node.nodeIndex = ++count;
							}
						} 
						parent.sizcache = doneName;
					}
					
					var diff = elem.nodeIndex - last;
					if ( first == 0 ) {
						return diff == 0;
					} else {
						return ( diff % first == 0 && diff / first >= 0 );
					}
			}
		},
		ID: function(elem, match){
			return elem.nodeType === 1 && elem.getAttribute("id") === match;
		},
		TAG: function(elem, match){
			return (match === "*" && elem.nodeType === 1) || elem.nodeName === match;
		},
		CLASS: function(elem, match){
			return (" " + (elem.className || elem.getAttribute("class")) + " ")
				.indexOf( match ) > -1;
		},
		ATTR: function(elem, match){
			var name = match[1],
				result = Expr.attrHandle[ name ] ?
					Expr.attrHandle[ name ]( elem ) :
					elem[ name ] != null ?
						elem[ name ] :
						elem.getAttribute( name ),
				value = result + "",
				type = match[2],
				check = match[4];

			return result == null ?
				type === "!=" :
				type === "=" ?
				value === check :
				type === "*=" ?
				value.indexOf(check) >= 0 :
				type === "~=" ?
				(" " + value + " ").indexOf(check) >= 0 :
				!check ?
				value && result !== false :
				type === "!=" ?
				value != check :
				type === "^=" ?
				value.indexOf(check) === 0 :
				type === "$=" ?
				value.substr(value.length - check.length) === check :
				type === "|=" ?
				value === check || value.substr(0, check.length + 1) === check + "-" :
				false;
		},
		POS: function(elem, match, i, array){
			var name = match[2], filter = Expr.setFilters[ name ];

			if ( filter ) {
				return filter( elem, i, match, array );
			}
		}
	}
};

var origPOS = Expr.match.POS;

for ( var type in Expr.match ) {
	Expr.match[ type ] = RegExp( Expr.match[ type ].source + /(?![^\[]*\])(?![^\(]*\))/.source );
}

var makeArray = function(array, results) {
	array = Array.prototype.slice.call( array );

	if ( results ) {
		results.push.apply( results, array );
		return results;
	}
	
	return array;
};

// Perform a simple check to determine if the browser is capable of
// converting a NodeList to an array using builtin methods.
try {
	Array.prototype.slice.call( document.documentElement.childNodes );

// Provide a fallback method if it does not work
} catch(e){
	makeArray = function(array, results) {
		var ret = results || [];

		if ( toString.call(array) === "[object Array]" ) {
			Array.prototype.push.apply( ret, array );
		} else {
			if ( typeof array.length === "number" ) {
				for ( var i = 0, l = array.length; i < l; i++ ) {
					ret.push( array[i] );
				}
			} else {
				for ( var i = 0; array[i]; i++ ) {
					ret.push( array[i] );
				}
			}
		}

		return ret;
	};
}

var sortOrder;

if ( document.documentElement.compareDocumentPosition ) {
	sortOrder = function( a, b ) {
		var ret = a.compareDocumentPosition(b) & 4 ? -1 : a === b ? 0 : 1;
		if ( ret === 0 ) {
			hasDuplicate = true;
		}
		return ret;
	};
} else if ( "sourceIndex" in document.documentElement ) {
	sortOrder = function( a, b ) {
		var ret = a.sourceIndex - b.sourceIndex;
		if ( ret === 0 ) {
			hasDuplicate = true;
		}
		return ret;
	};
} else if ( document.createRange ) {
	sortOrder = function( a, b ) {
		var aRange = a.ownerDocument.createRange(), bRange = b.ownerDocument.createRange();
		aRange.selectNode(a);
		aRange.collapse(true);
		bRange.selectNode(b);
		bRange.collapse(true);
		var ret = aRange.compareBoundaryPoints(Range.START_TO_END, bRange);
		if ( ret === 0 ) {
			hasDuplicate = true;
		}
		return ret;
	};
}

// Check to see if the browser returns elements by name when
// querying by getElementById (and provide a workaround)
(function(){
	// We're going to inject a fake input element with a specified name
	var form = document.createElement("form"),
		id = "script" + (new Date).getTime();
	form.innerHTML = "<input name='" + id + "'/>";

	// Inject it into the root element, check its status, and remove it quickly
	var root = document.documentElement;
	root.insertBefore( form, root.firstChild );

	// The workaround has to do additional checks after a getElementById
	// Which slows things down for other browsers (hence the branching)
	if ( !!document.getElementById( id ) ) {
		Expr.find.ID = function(match, context, isXML){
			if ( typeof context.getElementById !== "undefined" && !isXML ) {
				var m = context.getElementById(match[1]);
				return m ? m.id === match[1] || typeof m.getAttributeNode !== "undefined" && m.getAttributeNode("id").nodeValue === match[1] ? [m] : undefined : [];
			}
		};

		Expr.filter.ID = function(elem, match){
			var node = typeof elem.getAttributeNode !== "undefined" && elem.getAttributeNode("id");
			return elem.nodeType === 1 && node && node.nodeValue === match;
		};
	}

	root.removeChild( form );
})();

(function(){
	// Check to see if the browser returns only elements
	// when doing getElementsByTagName("*")

	// Create a fake element
	var div = document.createElement("div");
	div.appendChild( document.createComment("") );

	// Make sure no comments are found
	if ( div.getElementsByTagName("*").length > 0 ) {
		Expr.find.TAG = function(match, context){
			var results = context.getElementsByTagName(match[1]);

			// Filter out possible comments
			if ( match[1] === "*" ) {
				var tmp = [];

				for ( var i = 0; results[i]; i++ ) {
					if ( results[i].nodeType === 1 ) {
						tmp.push( results[i] );
					}
				}

				results = tmp;
			}

			return results;
		};
	}

	// Check to see if an attribute returns normalized href attributes
	div.innerHTML = "<a href='#'></a>";
	if ( div.firstChild && typeof div.firstChild.getAttribute !== "undefined" &&
			div.firstChild.getAttribute("href") !== "#" ) {
		Expr.attrHandle.href = function(elem){
			return elem.getAttribute("href", 2);
		};
	}
})();

if ( document.querySelectorAll ) (function(){
	var oldSizzle = Sizzle, div = document.createElement("div");
	div.innerHTML = "<p class='TEST'></p>";

	// Safari can't handle uppercase or unicode characters when
	// in quirks mode.
	if ( div.querySelectorAll && div.querySelectorAll(".TEST").length === 0 ) {
		return;
	}
	
	Sizzle = function(query, context, extra, seed){
		context = context || document;

		// Only use querySelectorAll on non-XML documents
		// (ID selectors don't work in non-HTML documents)
		if ( !seed && context.nodeType === 9 && !isXML(context) ) {
			try {
				return makeArray( context.querySelectorAll(query), extra );
			} catch(e){}
		}
		
		return oldSizzle(query, context, extra, seed);
	};

	Sizzle.find = oldSizzle.find;
	Sizzle.filter = oldSizzle.filter;
	Sizzle.selectors = oldSizzle.selectors;
	Sizzle.matches = oldSizzle.matches;
})();

if ( document.getElementsByClassName && document.documentElement.getElementsByClassName ) (function(){
	var div = document.createElement("div");
	div.innerHTML = "<div class='test e'></div><div class='test'></div>";

	// Opera can't find a second classname (in 9.6)
	if ( div.getElementsByClassName("e").length === 0 )
		return;

	// Safari caches class attributes, doesn't catch changes (in 3.2)
	div.lastChild.className = "e";

	if ( div.getElementsByClassName("e").length === 1 )
		return;

	Expr.order.splice(1, 0, "CLASS");
	Expr.find.CLASS = function(match, context, isXML) {
		if ( typeof context.getElementsByClassName !== "undefined" && !isXML ) {
			return context.getElementsByClassName(match[1]);
		}
	};
})();

function dirNodeCheck( dir, cur, doneName, checkSet, nodeCheck, isXML ) {
	var sibDir = dir == "previousSibling" && !isXML;
	for ( var i = 0, l = checkSet.length; i < l; i++ ) {
		var elem = checkSet[i];
		if ( elem ) {
			if ( sibDir && elem.nodeType === 1 ){
				elem.sizcache = doneName;
				elem.sizset = i;
			}
			elem = elem[dir];
			var match = false;

			while ( elem ) {
				if ( elem.sizcache === doneName ) {
					match = checkSet[elem.sizset];
					break;
				}

				if ( elem.nodeType === 1 && !isXML ){
					elem.sizcache = doneName;
					elem.sizset = i;
				}

				if ( elem.nodeName === cur ) {
					match = elem;
					break;
				}

				elem = elem[dir];
			}

			checkSet[i] = match;
		}
	}
}

function dirCheck( dir, cur, doneName, checkSet, nodeCheck, isXML ) {
	var sibDir = dir == "previousSibling" && !isXML;
	for ( var i = 0, l = checkSet.length; i < l; i++ ) {
		var elem = checkSet[i];
		if ( elem ) {
			if ( sibDir && elem.nodeType === 1 ) {
				elem.sizcache = doneName;
				elem.sizset = i;
			}
			elem = elem[dir];
			var match = false;

			while ( elem ) {
				if ( elem.sizcache === doneName ) {
					match = checkSet[elem.sizset];
					break;
				}

				if ( elem.nodeType === 1 ) {
					if ( !isXML ) {
						elem.sizcache = doneName;
						elem.sizset = i;
					}
					if ( typeof cur !== "string" ) {
						if ( elem === cur ) {
							match = true;
							break;
						}

					} else if ( Sizzle.filter( cur, [elem] ).length > 0 ) {
						match = elem;
						break;
					}
				}

				elem = elem[dir];
			}

			checkSet[i] = match;
		}
	}
}

var contains = document.compareDocumentPosition ?  function(a, b){
	return a.compareDocumentPosition(b) & 16;
} : function(a, b){
	return a !== b && (a.contains ? a.contains(b) : true);
};

var isXML = function(elem){
	return elem.nodeType === 9 && elem.documentElement.nodeName !== "HTML" ||
		!!elem.ownerDocument && isXML( elem.ownerDocument );
};

var posProcess = function(selector, context){
	var tmpSet = [], later = "", match,
		root = context.nodeType ? [context] : context;

	// Position selectors must be done after the filter
	// And so must :not(positional) so we move all PSEUDOs to the end
	while ( (match = Expr.match.PSEUDO.exec( selector )) ) {
		later += match[0];
		selector = selector.replace( Expr.match.PSEUDO, "" );
	}

	selector = Expr.relative[selector] ? selector + "*" : selector;

	for ( var i = 0, l = root.length; i < l; i++ ) {
		Sizzle( selector, root[i], tmpSet );
	}

	return Sizzle.filter( later, tmpSet );
};

// EXPOSE
jQuery.find = Sizzle;
jQuery.filter = Sizzle.filter;
jQuery.expr = Sizzle.selectors;
jQuery.expr[":"] = jQuery.expr.filters;

Sizzle.selectors.filters.hidden = function(elem){
	return elem.offsetWidth === 0 || elem.offsetHeight === 0;
};

Sizzle.selectors.filters.visible = function(elem){
	return elem.offsetWidth > 0 || elem.offsetHeight > 0;
};

Sizzle.selectors.filters.animated = function(elem){
	return jQuery.grep(jQuery.timers, function(fn){
		return elem === fn.elem;
	}).length;
};

jQuery.multiFilter = function( expr, elems, not ) {
	if ( not ) {
		expr = ":not(" + expr + ")";
	}

	return Sizzle.matches(expr, elems);
};

jQuery.dir = function( elem, dir ){
	var matched = [], cur = elem[dir];
	while ( cur && cur != document ) {
		if ( cur.nodeType == 1 )
			matched.push( cur );
		cur = cur[dir];
	}
	return matched;
};

jQuery.nth = function(cur, result, dir, elem){
	result = result || 1;
	var num = 0;

	for ( ; cur; cur = cur[dir] )
		if ( cur.nodeType == 1 && ++num == result )
			break;

	return cur;
};

jQuery.sibling = function(n, elem){
	var r = [];

	for ( ; n; n = n.nextSibling ) {
		if ( n.nodeType == 1 && n != elem )
			r.push( n );
	}

	return r;
};

return;

window.Sizzle = Sizzle;

})();
/*
 * A number of helper functions used for managing events.
 * Many of the ideas behind this code originated from
 * Dean Edwards' addEvent library.
 */
jQuery.event = {

	// Bind an event to an element
	// Original by Dean Edwards
	add: function(elem, types, handler, data) {
		if ( elem.nodeType == 3 || elem.nodeType == 8 )
			return;

		// For whatever reason, IE has trouble passing the window object
		// around, causing it to be cloned in the process
		if ( elem.setInterval && elem != window )
			elem = window;

		// Make sure that the function being executed has a unique ID
		if ( !handler.guid )
			handler.guid = this.guid++;

		// if data is passed, bind to handler
		if ( data !== undefined ) {
			// Create temporary function pointer to original handler
			var fn = handler;

			// Create unique handler function, wrapped around original handler
			handler = this.proxy( fn );

			// Store data in unique handler
			handler.data = data;
		}

		// Init the element's event structure
		var events = jQuery.data(elem, "events") || jQuery.data(elem, "events", {}),
			handle = jQuery.data(elem, "handle") || jQuery.data(elem, "handle", function(){
				// Handle the second event of a trigger and when
				// an event is called after a page has unloaded
				return typeof jQuery !== "undefined" && !jQuery.event.triggered ?
					jQuery.event.handle.apply(arguments.callee.elem, arguments) :
					undefined;
			});
		// Add elem as a property of the handle function
		// This is to prevent a memory leak with non-native
		// event in IE.
		handle.elem = elem;

		// Handle multiple events separated by a space
		// jQuery(...).bind("mouseover mouseout", fn);
		jQuery.each(types.split(/\s+/), function(index, type) {
			// Namespaced event handlers
			var namespaces = type.split(".");
			type = namespaces.shift();
			handler.type = namespaces.slice().sort().join(".");

			// Get the current list of functions bound to this event
			var handlers = events[type];
			
			if ( jQuery.event.specialAll[type] )
				jQuery.event.specialAll[type].setup.call(elem, data, namespaces);

			// Init the event handler queue
			if (!handlers) {
				handlers = events[type] = {};

				// Check for a special event handler
				// Only use addEventListener/attachEvent if the special
				// events handler returns false
				if ( !jQuery.event.special[type] || jQuery.event.special[type].setup.call(elem, data, namespaces) === false ) {
					// Bind the global event handler to the element
					if (elem.addEventListener)
						elem.addEventListener(type, handle, false);
					else if (elem.attachEvent)
						elem.attachEvent("on" + type, handle);
				}
			}

			// Add the function to the element's handler list
			handlers[handler.guid] = handler;

			// Keep track of which events have been used, for global triggering
			jQuery.event.global[type] = true;
		});

		// Nullify elem to prevent memory leaks in IE
		elem = null;
	},

	guid: 1,
	global: {},

	// Detach an event or set of events from an element
	remove: function(elem, types, handler) {
		// don't do events on text and comment nodes
		if ( elem.nodeType == 3 || elem.nodeType == 8 )
			return;

		var events = jQuery.data(elem, "events"), ret, index;

		if ( events ) {
			// Unbind all events for the element
			if ( types === undefined || (typeof types === "string" && types.charAt(0) == ".") )
				for ( var type in events )
					this.remove( elem, type + (types || "") );
			else {
				// types is actually an event object here
				if ( types.type ) {
					handler = types.handler;
					types = types.type;
				}

				// Handle multiple events seperated by a space
				// jQuery(...).unbind("mouseover mouseout", fn);
				jQuery.each(types.split(/\s+/), function(index, type){
					// Namespaced event handlers
					var namespaces = type.split(".");
					type = namespaces.shift();
					var namespace = RegExp("(^|\\.)" + namespaces.slice().sort().join(".*\\.") + "(\\.|$)");

					if ( events[type] ) {
						// remove the given handler for the given type
						if ( handler )
							delete events[type][handler.guid];

						// remove all handlers for the given type
						else
							for ( var handle in events[type] )
								// Handle the removal of namespaced events
								if ( namespace.test(events[type][handle].type) )
									delete events[type][handle];
									
						if ( jQuery.event.specialAll[type] )
							jQuery.event.specialAll[type].teardown.call(elem, namespaces);

						// remove generic event handler if no more handlers exist
						for ( ret in events[type] ) break;
						if ( !ret ) {
							if ( !jQuery.event.special[type] || jQuery.event.special[type].teardown.call(elem, namespaces) === false ) {
								if (elem.removeEventListener)
									elem.removeEventListener(type, jQuery.data(elem, "handle"), false);
								else if (elem.detachEvent)
									elem.detachEvent("on" + type, jQuery.data(elem, "handle"));
							}
							ret = null;
							delete events[type];
						}
					}
				});
			}

			// Remove the expando if it's no longer used
			for ( ret in events ) break;
			if ( !ret ) {
				var handle = jQuery.data( elem, "handle" );
				if ( handle ) handle.elem = null;
				jQuery.removeData( elem, "events" );
				jQuery.removeData( elem, "handle" );
			}
		}
	},

	// bubbling is internal
	trigger: function( event, data, elem, bubbling ) {
		// Event object or event type
		var type = event.type || event;

		if( !bubbling ){
			event = typeof event === "object" ?
				// jQuery.Event object
				event[expando] ? event :
				// Object literal
				jQuery.extend( jQuery.Event(type), event ) :
				// Just the event type (string)
				jQuery.Event(type);

			if ( type.indexOf("!") >= 0 ) {
				event.type = type = type.slice(0, -1);
				event.exclusive = true;
			}

			// Handle a global trigger
			if ( !elem ) {
				// Don't bubble custom events when global (to avoid too much overhead)
				event.stopPropagation();
				// Only trigger if we've ever bound an event for it
				if ( this.global[type] )
					jQuery.each( jQuery.cache, function(){
						if ( this.events && this.events[type] )
							jQuery.event.trigger( event, data, this.handle.elem );
					});
			}

			// Handle triggering a single element

			// don't do events on text and comment nodes
			if ( !elem || elem.nodeType == 3 || elem.nodeType == 8 )
				return undefined;
			
			// Clean up in case it is reused
			event.result = undefined;
			event.target = elem;
			
			// Clone the incoming data, if any
			data = jQuery.makeArray(data);
			data.unshift( event );
		}

		event.currentTarget = elem;

		// Trigger the event, it is assumed that "handle" is a function
		var handle = jQuery.data(elem, "handle");
		if ( handle )
			handle.apply( elem, data );

		// Handle triggering native .onfoo handlers (and on links since we don't call .click() for links)
		if ( (!elem[type] || (jQuery.nodeName(elem, 'a') && type == "click")) && elem["on"+type] && elem["on"+type].apply( elem, data ) === false )
			event.result = false;

		// Trigger the native events (except for clicks on links)
		if ( !bubbling && elem[type] && !event.isDefaultPrevented() && !(jQuery.nodeName(elem, 'a') && type == "click") ) {
			this.triggered = true;
			try {
				elem[ type ]();
			// prevent IE from throwing an error for some hidden elements
			} catch (e) {}
		}

		this.triggered = false;

		if ( !event.isPropagationStopped() ) {
			var parent = elem.parentNode || elem.ownerDocument;
			if ( parent )
				jQuery.event.trigger(event, data, parent, true);
		}
	},

	handle: function(event) {
		// returned undefined or false
		var all, handlers;

		event = arguments[0] = jQuery.event.fix( event || window.event );
		event.currentTarget = this;
		
		// Namespaced event handlers
		var namespaces = event.type.split(".");
		event.type = namespaces.shift();

		// Cache this now, all = true means, any handler
		all = !namespaces.length && !event.exclusive;
		
		var namespace = RegExp("(^|\\.)" + namespaces.slice().sort().join(".*\\.") + "(\\.|$)");

		handlers = ( jQuery.data(this, "events") || {} )[event.type];

		for ( var j in handlers ) {
			var handler = handlers[j];

			// Filter the functions by class
			if ( all || namespace.test(handler.type) ) {
				// Pass in a reference to the handler function itself
				// So that we can later remove it
				event.handler = handler;
				event.data = handler.data;

				var ret = handler.apply(this, arguments);

				if( ret !== undefined ){
					event.result = ret;
					if ( ret === false ) {
						event.preventDefault();
						event.stopPropagation();
					}
				}

				if( event.isImmediatePropagationStopped() )
					break;

			}
		}
	},

	props: "altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode metaKey newValue originalTarget pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" "),

	fix: function(event) {
		if ( event[expando] )
			return event;

		// store a copy of the original event object
		// and "clone" to set read-only properties
		var originalEvent = event;
		event = jQuery.Event( originalEvent );

		for ( var i = this.props.length, prop; i; ){
			prop = this.props[ --i ];
			event[ prop ] = originalEvent[ prop ];
		}

		// Fix target property, if necessary
		if ( !event.target )
			event.target = event.srcElement || document; // Fixes #1925 where srcElement might not be defined either

		// check if target is a textnode (safari)
		if ( event.target.nodeType == 3 )
			event.target = event.target.parentNode;

		// Add relatedTarget, if necessary
		if ( !event.relatedTarget && event.fromElement )
			event.relatedTarget = event.fromElement == event.target ? event.toElement : event.fromElement;

		// Calculate pageX/Y if missing and clientX/Y available
		if ( event.pageX == null && event.clientX != null ) {
			var doc = document.documentElement, body = document.body;
			event.pageX = event.clientX + (doc && doc.scrollLeft || body && body.scrollLeft || 0) - (doc.clientLeft || 0);
			event.pageY = event.clientY + (doc && doc.scrollTop || body && body.scrollTop || 0) - (doc.clientTop || 0);
		}

		// Add which for key events
		if ( !event.which && ((event.charCode || event.charCode === 0) ? event.charCode : event.keyCode) )
			event.which = event.charCode || event.keyCode;

		// Add metaKey to non-Mac browsers (use ctrl for PC's and Meta for Macs)
		if ( !event.metaKey && event.ctrlKey )
			event.metaKey = event.ctrlKey;

		// Add which for click: 1 == left; 2 == middle; 3 == right
		// Note: button is not normalized, so don't use it
		if ( !event.which && event.button )
			event.which = (event.button & 1 ? 1 : ( event.button & 2 ? 3 : ( event.button & 4 ? 2 : 0 ) ));

		return event;
	},

	proxy: function( fn, proxy ){
		proxy = proxy || function(){ return fn.apply(this, arguments); };
		// Set the guid of unique handler to the same of original handler, so it can be removed
		proxy.guid = fn.guid = fn.guid || proxy.guid || this.guid++;
		// So proxy can be declared as an argument
		return proxy;
	},

	special: {
		ready: {
			// Make sure the ready event is setup
			setup: bindReady,
			teardown: function() {}
		}
	},
	
	specialAll: {
		live: {
			setup: function( selector, namespaces ){
				jQuery.event.add( this, namespaces[0], liveHandler );
			},
			teardown:  function( namespaces ){
				if ( namespaces.length ) {
					var remove = 0, name = RegExp("(^|\\.)" + namespaces[0] + "(\\.|$)");
					
					jQuery.each( (jQuery.data(this, "events").live || {}), function(){
						if ( name.test(this.type) )
							remove++;
					});
					
					if ( remove < 1 )
						jQuery.event.remove( this, namespaces[0], liveHandler );
				}
			}
		}
	}
};

jQuery.Event = function( src ){
	// Allow instantiation without the 'new' keyword
	if( !this.preventDefault )
		return new jQuery.Event(src);
	
	// Event object
	if( src && src.type ){
		this.originalEvent = src;
		this.type = src.type;
	// Event type
	}else
		this.type = src;

	// timeStamp is buggy for some events on Firefox(#3843)
	// So we won't rely on the native value
	this.timeStamp = now();
	
	// Mark it as fixed
	this[expando] = true;
};

function returnFalse(){
	return false;
}
function returnTrue(){
	return true;
}

// jQuery.Event is based on DOM3 Events as specified by the ECMAScript Language Binding
// http://www.w3.org/TR/2003/WD-DOM-Level-3-Events-20030331/ecma-script-binding.html
jQuery.Event.prototype = {
	preventDefault: function() {
		this.isDefaultPrevented = returnTrue;

		var e = this.originalEvent;
		if( !e )
			return;
		// if preventDefault exists run it on the original event
		if (e.preventDefault)
			e.preventDefault();
		// otherwise set the returnValue property of the original event to false (IE)
		e.returnValue = false;
	},
	stopPropagation: function() {
		this.isPropagationStopped = returnTrue;

		var e = this.originalEvent;
		if( !e )
			return;
		// if stopPropagation exists run it on the original event
		if (e.stopPropagation)
			e.stopPropagation();
		// otherwise set the cancelBubble property of the original event to true (IE)
		e.cancelBubble = true;
	},
	stopImmediatePropagation:function(){
		this.isImmediatePropagationStopped = returnTrue;
		this.stopPropagation();
	},
	isDefaultPrevented: returnFalse,
	isPropagationStopped: returnFalse,
	isImmediatePropagationStopped: returnFalse
};
// Checks if an event happened on an element within another element
// Used in jQuery.event.special.mouseenter and mouseleave handlers
var withinElement = function(event) {
	// Check if mouse(over|out) are still within the same parent element
	var parent = event.relatedTarget;
	// Traverse up the tree
	while ( parent && parent != this )
		try { parent = parent.parentNode; }
		catch(e) { parent = this; }
	
	if( parent != this ){
		// set the correct event type
		event.type = event.data;
		// handle event if we actually just moused on to a non sub-element
		jQuery.event.handle.apply( this, arguments );
	}
};
	
jQuery.each({ 
	mouseover: 'mouseenter', 
	mouseout: 'mouseleave'
}, function( orig, fix ){
	jQuery.event.special[ fix ] = {
		setup: function(){
			jQuery.event.add( this, orig, withinElement, fix );
		},
		teardown: function(){
			jQuery.event.remove( this, orig, withinElement );
		}
	};			   
});

jQuery.fn.extend({
	bind: function( type, data, fn ) {
		return type == "unload" ? this.one(type, data, fn) : this.each(function(){
			jQuery.event.add( this, type, fn || data, fn && data );
		});
	},

	one: function( type, data, fn ) {
		var one = jQuery.event.proxy( fn || data, function(event) {
			jQuery(this).unbind(event, one);
			return (fn || data).apply( this, arguments );
		});
		return this.each(function(){
			jQuery.event.add( this, type, one, fn && data);
		});
	},

	unbind: function( type, fn ) {
		return this.each(function(){
			jQuery.event.remove( this, type, fn );
		});
	},

	trigger: function( type, data ) {
		return this.each(function(){
			jQuery.event.trigger( type, data, this );
		});
	},

	triggerHandler: function( type, data ) {
		if( this[0] ){
			var event = jQuery.Event(type);
			event.preventDefault();
			event.stopPropagation();
			jQuery.event.trigger( event, data, this[0] );
			return event.result;
		}		
	},

	toggle: function( fn ) {
		// Save reference to arguments for access in closure
		var args = arguments, i = 1;

		// link all the functions, so any of them can unbind this click handler
		while( i < args.length )
			jQuery.event.proxy( fn, args[i++] );

		return this.click( jQuery.event.proxy( fn, function(event) {
			// Figure out which function to execute
			this.lastToggle = ( this.lastToggle || 0 ) % i;

			// Make sure that clicks stop
			event.preventDefault();

			// and execute the function
			return args[ this.lastToggle++ ].apply( this, arguments ) || false;
		}));
	},

	hover: function(fnOver, fnOut) {
		return this.mouseenter(fnOver).mouseleave(fnOut);
	},

	ready: function(fn) {
		// Attach the listeners
		bindReady();

		// If the DOM is already ready
		if ( jQuery.isReady )
			// Execute the function immediately
			fn.call( document, jQuery );

		// Otherwise, remember the function for later
		else
			// Add the function to the wait list
			jQuery.readyList.push( fn );

		return this;
	},
	
	live: function( type, fn ){
		var proxy = jQuery.event.proxy( fn );
		proxy.guid += this.selector + type;

		jQuery(document).bind( liveConvert(type, this.selector), this.selector, proxy );

		return this;
	},
	
	die: function( type, fn ){
		jQuery(document).unbind( liveConvert(type, this.selector), fn ? { guid: fn.guid + this.selector + type } : null );
		return this;
	}
});

function liveHandler( event ){
	var check = RegExp("(^|\\.)" + event.type + "(\\.|$)"),
		stop = true,
		elems = [];

	jQuery.each(jQuery.data(this, "events").live || [], function(i, fn){
		if ( check.test(fn.type) ) {
			var elem = jQuery(event.target).closest(fn.data)[0];
			if ( elem )
				elems.push({ elem: elem, fn: fn });
		}
	});

	elems.sort(function(a,b) {
		return jQuery.data(a.elem, "closest") - jQuery.data(b.elem, "closest");
	});
	
	jQuery.each(elems, function(){
		if ( this.fn.call(this.elem, event, this.fn.data) === false )
			return (stop = false);
	});

	return stop;
}

function liveConvert(type, selector){
	return ["live", type, selector.replace(/\./g, "`").replace(/ /g, "|")].join(".");
}

jQuery.extend({
	isReady: false,
	readyList: [],
	// Handle when the DOM is ready
	ready: function() {
		// Make sure that the DOM is not already loaded
		if ( !jQuery.isReady ) {
			// Remember that the DOM is ready
			jQuery.isReady = true;

			// If there are functions bound, to execute
			if ( jQuery.readyList ) {
				// Execute all of them
				jQuery.each( jQuery.readyList, function(){
					this.call( document, jQuery );
				});

				// Reset the list of functions
				jQuery.readyList = null;
			}

			// Trigger any bound ready events
			jQuery(document).triggerHandler("ready");
		}
	}
});

var readyBound = false;

function bindReady(){
	if ( readyBound ) return;
	readyBound = true;

	// Mozilla, Opera and webkit nightlies currently support this event
	if ( document.addEventListener ) {
		// Use the handy event callback
		document.addEventListener( "DOMContentLoaded", function(){
			document.removeEventListener( "DOMContentLoaded", arguments.callee, false );
			jQuery.ready();
		}, false );

	// If IE event model is used
	} else if ( document.attachEvent ) {
		// ensure firing before onload,
		// maybe late but safe also for iframes
		document.attachEvent("onreadystatechange", function(){
			if ( document.readyState === "complete" ) {
				document.detachEvent( "onreadystatechange", arguments.callee );
				jQuery.ready();
			}
		});

		// If IE and not an iframe
		// continually check to see if the document is ready
		if ( document.documentElement.doScroll && window == window.top ) (function(){
			if ( jQuery.isReady ) return;

			try {
				// If IE is used, use the trick by Diego Perini
				// http://javascript.nwbox.com/IEContentLoaded/
				document.documentElement.doScroll("left");
			} catch( error ) {
				setTimeout( arguments.callee, 0 );
				return;
			}

			// and execute any waiting functions
			jQuery.ready();
		})();
	}

	// A fallback to window.onload, that will always work
	jQuery.event.add( window, "load", jQuery.ready );
}

jQuery.each( ("blur,focus,load,resize,scroll,unload,click,dblclick," +
	"mousedown,mouseup,mousemove,mouseover,mouseout,mouseenter,mouseleave," +
	"change,select,submit,keydown,keypress,keyup,error").split(","), function(i, name){

	// Handle event binding
	jQuery.fn[name] = function(fn){
		return fn ? this.bind(name, fn) : this.trigger(name);
	};
});

// Prevent memory leaks in IE
// And prevent errors on refresh with events like mouseover in other browsers
// Window isn't included so as not to unbind existing unload events
jQuery( window ).bind( 'unload', function(){ 
	for ( var id in jQuery.cache )
		// Skip the window
		if ( id != 1 && jQuery.cache[ id ].handle )
			jQuery.event.remove( jQuery.cache[ id ].handle.elem );
}); 
(function(){

	jQuery.support = {};

	var root = document.documentElement,
		script = document.createElement("script"),
		div = document.createElement("div"),
		id = "script" + (new Date).getTime();

	div.style.display = "none";
	div.innerHTML = '   <link/><table></table><a href="/a" style="color:red;float:left;opacity:.5;">a</a><select><option>text</option></select><object><param/></object>';

	var all = div.getElementsByTagName("*"),
		a = div.getElementsByTagName("a")[0];

	// Can't get basic test support
	if ( !all || !all.length || !a ) {
		return;
	}

	jQuery.support = {
		// IE strips leading whitespace when .innerHTML is used
		leadingWhitespace: div.firstChild.nodeType == 3,
		
		// Make sure that tbody elements aren't automatically inserted
		// IE will insert them into empty tables
		tbody: !div.getElementsByTagName("tbody").length,
		
		// Make sure that you can get all elements in an <object> element
		// IE 7 always returns no results
		objectAll: !!div.getElementsByTagName("object")[0]
			.getElementsByTagName("*").length,
		
		// Make sure that link elements get serialized correctly by innerHTML
		// This requires a wrapper element in IE
		htmlSerialize: !!div.getElementsByTagName("link").length,
		
		// Get the style information from getAttribute
		// (IE uses .cssText insted)
		style: /red/.test( a.getAttribute("style") ),
		
		// Make sure that URLs aren't manipulated
		// (IE normalizes it by default)
		hrefNormalized: a.getAttribute("href") === "/a",
		
		// Make sure that element opacity exists
		// (IE uses filter instead)
		opacity: a.style.opacity === "0.5",
		
		// Verify style float existence
		// (IE uses styleFloat instead of cssFloat)
		cssFloat: !!a.style.cssFloat,

		// Will be defined later
		scriptEval: false,
		noCloneEvent: true,
		boxModel: null
	};
	
	script.type = "text/javascript";
	try {
		script.appendChild( document.createTextNode( "window." + id + "=1;" ) );
	} catch(e){}

	root.insertBefore( script, root.firstChild );
	
	// Make sure that the execution of code works by injecting a script
	// tag with appendChild/createTextNode
	// (IE doesn't support this, fails, and uses .text instead)
	if ( window[ id ] ) {
		jQuery.support.scriptEval = true;
		delete window[ id ];
	}

	root.removeChild( script );

	if ( div.attachEvent && div.fireEvent ) {
		div.attachEvent("onclick", function(){
			// Cloning a node shouldn't copy over any
			// bound event handlers (IE does this)
			jQuery.support.noCloneEvent = false;
			div.detachEvent("onclick", arguments.callee);
		});
		div.cloneNode(true).fireEvent("onclick");
	}

	// Figure out if the W3C box model works as expected
	// document.body must exist before we can do this
	jQuery(function(){
		var div = document.createElement("div");
		div.style.width = div.style.paddingLeft = "1px";

		document.body.appendChild( div );
		jQuery.boxModel = jQuery.support.boxModel = div.offsetWidth === 2;
		document.body.removeChild( div ).style.display = 'none';
	});
})();

var styleFloat = jQuery.support.cssFloat ? "cssFloat" : "styleFloat";

jQuery.props = {
	"for": "htmlFor",
	"class": "className",
	"float": styleFloat,
	cssFloat: styleFloat,
	styleFloat: styleFloat,
	readonly: "readOnly",
	maxlength: "maxLength",
	cellspacing: "cellSpacing",
	rowspan: "rowSpan",
	tabindex: "tabIndex"
};
jQuery.fn.extend({
	// Keep a copy of the old load
	_load: jQuery.fn.load,

	load: function( url, params, callback ) {
		if ( typeof url !== "string" )
			return this._load( url );

		var off = url.indexOf(" ");
		if ( off >= 0 ) {
			var selector = url.slice(off, url.length);
			url = url.slice(0, off);
		}

		// Default to a GET request
		var type = "GET";

		// If the second parameter was provided
		if ( params )
			// If it's a function
			if ( jQuery.isFunction( params ) ) {
				// We assume that it's the callback
				callback = params;
				params = null;

			// Otherwise, build a param string
			} else if( typeof params === "object" ) {
				params = jQuery.param( params );
				type = "POST";
			}

		var self = this;

		// Request the remote document
		jQuery.ajax({
			url: url,
			type: type,
			dataType: "html",
			data: params,
			complete: function(res, status){
				// If successful, inject the HTML into all the matched elements
				if ( status == "success" || status == "notmodified" )
					// See if a selector was specified
					self.html( selector ?
						// Create a dummy div to hold the results
						jQuery("<div/>")
							// inject the contents of the document in, removing the scripts
							// to avoid any 'Permission Denied' errors in IE
							.append(res.responseText.replace(/<script(.|\s)*?\/script>/g, ""))

							// Locate the specified elements
							.find(selector) :

						// If not, just inject the full result
						res.responseText );

				if( callback )
					self.each( callback, [res.responseText, status, res] );
			}
		});
		return this;
	},

	serialize: function() {
		return jQuery.param(this.serializeArray());
	},
	serializeArray: function() {
		return this.map(function(){
			return this.elements ? jQuery.makeArray(this.elements) : this;
		})
		.filter(function(){
			return this.name && !this.disabled &&
				(this.checked || /select|textarea/i.test(this.nodeName) ||
					/text|hidden|password|search/i.test(this.type));
		})
		.map(function(i, elem){
			var val = jQuery(this).val();
			return val == null ? null :
				jQuery.isArray(val) ?
					jQuery.map( val, function(val, i){
						return {name: elem.name, value: val};
					}) :
					{name: elem.name, value: val};
		}).get();
	}
});

// Attach a bunch of functions for handling common AJAX events
jQuery.each( "ajaxStart,ajaxStop,ajaxComplete,ajaxError,ajaxSuccess,ajaxSend".split(","), function(i,o){
	jQuery.fn[o] = function(f){
		return this.bind(o, f);
	};
});

var jsc = now();

jQuery.extend({
  
	get: function( url, data, callback, type ) {
		// shift arguments if data argument was ommited
		if ( jQuery.isFunction( data ) ) {
			callback = data;
			data = null;
		}

		return jQuery.ajax({
			type: "GET",
			url: url,
			data: data,
			success: callback,
			dataType: type
		});
	},

	getScript: function( url, callback ) {
		return jQuery.get(url, null, callback, "script");
	},

	getJSON: function( url, data, callback ) {
		return jQuery.get(url, data, callback, "json");
	},

	post: function( url, data, callback, type ) {
		if ( jQuery.isFunction( data ) ) {
			callback = data;
			data = {};
		}

		return jQuery.ajax({
			type: "POST",
			url: url,
			data: data,
			success: callback,
			dataType: type
		});
	},

	ajaxSetup: function( settings ) {
		jQuery.extend( jQuery.ajaxSettings, settings );
	},

	ajaxSettings: {
		url: location.href,
		global: true,
		type: "GET",
		contentType: "application/x-www-form-urlencoded",
		processData: true,
		async: true,
		/*
		timeout: 0,
		data: null,
		username: null,
		password: null,
		*/
		// Create the request object; Microsoft failed to properly
		// implement the XMLHttpRequest in IE7, so we use the ActiveXObject when it is available
		// This function can be overriden by calling jQuery.ajaxSetup
		xhr:function(){
			return window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : new XMLHttpRequest();
		},
		accepts: {
			xml: "application/xml, text/xml",
			html: "text/html",
			script: "text/javascript, application/javascript",
			json: "application/json, text/javascript",
			text: "text/plain",
			_default: "*/*"
		}
	},

	// Last-Modified header cache for next request
	lastModified: {},

	ajax: function( s ) {
		// Extend the settings, but re-extend 's' so that it can be
		// checked again later (in the test suite, specifically)
		s = jQuery.extend(true, s, jQuery.extend(true, {}, jQuery.ajaxSettings, s));

		var jsonp, jsre = /=\?(&|$)/g, status, data,
			type = s.type.toUpperCase();

		// convert data if not already a string
		if ( s.data && s.processData && typeof s.data !== "string" )
			s.data = jQuery.param(s.data);

		// Handle JSONP Parameter Callbacks
		if ( s.dataType == "jsonp" ) {
			if ( type == "GET" ) {
				if ( !s.url.match(jsre) )
					s.url += (s.url.match(/\?/) ? "&" : "?") + (s.jsonp || "callback") + "=?";
			} else if ( !s.data || !s.data.match(jsre) )
				s.data = (s.data ? s.data + "&" : "") + (s.jsonp || "callback") + "=?";
			s.dataType = "json";
		}

		// Build temporary JSONP function
		if ( s.dataType == "json" && (s.data && s.data.match(jsre) || s.url.match(jsre)) ) {
			jsonp = "jsonp" + jsc++;

			// Replace the =? sequence both in the query string and the data
			if ( s.data )
				s.data = (s.data + "").replace(jsre, "=" + jsonp + "$1");
			s.url = s.url.replace(jsre, "=" + jsonp + "$1");

			// We need to make sure
			// that a JSONP style response is executed properly
			s.dataType = "script";

			// Handle JSONP-style loading
			window[ jsonp ] = function(tmp){
				data = tmp;
				success();
				complete();
				// Garbage collect
				window[ jsonp ] = undefined;
				try{ delete window[ jsonp ]; } catch(e){}
				if ( head )
					head.removeChild( script );
			};
		}

		if ( s.dataType == "script" && s.cache == null )
			s.cache = false;

		if ( s.cache === false && type == "GET" ) {
			var ts = now();
			// try replacing _= if it is there
			var ret = s.url.replace(/(\?|&)_=.*?(&|$)/, "$1_=" + ts + "$2");
			// if nothing was replaced, add timestamp to the end
			s.url = ret + ((ret == s.url) ? (s.url.match(/\?/) ? "&" : "?") + "_=" + ts : "");
		}

		// If data is available, append data to url for get requests
		if ( s.data && type == "GET" ) {
			s.url += (s.url.match(/\?/) ? "&" : "?") + s.data;

			// IE likes to send both get and post data, prevent this
			s.data = null;
		}

		// Watch for a new set of requests
		if ( s.global && ! jQuery.active++ )
			jQuery.event.trigger( "ajaxStart" );

		// Matches an absolute URL, and saves the domain
		var parts = /^(\w+:)?\/\/([^\/?#]+)/.exec( s.url );

		// If we're requesting a remote document
		// and trying to load JSON or Script with a GET
		if ( s.dataType == "script" && type == "GET" && parts
			&& ( parts[1] && parts[1] != location.protocol || parts[2] != location.host )){

			var head = document.getElementsByTagName("head")[0];
			var script = document.createElement("script");
			script.src = s.url;
			if (s.scriptCharset)
				script.charset = s.scriptCharset;

			// Handle Script loading
			if ( !jsonp ) {
				var done = false;

				// Attach handlers for all browsers
				script.onload = script.onreadystatechange = function(){
					if ( !done && (!this.readyState ||
							this.readyState == "loaded" || this.readyState == "complete") ) {
						done = true;
						success();
						complete();

						// Handle memory leak in IE
						script.onload = script.onreadystatechange = null;
						head.removeChild( script );
					}
				};
			}

			head.appendChild(script);

			// We handle everything using the script element injection
			return undefined;
		}

		var requestDone = false;

		// Create the request object
		var xhr = s.xhr();

		// Open the socket
		// Passing null username, generates a login popup on Opera (#2865)
		if( s.username )
			xhr.open(type, s.url, s.async, s.username, s.password);
		else
			xhr.open(type, s.url, s.async);

		// Need an extra try/catch for cross domain requests in Firefox 3
		try {
			// Set the correct header, if data is being sent
			if ( s.data )
				xhr.setRequestHeader("Content-Type", s.contentType);

			// Set the If-Modified-Since header, if ifModified mode.
			if ( s.ifModified )
				xhr.setRequestHeader("If-Modified-Since",
					jQuery.lastModified[s.url] || "Thu, 01 Jan 1970 00:00:00 GMT" );

			// Set header so the called script knows that it's an XMLHttpRequest
			xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");

			// Set the Accepts header for the server, depending on the dataType
			xhr.setRequestHeader("Accept", s.dataType && s.accepts[ s.dataType ] ?
				s.accepts[ s.dataType ] + ", */*" :
				s.accepts._default );
		} catch(e){}

		// Allow custom headers/mimetypes and early abort
		if ( s.beforeSend && s.beforeSend(xhr, s) === false ) {
			// Handle the global AJAX counter
			if ( s.global && ! --jQuery.active )
				jQuery.event.trigger( "ajaxStop" );
			// close opended socket
			xhr.abort();
			return false;
		}

		if ( s.global )
			jQuery.event.trigger("ajaxSend", [xhr, s]);

		// Wait for a response to come back
		var onreadystatechange = function(isTimeout){
			// The request was aborted, clear the interval and decrement jQuery.active
			if (xhr.readyState == 0) {
				if (ival) {
					// clear poll interval
					clearInterval(ival);
					ival = null;
					// Handle the global AJAX counter
					if ( s.global && ! --jQuery.active )
						jQuery.event.trigger( "ajaxStop" );
				}
			// The transfer is complete and the data is available, or the request timed out
			} else if ( !requestDone && xhr && (xhr.readyState == 4 || isTimeout == "timeout") ) {
				requestDone = true;

				// clear poll interval
				if (ival) {
					clearInterval(ival);
					ival = null;
				}

				status = isTimeout == "timeout" ? "timeout" :
					!jQuery.httpSuccess( xhr ) ? "error" :
					s.ifModified && jQuery.httpNotModified( xhr, s.url ) ? "notmodified" :
					"success";

				if ( status == "success" ) {
					// Watch for, and catch, XML document parse errors
					try {
						// process the data (runs the xml through httpData regardless of callback)
						data = jQuery.httpData( xhr, s.dataType, s );
					} catch(e) {
						status = "parsererror";
					}
				}

				// Make sure that the request was successful or notmodified
				if ( status == "success" ) {
					// Cache Last-Modified header, if ifModified mode.
					var modRes;
					try {
						modRes = xhr.getResponseHeader("Last-Modified");
					} catch(e) {} // swallow exception thrown by FF if header is not available

					if ( s.ifModified && modRes )
						jQuery.lastModified[s.url] = modRes;

					// JSONP handles its own success callback
					if ( !jsonp )
						success();
				} else
					jQuery.handleError(s, xhr, status);

				// Fire the complete handlers
				complete();

				if ( isTimeout )
					xhr.abort();

				// Stop memory leaks
				if ( s.async )
					xhr = null;
			}
		};

		if ( s.async ) {
			// don't attach the handler to the request, just poll it instead
			var ival = setInterval(onreadystatechange, 13);

			// Timeout checker
			if ( s.timeout > 0 )
				setTimeout(function(){
					// Check to see if the request is still happening
					if ( xhr && !requestDone )
						onreadystatechange( "timeout" );
				}, s.timeout);
		}

		// Send the data
		try {
			xhr.send(s.data);
		} catch(e) {
			jQuery.handleError(s, xhr, null, e);
		}

		// firefox 1.5 doesn't fire statechange for sync requests
		if ( !s.async )
			onreadystatechange();

		function success(){
			// If a local callback was specified, fire it and pass it the data
			if ( s.success )
				s.success( data, status );

			// Fire the global callback
			if ( s.global )
				jQuery.event.trigger( "ajaxSuccess", [xhr, s] );
		}

		function complete(){
			// Process result
			if ( s.complete )
				s.complete(xhr, status);

			// The request was completed
			if ( s.global )
				jQuery.event.trigger( "ajaxComplete", [xhr, s] );

			// Handle the global AJAX counter
			if ( s.global && ! --jQuery.active )
				jQuery.event.trigger( "ajaxStop" );
		}

		// return XMLHttpRequest to allow aborting the request etc.
		return xhr;
	},

	handleError: function( s, xhr, status, e ) {
		// If a local callback was specified, fire it
		if ( s.error ) s.error( xhr, status, e );

		// Fire the global callback
		if ( s.global )
			jQuery.event.trigger( "ajaxError", [xhr, s, e] );
	},

	// Counter for holding the number of active queries
	active: 0,

	// Determines if an XMLHttpRequest was successful or not
	httpSuccess: function( xhr ) {
		try {
			// IE error sometimes returns 1223 when it should be 204 so treat it as success, see #1450
			return !xhr.status && location.protocol == "file:" ||
				( xhr.status >= 200 && xhr.status < 300 ) || xhr.status == 304 || xhr.status == 1223;
		} catch(e){}
		return false;
	},

	// Determines if an XMLHttpRequest returns NotModified
	httpNotModified: function( xhr, url ) {
		try {
			var xhrRes = xhr.getResponseHeader("Last-Modified");

			// Firefox always returns 200. check Last-Modified date
			return xhr.status == 304 || xhrRes == jQuery.lastModified[url];
		} catch(e){}
		return false;
	},

	httpData: function( xhr, type, s ) {
		var ct = xhr.getResponseHeader("content-type"),
			xml = type == "xml" || !type && ct && ct.indexOf("xml") >= 0,
			data = xml ? xhr.responseXML : xhr.responseText;

		if ( xml && data.documentElement.tagName == "parsererror" )
			throw "parsererror";
			
		// Allow a pre-filtering function to sanitize the response
		// s != null is checked to keep backwards compatibility
		if( s && s.dataFilter )
			data = s.dataFilter( data, type );

		// The filter can actually parse the response
		if( typeof data === "string" ){

			// If the type is "script", eval it in global context
			if ( type == "script" )
				jQuery.globalEval( data );

			// Get the JavaScript object, if JSON is used.
			if ( type == "json" )
				data = window["eval"]("(" + data + ")");
		}
		
		return data;
	},

	// Serialize an array of form elements or a set of
	// key/values into a query string
	param: function( a ) {
		var s = [ ];

		function add( key, value ){
			s[ s.length ] = encodeURIComponent(key) + '=' + encodeURIComponent(value);
		};

		// If an array was passed in, assume that it is an array
		// of form elements
		if ( jQuery.isArray(a) || a.jquery )
			// Serialize the form elements
			jQuery.each( a, function(){
				add( this.name, this.value );
			});

		// Otherwise, assume that it's an object of key/value pairs
		else
			// Serialize the key/values
			for ( var j in a )
				// If the value is an array then the key names need to be repeated
				if ( jQuery.isArray(a[j]) )
					jQuery.each( a[j], function(){
						add( j, this );
					});
				else
					add( j, jQuery.isFunction(a[j]) ? a[j]() : a[j] );

		// Return the resulting serialization
		return s.join("&").replace(/%20/g, "+");
	}

});
var elemdisplay = {},
	timerId,
	fxAttrs = [
		// height animations
		[ "height", "marginTop", "marginBottom", "paddingTop", "paddingBottom" ],
		// width animations
		[ "width", "marginLeft", "marginRight", "paddingLeft", "paddingRight" ],
		// opacity animations
		[ "opacity" ]
	];

function genFx( type, num ){
	var obj = {};
	jQuery.each( fxAttrs.concat.apply([], fxAttrs.slice(0,num)), function(){
		obj[ this ] = type;
	});
	return obj;
}

jQuery.fn.extend({
	show: function(speed,callback){
		if ( speed ) {
			return this.animate( genFx("show", 3), speed, callback);
		} else {
			for ( var i = 0, l = this.length; i < l; i++ ){
				var old = jQuery.data(this[i], "olddisplay");
				
				this[i].style.display = old || "";
				
				if ( jQuery.css(this[i], "display") === "none" ) {
					var tagName = this[i].tagName, display;
					
					if ( elemdisplay[ tagName ] ) {
						display = elemdisplay[ tagName ];
					} else {
						var elem = jQuery("<" + tagName + " />").appendTo("body");
						
						display = elem.css("display");
						if ( display === "none" )
							display = "block";
						
						elem.remove();
						
						elemdisplay[ tagName ] = display;
					}
					
					jQuery.data(this[i], "olddisplay", display);
				}
			}

			// Set the display of the elements in a second loop
			// to avoid the constant reflow
			for ( var i = 0, l = this.length; i < l; i++ ){
				this[i].style.display = jQuery.data(this[i], "olddisplay") || "";
			}
			
			return this;
		}
	},

	hide: function(speed,callback){
		if ( speed ) {
			return this.animate( genFx("hide", 3), speed, callback);
		} else {
			for ( var i = 0, l = this.length; i < l; i++ ){
				var old = jQuery.data(this[i], "olddisplay");
				if ( !old && old !== "none" )
					jQuery.data(this[i], "olddisplay", jQuery.css(this[i], "display"));
			}

			// Set the display of the elements in a second loop
			// to avoid the constant reflow
			for ( var i = 0, l = this.length; i < l; i++ ){
				this[i].style.display = "none";
			}

			return this;
		}
	},

	// Save the old toggle function
	_toggle: jQuery.fn.toggle,

	toggle: function( fn, fn2 ){
		var bool = typeof fn === "boolean";

		return jQuery.isFunction(fn) && jQuery.isFunction(fn2) ?
			this._toggle.apply( this, arguments ) :
			fn == null || bool ?
				this.each(function(){
					var state = bool ? fn : jQuery(this).is(":hidden");
					jQuery(this)[ state ? "show" : "hide" ]();
				}) :
				this.animate(genFx("toggle", 3), fn, fn2);
	},

	fadeTo: function(speed,to,callback){
		return this.animate({opacity: to}, speed, callback);
	},

	animate: function( prop, speed, easing, callback ) {
		var optall = jQuery.speed(speed, easing, callback);

		return this[ optall.queue === false ? "each" : "queue" ](function(){
		
			var opt = jQuery.extend({}, optall), p,
				hidden = this.nodeType == 1 && jQuery(this).is(":hidden"),
				self = this;
	
			for ( p in prop ) {
				if ( prop[p] == "hide" && hidden || prop[p] == "show" && !hidden )
					return opt.complete.call(this);

				if ( ( p == "height" || p == "width" ) && this.style ) {
					// Store display property
					opt.display = jQuery.css(this, "display");

					// Make sure that nothing sneaks out
					opt.overflow = this.style.overflow;
				}
			}

			if ( opt.overflow != null )
				this.style.overflow = "hidden";

			opt.curAnim = jQuery.extend({}, prop);

			jQuery.each( prop, function(name, val){
				var e = new jQuery.fx( self, opt, name );

				if ( /toggle|show|hide/.test(val) )
					e[ val == "toggle" ? hidden ? "show" : "hide" : val ]( prop );
				else {
					var parts = val.toString().match(/^([+-]=)?([\d+-.]+)(.*)$/),
						start = e.cur(true) || 0;

					if ( parts ) {
						var end = parseFloat(parts[2]),
							unit = parts[3] || "px";

						// We need to compute starting value
						if ( unit != "px" ) {
							self.style[ name ] = (end || 1) + unit;
							start = ((end || 1) / e.cur(true)) * start;
							self.style[ name ] = start + unit;
						}

						// If a +=/-= token was provided, we're doing a relative animation
						if ( parts[1] )
							end = ((parts[1] == "-=" ? -1 : 1) * end) + start;

						e.custom( start, end, unit );
					} else
						e.custom( start, val, "" );
				}
			});

			// For JS strict compliance
			return true;
		});
	},

	stop: function(clearQueue, gotoEnd){
		var timers = jQuery.timers;

		if (clearQueue)
			this.queue([]);

		this.each(function(){
			// go in reverse order so anything added to the queue during the loop is ignored
			for ( var i = timers.length - 1; i >= 0; i-- )
				if ( timers[i].elem == this ) {
					if (gotoEnd)
						// force the next step to be the last
						timers[i](true);
					timers.splice(i, 1);
				}
		});

		// start the next in the queue if the last step wasn't forced
		if (!gotoEnd)
			this.dequeue();

		return this;
	}

});

// Generate shortcuts for custom animations
jQuery.each({
	slideDown: genFx("show", 1),
	slideUp: genFx("hide", 1),
	slideToggle: genFx("toggle", 1),
	fadeIn: { opacity: "show" },
	fadeOut: { opacity: "hide" }
}, function( name, props ){
	jQuery.fn[ name ] = function( speed, callback ){
		return this.animate( props, speed, callback );
	};
});

jQuery.extend({

	speed: function(speed, easing, fn) {
		var opt = typeof speed === "object" ? speed : {
			complete: fn || !fn && easing ||
				jQuery.isFunction( speed ) && speed,
			duration: speed,
			easing: fn && easing || easing && !jQuery.isFunction(easing) && easing
		};

		opt.duration = jQuery.fx.off ? 0 : typeof opt.duration === "number" ? opt.duration :
			jQuery.fx.speeds[opt.duration] || jQuery.fx.speeds._default;

		// Queueing
		opt.old = opt.complete;
		opt.complete = function(){
			if ( opt.queue !== false )
				jQuery(this).dequeue();
			if ( jQuery.isFunction( opt.old ) )
				opt.old.call( this );
		};

		return opt;
	},

	easing: {
		linear: function( p, n, firstNum, diff ) {
			return firstNum + diff * p;
		},
		swing: function( p, n, firstNum, diff ) {
			return ((-Math.cos(p*Math.PI)/2) + 0.5) * diff + firstNum;
		}
	},

	timers: [],

	fx: function( elem, options, prop ){
		this.options = options;
		this.elem = elem;
		this.prop = prop;

		if ( !options.orig )
			options.orig = {};
	}

});

jQuery.fx.prototype = {

	// Simple function for setting a style value
	update: function(){
		if ( this.options.step )
			this.options.step.call( this.elem, this.now, this );

		(jQuery.fx.step[this.prop] || jQuery.fx.step._default)( this );

		// Set display property to block for height/width animations
		if ( ( this.prop == "height" || this.prop == "width" ) && this.elem.style )
			this.elem.style.display = "block";
	},

	// Get the current size
	cur: function(force){
		if ( this.elem[this.prop] != null && (!this.elem.style || this.elem.style[this.prop] == null) )
			return this.elem[ this.prop ];

		var r = parseFloat(jQuery.css(this.elem, this.prop, force));
		return r && r > -10000 ? r : parseFloat(jQuery.curCSS(this.elem, this.prop)) || 0;
	},

	// Start an animation from one number to another
	custom: function(from, to, unit){
		this.startTime = now();
		this.start = from;
		this.end = to;
		this.unit = unit || this.unit || "px";
		this.now = this.start;
		this.pos = this.state = 0;

		var self = this;
		function t(gotoEnd){
			return self.step(gotoEnd);
		}

		t.elem = this.elem;

		if ( t() && jQuery.timers.push(t) && !timerId ) {
			timerId = setInterval(function(){
				var timers = jQuery.timers;

				for ( var i = 0; i < timers.length; i++ )
					if ( !timers[i]() )
						timers.splice(i--, 1);

				if ( !timers.length ) {
					clearInterval( timerId );
					timerId = undefined;
				}
			}, 13);
		}
	},

	// Simple 'show' function
	show: function(){
		// Remember where we started, so that we can go back to it later
		this.options.orig[this.prop] = jQuery.attr( this.elem.style, this.prop );
		this.options.show = true;

		// Begin the animation
		// Make sure that we start at a small width/height to avoid any
		// flash of content
		this.custom(this.prop == "width" || this.prop == "height" ? 1 : 0, this.cur());

		// Start by showing the element
		jQuery(this.elem).show();
	},

	// Simple 'hide' function
	hide: function(){
		// Remember where we started, so that we can go back to it later
		this.options.orig[this.prop] = jQuery.attr( this.elem.style, this.prop );
		this.options.hide = true;

		// Begin the animation
		this.custom(this.cur(), 0);
	},

	// Each step of an animation
	step: function(gotoEnd){
		var t = now();

		if ( gotoEnd || t >= this.options.duration + this.startTime ) {
			this.now = this.end;
			this.pos = this.state = 1;
			this.update();

			this.options.curAnim[ this.prop ] = true;

			var done = true;
			for ( var i in this.options.curAnim )
				if ( this.options.curAnim[i] !== true )
					done = false;

			if ( done ) {
				if ( this.options.display != null ) {
					// Reset the overflow
					this.elem.style.overflow = this.options.overflow;

					// Reset the display
					this.elem.style.display = this.options.display;
					if ( jQuery.css(this.elem, "display") == "none" )
						this.elem.style.display = "block";
				}

				// Hide the element if the "hide" operation was done
				if ( this.options.hide )
					jQuery(this.elem).hide();

				// Reset the properties, if the item has been hidden or shown
				if ( this.options.hide || this.options.show )
					for ( var p in this.options.curAnim )
						jQuery.attr(this.elem.style, p, this.options.orig[p]);
					
				// Execute the complete function
				this.options.complete.call( this.elem );
			}

			return false;
		} else {
			var n = t - this.startTime;
			this.state = n / this.options.duration;

			// Perform the easing function, defaults to swing
			this.pos = jQuery.easing[this.options.easing || (jQuery.easing.swing ? "swing" : "linear")](this.state, n, 0, 1, this.options.duration);
			this.now = this.start + ((this.end - this.start) * this.pos);

			// Perform the next step of the animation
			this.update();
		}

		return true;
	}

};

jQuery.extend( jQuery.fx, {
	speeds:{
		slow: 600,
 		fast: 200,
 		// Default speed
 		_default: 400
	},
	step: {

		opacity: function(fx){
			jQuery.attr(fx.elem.style, "opacity", fx.now);
		},

		_default: function(fx){
			if ( fx.elem.style && fx.elem.style[ fx.prop ] != null )
				fx.elem.style[ fx.prop ] = fx.now + fx.unit;
			else
				fx.elem[ fx.prop ] = fx.now;
		}
	}
});
if ( document.documentElement["getBoundingClientRect"] )
	jQuery.fn.offset = function() {
		if ( !this[0] ) return { top: 0, left: 0 };
		if ( this[0] === this[0].ownerDocument.body ) return jQuery.offset.bodyOffset( this[0] );
		var box  = this[0].getBoundingClientRect(), doc = this[0].ownerDocument, body = doc.body, docElem = doc.documentElement,
			clientTop = docElem.clientTop || body.clientTop || 0, clientLeft = docElem.clientLeft || body.clientLeft || 0,
			top  = box.top  + (self.pageYOffset || jQuery.boxModel && docElem.scrollTop  || body.scrollTop ) - clientTop,
			left = box.left + (self.pageXOffset || jQuery.boxModel && docElem.scrollLeft || body.scrollLeft) - clientLeft;
		return { top: top, left: left };
	};
else 
	jQuery.fn.offset = function() {
		if ( !this[0] ) return { top: 0, left: 0 };
		if ( this[0] === this[0].ownerDocument.body ) return jQuery.offset.bodyOffset( this[0] );
		jQuery.offset.initialized || jQuery.offset.initialize();

		var elem = this[0], offsetParent = elem.offsetParent, prevOffsetParent = elem,
			doc = elem.ownerDocument, computedStyle, docElem = doc.documentElement,
			body = doc.body, defaultView = doc.defaultView,
			prevComputedStyle = defaultView.getComputedStyle(elem, null),
			top = elem.offsetTop, left = elem.offsetLeft;

		while ( (elem = elem.parentNode) && elem !== body && elem !== docElem ) {
			computedStyle = defaultView.getComputedStyle(elem, null);
			top -= elem.scrollTop, left -= elem.scrollLeft;
			if ( elem === offsetParent ) {
				top += elem.offsetTop, left += elem.offsetLeft;
				if ( jQuery.offset.doesNotAddBorder && !(jQuery.offset.doesAddBorderForTableAndCells && /^t(able|d|h)$/i.test(elem.tagName)) )
					top  += parseInt( computedStyle.borderTopWidth,  10) || 0,
					left += parseInt( computedStyle.borderLeftWidth, 10) || 0;
				prevOffsetParent = offsetParent, offsetParent = elem.offsetParent;
			}

			if ( jQuery.offset.subtractsBorderForOverflowNotVisible && computedStyle.overflow !== "visible" )
				top  += parseInt( computedStyle.borderTopWidth,  10) || 0,
				left += parseInt( computedStyle.borderLeftWidth, 10) || 0;
			prevComputedStyle = computedStyle;
		}

		if ( prevComputedStyle.position === "relative" || prevComputedStyle.position === "static" )
			top  += body.offsetTop,
			left += body.offsetLeft;

		if ( prevComputedStyle.position === "fixed" )
			top  += Math.max(docElem.scrollTop, body.scrollTop),
			left += Math.max(docElem.scrollLeft, body.scrollLeft);

		return { top: top, left: left };
	};

jQuery.offset = {
	initialize: function() {
		if ( this.initialized ) return;
		var body = document.body, container = document.createElement('div'), innerDiv, checkDiv, table, td, rules, prop, bodyMarginTop = body.style.marginTop,
			html = '<div style="position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;"><div></div></div><table style="position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;" cellpadding="0" cellspacing="0"><tr><td></td></tr></table>';

		rules = { position: 'absolute', top: 0, left: 0, margin: 0, border: 0, width: '1px', height: '1px', visibility: 'hidden' };
		for ( prop in rules ) container.style[prop] = rules[prop];

		container.innerHTML = html;
		body.insertBefore(container, body.firstChild);
		innerDiv = container.firstChild, checkDiv = innerDiv.firstChild, td = innerDiv.nextSibling.firstChild.firstChild;

		this.doesNotAddBorder = (checkDiv.offsetTop !== 5);
		this.doesAddBorderForTableAndCells = (td.offsetTop === 5);

		innerDiv.style.overflow = 'hidden', innerDiv.style.position = 'relative';
		this.subtractsBorderForOverflowNotVisible = (checkDiv.offsetTop === -5);

		body.style.marginTop = '1px';
		this.doesNotIncludeMarginInBodyOffset = (body.offsetTop === 0);
		body.style.marginTop = bodyMarginTop;

		body.removeChild(container);
		this.initialized = true;
	},

	bodyOffset: function(body) {
		jQuery.offset.initialized || jQuery.offset.initialize();
		var top = body.offsetTop, left = body.offsetLeft;
		if ( jQuery.offset.doesNotIncludeMarginInBodyOffset )
			top  += parseInt( jQuery.curCSS(body, 'marginTop',  true), 10 ) || 0,
			left += parseInt( jQuery.curCSS(body, 'marginLeft', true), 10 ) || 0;
		return { top: top, left: left };
	}
};


jQuery.fn.extend({
	position: function() {
		var left = 0, top = 0, results;

		if ( this[0] ) {
			// Get *real* offsetParent
			var offsetParent = this.offsetParent(),

			// Get correct offsets
			offset       = this.offset(),
			parentOffset = /^body|html$/i.test(offsetParent[0].tagName) ? { top: 0, left: 0 } : offsetParent.offset();

			// Subtract element margins
			// note: when an element has margin: auto the offsetLeft and marginLeft 
			// are the same in Safari causing offset.left to incorrectly be 0
			offset.top  -= num( this, 'marginTop'  );
			offset.left -= num( this, 'marginLeft' );

			// Add offsetParent borders
			parentOffset.top  += num( offsetParent, 'borderTopWidth'  );
			parentOffset.left += num( offsetParent, 'borderLeftWidth' );

			// Subtract the two offsets
			results = {
				top:  offset.top  - parentOffset.top,
				left: offset.left - parentOffset.left
			};
		}

		return results;
	},

	offsetParent: function() {
		var offsetParent = this[0].offsetParent || document.body;
		while ( offsetParent && (!/^body|html$/i.test(offsetParent.tagName) && jQuery.css(offsetParent, 'position') == 'static') )
			offsetParent = offsetParent.offsetParent;
		return jQuery(offsetParent);
	}
});


// Create scrollLeft and scrollTop methods
jQuery.each( ['Left', 'Top'], function(i, name) {
	var method = 'scroll' + name;
	
	jQuery.fn[ method ] = function(val) {
		if (!this[0]) return null;

		return val !== undefined ?

			// Set the scroll offset
			this.each(function() {
				this == window || this == document ?
					window.scrollTo(
						!i ? val : jQuery(window).scrollLeft(),
						 i ? val : jQuery(window).scrollTop()
					) :
					this[ method ] = val;
			}) :

			// Return the scroll offset
			this[0] == window || this[0] == document ?
				self[ i ? 'pageYOffset' : 'pageXOffset' ] ||
					jQuery.boxModel && document.documentElement[ method ] ||
					document.body[ method ] :
				this[0][ method ];
	};
});
// Create innerHeight, innerWidth, outerHeight and outerWidth methods
jQuery.each([ "Height", "Width" ], function(i, name){

	var tl = i ? "Left"  : "Top",  // top or left
		br = i ? "Right" : "Bottom", // bottom or right
		lower = name.toLowerCase();

	// innerHeight and innerWidth
	jQuery.fn["inner" + name] = function(){
		return this[0] ?
			jQuery.css( this[0], lower, false, "padding" ) :
			null;
	};

	// outerHeight and outerWidth
	jQuery.fn["outer" + name] = function(margin) {
		return this[0] ?
			jQuery.css( this[0], lower, false, margin ? "margin" : "border" ) :
			null;
	};
	
	var type = name.toLowerCase();

	jQuery.fn[ type ] = function( size ) {
		// Get window width or height
		return this[0] == window ?
			// Everyone else use document.documentElement or document.body depending on Quirks vs Standards mode
			document.compatMode == "CSS1Compat" && document.documentElement[ "client" + name ] ||
			document.body[ "client" + name ] :

			// Get document width or height
			this[0] == document ?
				// Either scroll[Width/Height] or offset[Width/Height], whichever is greater
				Math.max(
					document.documentElement["client" + name],
					document.body["scroll" + name], document.documentElement["scroll" + name],
					document.body["offset" + name], document.documentElement["offset" + name]
				) :

				// Get or set width or height on the element
				size === undefined ?
					// Get width or height on the element
					(this.length ? jQuery.css( this[0], type ) : null) :

					// Set the width or height on the element (default to pixels if value is unitless)
					this.css( type, typeof size === "string" ? size : size + "px" );
	};

});
})();

/*
 * jQuery FlexSlider v1.8
 * http://flex.madebymufffin.com
 * Copyright 2011, Tyler Smith
 */
(function(a) {
    a.flexslider = function(c, b) {
        var d = c;
        d.init = function() {
            d.vars = a.extend({},
            a.flexslider.defaults, b);
            d.data("flexslider", true);
            d.container = a(".slides", d);
            d.slides = a(".slides > li", d);
            d.count = d.slides.length;
            d.animating = false;
            d.currentSlide = d.vars.slideToStart;
            d.animatingTo = d.currentSlide;
            d.atEnd = (d.currentSlide == 0) ? true: false;
            d.eventType = ("ontouchstart" in document.documentElement) ? "touchstart": "click";
            d.cloneCount = 0;
            d.cloneOffset = 0;
            d.manualPause = false;
            d.vertical = (d.vars.slideDirection == "vertical");
            d.prop = (d.vertical) ? "top": "marginLeft";
            d.args = {};
            d.transitions = "webkitTransition" in document.body.style;
            if (d.transitions) {
                d.prop = "-webkit-transform"
            }
            if (d.vars.controlsContainer != "") {
                d.controlsContainer = a(d.vars.controlsContainer).eq(a(".slides").index(d.container));
                d.containerExists = d.controlsContainer.length > 0
            }
            if (d.vars.manualControls != "") {
                d.manualControls = a(d.vars.manualControls, ((d.containerExists) ? d.controlsContainer: d));
                d.manualExists = d.manualControls.length > 0
            }
            if (d.vars.randomize) {
                d.slides.sort(function() {
                    return (Math.round(Math.random()) - 0.5)
                });
                d.container.empty().append(d.slides)
            }
            if (d.vars.animation.toLowerCase() == "slide") {
                if (d.transitions) {
                    d.setTransition(0)
                }
                d.css({
                    overflow: "hidden"
                });
                if (d.vars.animationLoop) {
                    d.cloneCount = 2;
                    d.cloneOffset = 1;
                    d.container.append(d.slides.filter(":first").clone().addClass("clone")).prepend(d.slides.filter(":last").clone().addClass("clone"))
                }
                d.newSlides = a(".slides > li", d);
                var m = ( - 1 * (d.currentSlide + d.cloneOffset));
                if (d.vertical) {
                    d.newSlides.css({
                        display: "block",
                        width: "100%",
                        "float": "left"
                    });
                    d.container.height((d.count + d.cloneCount) * 200 + "%").css("position", "absolute").width("100%");
                    setTimeout(function() {
                        d.css({
                            position: "relative"
                        }).height(d.slides.filter(":first").height());
                        d.args[d.prop] = (d.transitions) ? "translate3d(0," + m * d.height() + "px,0)": m * d.height() + "px";
                        d.container.css(d.args)
                    },
                    100)
                } else {
                    d.args[d.prop] = (d.transitions) ? "translate3d(" + m * d.width() + "px,0,0)": m * d.width() + "px";
                    d.container.width((d.count + d.cloneCount) * 200 + "%").css(d.args);
                    setTimeout(function() {
                        d.newSlides.width(d.width()).css({
                            "float": "left",
                            display: "block"
                        })
                    },
                    100)
                }
            } else {
                d.transitions = false;
                d.slides.css({
                    width: "100%",
                    "float": "left",
                    marginRight: "-100%"
                }).eq(d.currentSlide).fadeIn(d.vars.animationDuration)
            }
            if (d.vars.controlNav) {
                if (d.manualExists) {
                    d.controlNav = d.manualControls
                } else {
                   
                    if (d.containerExists) {
                       
                        d.controlNav = a(".flex-control-nav li", d.controlsContainer)
                    } else {
                        
                        d.controlNav = a(".flex-control-nav li", d)
                    }
                }
                d.controlNav.eq(d.currentSlide).addClass("active");
                d.controlNav.bind(d.eventType,
                function(i) {
                    i.preventDefault();
                    if (!a(this).hasClass("active")) { (d.controlNav.index(a(this)) > d.currentSlide) ? d.direction = "next": d.direction = "prev";
                        d.flexAnimate(d.controlNav.index(a(this)), d.vars.pauseOnAction)
                    }
                })
            }
           
            if (d.vars.keyboardNav && a("ul.slides").length == 1) {
                function h(i) {
                    if (d.animating) {
                        return
                    } else {
                        if (i.keyCode != 39 && i.keyCode != 37) {
                            return
                        } else {
                            if (i.keyCode == 39) {
                                var j = d.getTarget("next")
                            } else {
                                if (i.keyCode == 37) {
                                    var j = d.getTarget("prev")
                                }
                            }
                            if (d.canAdvance(j)) {
                                d.flexAnimate(j, d.vars.pauseOnAction)
                            }
                        }
                    }
                }
                a(document).bind("keyup", h)
            }
            if (d.vars.mousewheel) {
                d.mousewheelEvent = (/Firefox/i.test(navigator.userAgent)) ? "DOMMouseScroll": "mousewheel";
                d.bind(d.mousewheelEvent,
                function(y) {
                    y.preventDefault();
                    y = y ? y: window.event;
                    var i = y.detail ? y.detail * -1 : y.wheelDelta / 40,
                    j = (i < 0) ? d.getTarget("next") : d.getTarget("prev");
                    if (d.canAdvance(j)) {
                        d.flexAnimate(j, d.vars.pauseOnAction)
                    }
                })
            }
            if (d.vars.slideshow) {
                if (d.vars.pauseOnHover && d.vars.slideshow) {
                    d.hover(function() {
                        d.pause()
                    },
                    function() {
                        if (!d.manualPause) {
                            d.resume()
                        }
                    })
                }
                d.animatedSlides = setInterval(d.animateSlides, d.vars.slideshowSpeed)
            }
            if (d.vars.pausePlay) {
                var q = a('<div class="flex-pauseplay"><span></span></div>');
                if (d.containerExists) {
                    d.controlsContainer.append(q);
                    d.pausePlay = a(".flex-pauseplay span", d.controlsContainer)
                } else {
                    d.append(q);
                    d.pausePlay = a(".flex-pauseplay span", d)
                }
                var n = (d.vars.slideshow) ? "pause": "play";
                d.pausePlay.addClass(n).text((n == "pause") ? d.vars.pauseText: d.vars.playText);
                d.pausePlay.bind(d.eventType,
                function(i) {
                    i.preventDefault();
                    if (a(this).hasClass("pause")) {
                        d.pause();
                        d.manualPause = true
                    } else {
                        d.resume();
                        d.manualPause = false
                    }
                })
            }
            if ("ontouchstart" in document.documentElement) {
                var w, u, l, r, o, x, p = false;
                d.each(function() {
                    if ("ontouchstart" in document.documentElement) {
                        this.addEventListener("touchstart", g, false)
                    }
                });
                function g(i) {
                    if (d.animating) {
                        i.preventDefault()
                    } else {
                        if (i.touches.length == 1) {
                            d.pause();
                            r = (d.vertical) ? d.height() : d.width();
                            x = Number(new Date());
                            l = (d.vertical) ? (d.currentSlide + d.cloneOffset) * d.height() : (d.currentSlide + d.cloneOffset) * d.width();
                            w = (d.vertical) ? i.touches[0].pageY: i.touches[0].pageX;
                            u = (d.vertical) ? i.touches[0].pageX: i.touches[0].pageY;
                            d.setTransition(0);
                            this.addEventListener("touchmove", k, false);
                            this.addEventListener("touchend", f, false)
                        }
                    }
                }
                function k(i) {
                    o = (d.vertical) ? w - i.touches[0].pageY: w - i.touches[0].pageX;
                    p = (d.vertical) ? (Math.abs(o) < Math.abs(i.touches[0].pageX - u)) : (Math.abs(o) < Math.abs(i.touches[0].pageY - u));
                    if (!p) {
                        i.preventDefault();
                        if (d.vars.animation == "slide" && d.transitions) {
                            if (!d.vars.animationLoop) {
                                o = o / ((d.currentSlide == 0 && o < 0 || d.currentSlide == d.count - 1 && o > 0) ? (Math.abs(o) / r + 2) : 1)
                            }
                            d.args[d.prop] = (d.vertical) ? "translate3d(0," + ( - l - o) + "px,0)": "translate3d(" + ( - l - o) + "px,0,0)";
                            d.container.css(d.args)
                        }
                    }
                }
                function f(j) {
                    d.animating = false;
                    if (d.animatingTo == d.currentSlide && !p && !(o == null)) {
                        var i = (o > 0) ? d.getTarget("next") : d.getTarget("prev");
                        if (d.canAdvance(i) && Number(new Date()) - x < 550 && Math.abs(o) > 20 || Math.abs(o) > r / 2) {
                            d.flexAnimate(i, d.vars.pauseOnAction)
                        } else {
                            d.flexAnimate(d.currentSlide, d.vars.pauseOnAction)
                        }
                    }
                    this.removeEventListener("touchmove", k, false);
                    this.removeEventListener("touchend", f, false);
                    w = null;
                    u = null;
                    o = null;
                    l = null
                }
            }
            if (d.vars.animation.toLowerCase() == "slide") {
                a(window).resize(function() {
                    if (!d.animating) {
                        if (d.vertical) {
                            d.height(d.slides.filter(":first").height());
                            d.args[d.prop] = ( - 1 * (d.currentSlide + d.cloneOffset)) * d.slides.filter(":first").height() + "px";
                            if (d.transitions) {
                                d.setTransition(0);
                                d.args[d.prop] = (d.vertical) ? "translate3d(0," + d.args[d.prop] + ",0)": "translate3d(" + d.args[d.prop] + ",0,0)"
                            }
                            d.container.css(d.args)
                        } else {
                            d.newSlides.width(d.width());
                            d.args[d.prop] = ( - 1 * (d.currentSlide + d.cloneOffset)) * d.width() + "px";
                            if (d.transitions) {
                                d.setTransition(0);
                                d.args[d.prop] = (d.vertical) ? "translate3d(0," + d.args[d.prop] + ",0)": "translate3d(" + d.args[d.prop] + ",0,0)"
                            }
                            d.container.css(d.args)
                        }
                    }
                })
            }
            d.vars.start(d)
        };
        d.flexAnimate = function(g, f) {
            if (!d.animating) {
                d.animating = true;
                d.animatingTo = g;
                d.vars.before(d);
                if (f) {
                    d.pause()
                }
                if (d.vars.controlNav) {
                    d.controlNav.removeClass("active").eq(g).addClass("active")
                }
                d.atEnd = (g == 0 || g == d.count - 1) ? true: false;
                if (!d.vars.animationLoop && d.vars.directionNav) {
                    if (g == 0) {
                        d.directionNav.removeClass("disabled").filter(".prev").addClass("disabled")
                    } else {
                        if (g == d.count - 1) {
                            d.directionNav.removeClass("disabled").filter(".next").addClass("disabled")
                        } else {
                            d.directionNav.removeClass("disabled")
                        }
                    }
                }
                if (!d.vars.animationLoop && g == d.count - 1) {
                    d.pause();
                    d.vars.end(d)
                }
                if (d.vars.animation.toLowerCase() == "slide") {
                    var e = (d.vertical) ? d.slides.filter(":first").height() : d.slides.filter(":first").width();
                    if (d.currentSlide == 0 && g == d.count - 1 && d.vars.animationLoop && d.direction != "next") {
                        d.slideString = "0px"
                    } else {
                        if (d.currentSlide == d.count - 1 && g == 0 && d.vars.animationLoop && d.direction != "prev") {
                            d.slideString = ( - 1 * (d.count + 1)) * e + "px"
                        } else {
                            d.slideString = ( - 1 * (g + d.cloneOffset)) * e + "px"
                        }
                    }
                    d.args[d.prop] = d.slideString;
                    if (d.transitions) {
                        d.setTransition(d.vars.animationDuration);
                        d.args[d.prop] = (d.vertical) ? "translate3d(0," + d.slideString + ",0)": "translate3d(" + d.slideString + ",0,0)";
                        d.container.css(d.args).one("webkitTransitionEnd transitionend",
                        function() {
                            d.wrapup(e)
                        })
                    } else {
                        d.container.animate(d.args, d.vars.animationDuration,
                        function() {
                            d.wrapup(e)
                        })
                    }
                } else {
                    d.slides.eq(d.currentSlide).fadeOut(d.vars.animationDuration);
                    d.slides.eq(g).fadeIn(d.vars.animationDuration,
                    function() {
                        d.wrapup()
                    })
                }
            }
        };
        d.wrapup = function(e) {
            if (d.vars.animation == "slide") {
                if (d.currentSlide == 0 && d.animatingTo == d.count - 1 && d.vars.animationLoop) {
                    d.args[d.prop] = ( - 1 * d.count) * e + "px";
                    if (d.transitions) {
                        d.setTransition(0);
                        d.args[d.prop] = (d.vertical) ? "translate3d(0," + d.args[d.prop] + ",0)": "translate3d(" + d.args[d.prop] + ",0,0)"
                    }
                    d.container.css(d.args)
                } else {
                    if (d.currentSlide == d.count - 1 && d.animatingTo == 0 && d.vars.animationLoop) {
                        d.args[d.prop] = -1 * e + "px";
                        if (d.transitions) {
                            d.setTransition(0);
                            d.args[d.prop] = (d.vertical) ? "translate3d(0," + d.args[d.prop] + ",0)": "translate3d(" + d.args[d.prop] + ",0,0)"
                        }
                        d.container.css(d.args)
                    }
                }
            }
            d.animating = false;
            d.currentSlide = d.animatingTo;
            d.vars.after(d)
        };
        d.animateSlides = function() {
            if (!d.animating) {
                d.flexAnimate(d.getTarget("next"))
            }
        };
        d.pause = function() {
            clearInterval(d.animatedSlides);
            if (d.vars.pausePlay) {
                d.pausePlay.removeClass("pause").addClass("play").text(d.vars.playText)
            }
        };
        d.resume = function() {
            d.animatedSlides = setInterval(d.animateSlides, d.vars.slideshowSpeed);
            if (d.vars.pausePlay) {
                d.pausePlay.removeClass("play").addClass("pause").text(d.vars.pauseText)
            }
        };
        d.canAdvance = function(e) {
            if (!d.vars.animationLoop && d.atEnd) {
                if (d.currentSlide == 0 && e == d.count - 1 && d.direction != "next") {
                    return false
                } else {
                    if (d.currentSlide == d.count - 1 && e == 0 && d.direction == "next") {
                        return false
                    } else {
                        return true
                    }
                }
            } else {
                return true
            }
        };
        d.getTarget = function(e) {
            d.direction = e;
            if (e == "next") {
                return (d.currentSlide == d.count - 1) ? 0 : d.currentSlide + 1
            } else {
                return (d.currentSlide == 0) ? d.count - 1 : d.currentSlide - 1
            }
        };
        d.setTransition = function(e) {
            d.container.css({
                "-webkit-transition-duration": (e / 1000) + "s"
            })
        };
        d.init()
    };
    a.flexslider.defaults = {
        animation: "fade",
        slideDirection: "horizontal",
        slideshow: true,
        slideshowSpeed: 7000,
        animationDuration: 600,
        directionNav: true,
        controlNav: true,
        keyboardNav: true,
        mousewheel: false,
        prevText: "Previous",
        nextText: "Next",
        pausePlay: false,
        pauseText: "Pause",
        playText: "Play",
        randomize: false,
        slideToStart: 0,
        animationLoop: true,
        pauseOnAction: true,
        pauseOnHover: false,
        controlsContainer: "",
        manualControls: "",
        start: function() {},
        before: function() {},
        after: function() {},
        end: function() {}
    };
    a.fn.flexslider = function(b) {
        return this.each(function() {
            if (a(this).find(".slides li").length == 1) {
                a(this).find(".slides li").fadeIn(400)
            } else {
                if (a(this).data("flexslider") != true) {
                    new a.flexslider(a(this), b)
                }
            }
        })
    }
})(jQuery);
/* Copyright (c) 2006 Brandon Aaron (http://brandonaaron.net)
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) 
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 *
 * $LastChangedDate: 2007-07-22 01:45:56 +0200 (Son, 22 Jul 2007) $
 * $Rev: 2447 $
 *
 * Version 2.1.1
 */
(function($){$.fn.bgIframe=$.fn.bgiframe=function(s){if($.browser.msie&&/IE 6.0/.test(navigator.userAgent)){s=$.extend({top:'auto',left:'auto',width:'auto',height:'auto',opacity:true,src:'javascript:false;'},s||{});var prop=function(n){return n&&n.constructor==Number?n+'px':n;},html='<iframe class="bgiframe"frameborder="0"tabindex="-1"src="'+s.src+'"'+'style="display:block;position:absolute;z-index:-1;'+(s.opacity!==false?'filter:Alpha(Opacity=\'0\');':'')+'top:'+(s.top=='auto'?'expression(((parseInt(this.parentNode.currentStyle.borderTopWidth)||0)*-1)+\'px\')':prop(s.top))+';'+'left:'+(s.left=='auto'?'expression(((parseInt(this.parentNode.currentStyle.borderLeftWidth)||0)*-1)+\'px\')':prop(s.left))+';'+'width:'+(s.width=='auto'?'expression(this.parentNode.offsetWidth+\'px\')':prop(s.width))+';'+'height:'+(s.height=='auto'?'expression(this.parentNode.offsetHeight+\'px\')':prop(s.height))+';'+'"/>';return this.each(function(){if($('> iframe.bgiframe',this).length==0)this.insertBefore(document.createElement(html),this.firstChild);});}return this;};})(jQuery);
(function ($)
{
    $.fn.jCarouselLite = function (o)
    {
        o = $.extend(
        {
			
            btnPrev : null, btnNext : null, btnGo : null, mouseWheel : false, auto : null, speed : 200, 
            easing : null, vertical : false, circular : true, visible : 3, start : 0, scroll : 1, beforeStart : null, 
            afterEnd : null
        },
        o || {});
        return this.each(function ()
        {
            var b = false, animCss = o.vertical ? "top" : "left", sizeCss = o.vertical ? "height" : "width";
            var c = $(this), ul = $("ul", c), tLi = $("li", ul), tl = tLi.size(), v = o.visible;
            if (o.circular) {
                ul.prepend(tLi.slice(tl - v - 1 + 1).clone()).append(tLi.slice(0, v).clone());
                o.start += v
            }
            var f = $("li", ul), itemLength = f.size(), curr = o.start;
            c.css("visibility", "visible");
            f.css({
                overflow : "hidden", float : o.vertical ? "none" : "left"
            });
            ul.css({
                margin : "0", padding : "0", position : "relative", "list-style-type" : "none", "z-index" : "1"
            });
            c.css({
                overflow : "hidden", position : "relative", "z-index" : "2", left : "0px"
            });
            var g = o.vertical ? height(f) : width(f);
            var h = g * itemLength;
            var j = g * v;
            f.css({
                width : f.width(), height : f.height()
            });
            ul.css(sizeCss, h + "px").css(animCss, - (curr * g));
            c.css(sizeCss, j + "px");
            if (o.btnPrev) {
                $(o.btnPrev).click(function () 
                {
                    return go(curr - o.scroll);
                });
            }
            if (o.btnNext) {
                $(o.btnNext).click(function () 
                {
                    return go(curr + o.scroll);
                });
            }
            if (o.btnGo)
            {
                $.each(o.btnGo, function (i, a) 
                {
                    $(a).click(function () 
                    {
                        return go(o.circular ? o.visible + i : i);
                    }) 
                });
            }
            if (o.mouseWheel && c.mousewheel) {
                c.mousewheel(function (e, d) 
                {
                    return d > 0 ? go(curr - o.scroll) : go(curr + o.scroll);
                });
            }
            if (o.auto) {
                setInterval(function () 
                {
                    go(curr + o.scroll) 
                },
                o.auto + o.speed);
            }
            function vis()
            {
                return f.slice(curr).slice(0, v);
            };
            function go(a)
            {
                if (!b)
                {
                    if (o.beforeStart) {
                        o.beforeStart.call(this, vis());
                    }
                    if (o.circular)
                    {
                        if (a <= o.start - v - 1)
                        {
                            ul.css(animCss, - ((itemLength - (v * 2)) * g) + "px");
                            curr = a == o.start - v - 1 ? itemLength - (v * 2) - 1 : itemLength - (v * 2) - o.scroll
                        }
                        else if (a >= itemLength - v + 1) {
                            ul.css(animCss, - ((v) * g) + "px");
                            curr = a == itemLength - v + 1 ? v + 1 : v + o.scroll
                        }
                        else {
                            curr = a;
                        }
                    }
                    else {
                        if (a < 0 || a > itemLength - v) {
                            return;
                        }
                        else {
                            curr = a;
                        }
                    }
                    b = true;
                    ul.animate(animCss == "left" ? {
                        left :- (curr * g)
                    }
                     : {
                        top :- (curr * g)
                    },
                    o.speed, o.easing, function ()
                    {
                        if (o.afterEnd) {
                            o.afterEnd.call(this, vis());
                        }
                        b = false;
                    });
                    if (!o.circular)
                    {
                        $(o.btnPrev + "," + o.btnNext).removeClass("disabled");
                        $((curr - o.scroll < 0 && o.btnPrev) || (curr + o.scroll > itemLength - v && o.btnNext) || []).addClass("disabled")
                    }
                }
                return false;
            }
        })
    };
    function css(a, b)
    {
        return parseInt($.css(a[0], b)) || 0;
    };
    function width(a)
    {
        return a[0].offsetWidth + css(a, 'marginLeft') + css(a, 'marginRight');
    };
    function height(a)
    {
        return a[0].offsetHeight + css(a, 'marginTop') + css(a, 'marginBottom');
    }
})(jQuery);
/**
 * weebox.js
 *
 * weebox js
 *
 * @category   javascript
 * @package    jquery
 * @author     Jack <xiejinci@gmail.com>
 * @copyright  Copyright (c) 2006-2008 9wee Com. (http://www.9wee.com)
 * @license    http://www.9wee.com/license/
 * @version    
 */ 
(function($) {
	/*if(typeof($.fn.bgIframe) == 'undefined') {
		$.ajax({
			type: "GET",
		  	url: '/js/jquery/bgiframe.js',//路径不好处理
		  	success: function(js){eval(js);},
		  	async: false				  	
		});
	}*/
	var weebox = function(content, options) {
		var self = this;
		this._dragging = false;
		this._content = content;
		this._options = options;
		this.dh = null;
		this.mh = null;
		this.dt = null;
		this.dc = null;
		this.bo = null;
		this.bc = null;
		this.selector = null;	
		this.ajaxurl = null;
		this.options = null;
		this.defaults = {
			boxid: null,
			boxclass: null,
			type: 'dialog',
			title: '',
			width: 0,
			height: 0,
			timeout: 0, 
			draggable: true,
			modal: true,
			focus: null,
			position: 'center',
			overlay: 50,
			showTitle: true,
			showButton: true,
			showCancel: true, 
			showOk: true,
			okBtnName: '确定',
			cancelBtnName: '取消',
			contentType: 'text',
			contentChange: false,
			clickClose: false,
			zIndex: 999,
			animate: false,
			trigger: null,
			onclose: null,
			onopen: null,
			onok: null		
		};
		this.types = new Array(
			"dialog", 
			"error", 
			"warning", 
			"success", 
			"prompt",
			"box"
		);
		this.titles = {
			"error": 	"!! Error !!",
			"warning": 	"Warning!",
			"success": 	"Success",
			"prompt": 	"Please Choose",
			"dialog": 	"Dialog",
			"box":		""
		};
		
		this.initOptions = function() {	
			if (typeof(self._options) == "undefined") {
				self._options = {};
			}
			if (typeof(self._options.type) == "undefined") {
				self._options.type = 'dialog';
			}
			if(!$.inArray(self._options.type, self.types)) {
				self._options.type = self.types[0];
			}
			if (typeof(self._options.boxclass) == "undefined") {
				self._options.boxclass = self._options.type+"box";
			}
			if (typeof(self._options.title) == "undefined") {
				self._options.title = self.titles[self._options.type];
			}
			if (content.substr(0, 1) == "#") {
				self._options.contentType = 'selector';
				self.selector = content; 
			}
			self.options = $.extend({}, self.defaults, self._options);
		};
		
		this.initBox = function() {
			var html = '';	
			if (self.options.type == 'wee') {
				html =  '<div class="weedialog">' +
				'	<div class="dialog-top">' +
				'		<div class="dialog-tl"></div>' +
				'		<div class="dialog-tc"></div>' +
				'		<div class="dialog-tr"></div>' +
				'	</div>' +
				'	<table width="100%" border="0" cellspacing="0" cellpadding="0" >' +
				'		<tr>' +
				'			<td class="dialog-cl"></td>' +
				'			<td>' +
				'				<div class="dialog-header">' +
				'					<div class="dialog-title"></div>' +
				'					<div class="dialog-close"></div>' +
				'				</div>' +
				'				<div class="dialog-content"></div>' +
				'				<div class="dialog-button">' +
				'					<input type="button" class="dialog-ok" value="确定">' +
				'					<input type="button" class="dialog-cancel" value="取消">' +
				'				</div>' +
				'			</td>' +
				'			<td class="dialog-cr"></td>' +
				'		</tr>' +
				'	</table>' +
				'	<div class="dialog-bot">' +
				'		<div class="dialog-bl"></div>' +
				'		<div class="dialog-bc"></div>' +
				'		<div class="dialog-br"></div>' +
				'	</div>' +
				'</div>';
				$(".dialog-box").find(".dialog-close").click();
				
			} else {
				html = "<div class='dialog-box'>" +
							"<div class='dialog-header'>" +
								"<div class='dialog-title'></div>" +
								"<div class='dialog-close'></div>" +
							"</div>" +
							"<div class='dialog-content'></div>" +	
							"<div style='clear:both'></div>" +				
							"<div class='dialog-button'>" +
								"<input type='button' class='dialog-ok' value='确定'>" +
								"<input type='button' class='dialog-cancel' value='取消'>" +
							"</div>" +
						"</div>";
			}
			self.dh = $(html).appendTo('body').hide().css({
				position: 'absolute',	
				overflow: 'hidden',
				zIndex: self.options.zIndex
			});	
			self.dt = self.dh.find('.dialog-title');
			self.dc = self.dh.find('.dialog-content');
			self.bo = self.dh.find('.dialog-ok');
			self.bc = self.dh.find('.dialog-cancel');
			if (self.options.boxid) {
				self.dh.attr('id', self.options.boxid);
			}	
			if (self.options.boxclass) {
				self.dh.addClass(self.options.boxclass);
			}
			if (self.options.height>0) {
				self.dc.css('height', self.options.height);
			}
			if (self.options.width>0) {
				self.dh.css('width', self.options.width);
			}
			self.dh.bgiframe();	
		}
		
		this.initMask = function() {							
			if (self.options.modal) {
				self.mh = $("<div class='dialog-mask'></div>")
				.appendTo('body').hide().css({
					opacity: self.options.overlay/100,
					filter: 'alpha(opacity='+self.options.overlay+')',
					width: self.bwidth(),
					height: self.bheight(),
					zIndex: self.options.zIndex-1
				});
			}
		}
		
		this.initContent = function(content) {
			self.dh.find(".dialog-ok").val(self.options.okBtnName);
			self.dh.find(".dialog-cancel").val(self.options.cancelBtnName);	
			self.dh.find('.dialog-title').html(self.options.title);
			if (!self.options.showTitle) {
				self.dh.find('.dialog-header').hide();
			}	
			if (!self.options.showButton) {
				self.dh.find('.dialog-button').hide();
			}
			if (!self.options.showCancel) {
				self.dh.find('.dialog-cancel').hide();
			}							
			if (!self.options.showOk) {
				self.dh.find(".dialog-ok").hide();
			}			
			if (self.options.contentType == "selector") {
				self.selector = self._content;
				self._content = $(self.selector).html();
				self.setContent(self._content);
				//if have checkbox do
				var cs = $(self.selector).find(':checkbox');
				self.dh.find('.dialog-content').find(':checkbox').each(function(i){
					this.checked = cs[i].checked;
				});				
				$(self.selector).empty();
				self.onopen();
				self.show();
				self.focus();
			} else if (self.options.contentType == "ajax") {	
				self.ajaxurl = self._content;			
				self.setContent('<div class="dialog-loading"></div>');				
				self.show();
				$.get(self.ajaxurl, function(data) {
					self._content = data;
			    	self.setContent(self._content);
			    	self.onopen();
			    	self.focus();		  	
			    	if (self.options.position == 'center') {
						self.setCenterPosition();
			    	}
				});
			} else {
				self.setContent(self._content);
				self.onopen();	
				self.show();	
				self.focus();					
			}
		}
		
		this.initEvent = function() {
			self.dh.find(".dialog-close, .dialog-cancel, .dialog-ok").unbind('click').click(function(){self.close();
				if(self.options.type=='wee')
				{
					$(".dialog-box").find(".dialog-close").click();
				}
			});			
			if (typeof(self.options.onok) == "function") {
				self.dh.find(".dialog-ok").unbind('click').click(self.options.onok);
			} 
			if (typeof(self.options.oncancel) == "function") {
				self.dh.find(".dialog-cancel").unbind('click').click(self.options.oncancel);
			}			
			if (self.options.timeout>0) {
				window.setTimeout(self.close, (self.options.timeout * 1000));
			}	
			this.draggable();			
		}
		
		this.draggable = function() {	
			if (self.options.draggable && self.options.showTitle) {
				self.dh.find('.dialog-header').mousedown(function(event){
					self._ox = self.dh.position().left;
					self._oy = self.dh.position().top;					
					self._mx = event.clientX;
					self._my = event.clientY;
					self._dragging = true;
				});
				if (self.mh) {
					var handle = self.mh;
				} else {
					var handle = $(document);
				}
				$(document).mousemove(function(event){
					if (self._dragging == true) {
						//window.status = "X:"+event.clientX+"Y:"+event.clientY;
						self.dh.css({
							left: self._ox+event.clientX-self._mx, 
							top: self._oy+event.clientY-self._my
						});
					}
				}).mouseup(function(){
					self._mx = null;
					self._my = null;
					self._dragging = false;
				});
				var e = self.dh.find('.dialog-header').get(0);
				e.unselectable = "on";
				e.onselectstart = function() { 
					return false; 
				};
				if (e.style) { 
					e.style.MozUserSelect = "none"; 
				}
			}	
		}
		
		this.onopen = function() {							
			if (typeof(self.options.onopen) == "function") {
				self.options.onopen();
			}	
		}
		
		this.show = function() {	
			if (self.options.position == 'center') {
				self.setCenterPosition();
			}
			if (self.options.position == 'element') {
				self.setElementPosition();
			}		
			if (self.options.animate) {				
				self.dh.fadeIn("slow");
				if (self.mh) {
					self.mh.fadeIn("normal");
				}
			} else {
				self.dh.show();
				if (self.mh) {
					self.mh.show();
				}
			}	
		}
		
		this.focus = function() {
			if (self.options.focus) {
				self.dh.find(self.options.focus).focus();
			} else {
				self.dh.find('.dialog-cancel').focus();
			}
		}
		
		this.find = function(selector) {
			return self.dh.find(selector);
		}
		
		this.setTitle = function(title) {
			self.dh.find('.dialog-title').html(title);
		}
		
		this.getTitle = function() {
			return self.dh.find('.dialog-title').html();
		}
		
		this.setContent = function(content) {
			self.dh.find('.dialog-content').html(content);
		}
		
		this.getContent = function() {
			return self.dh.find('.dialog-content').html();
		}
		
		this.hideButton = function(btname) {
			self.dh.find('.dialog-'+btname).hide();			
		}
		
		this.showButton = function(btname) {
			self.dh.find('.dialog-'+btname).show();	
		}
		
		this.setButtonTitle = function(btname, title) {
			self.dh.find('.dialog-'+btname).val(title);	
		}
		
		this.close = function() {
			if (self.animate) {
				self.dh.fadeOut("slow", function () { self.dh.hide(); });
				if (self.mh) {
					self.mh.fadeOut("normal", function () { self.mh.hide(); });
				}
			} else {
				self.dh.hide();
				if (self.mh) {
					self.mh.hide();
				}
			}
			if (self.options.contentType == 'selector') {
				if (self.options.contentChange) {
					//if have checkbox do
					var cs = self.find(':checkbox');
					$(self.selector).html(self.getContent());						
					if (cs.length > 0) {
						$(self.selector).find(':checkbox').each(function(i){
							this.checked = cs[i].checked;
						});
					}
				} else {
					$(self.selector).html(self._content);
				} 
			}								
			if (typeof(self.options.onclose) == "function") {
				self.options.onclose();
			}
			self.dh.remove();
			if (self.mh) {
				self.mh.remove();
			}
		}
		
		this.bheight = function() {
			if ($.browser.msie && $.browser.version < 7) {
				var scrollHeight = Math.max(
					document.documentElement.scrollHeight,
					document.body.scrollHeight
				);
				var offsetHeight = Math.max(
					document.documentElement.offsetHeight,
					document.body.offsetHeight
				);
				
				if (scrollHeight < offsetHeight) {
					return $(window).height();
				} else {
					return scrollHeight;
				}
			} else {
				return $(document).height();
			}
		}
		
		this.bwidth = function() {
			if ($.browser.msie && $.browser.version < 7) {
				var scrollWidth = Math.max(
					document.documentElement.scrollWidth,
					document.body.scrollWidth
				);
				var offsetWidth = Math.max(
					document.documentElement.offsetWidth,
					document.body.offsetWidth
				);
				
				if (scrollWidth < offsetWidth) {
					return $(window).width();
				} else {
					return scrollWidth;
				}
			} else {
				return $(document).width();
			}
		}
		
		this.setCenterPosition = function() {
			var wnd = $(window), doc = $(document),
				pTop = doc.scrollTop(),	pLeft = doc.scrollLeft(),
				minTop = pTop;	
			pTop += (wnd.height() - self.dh.height()) / 2;
			pTop = Math.max(pTop, minTop);
			pLeft += (wnd.width() - self.dh.width()) / 2;
			self.dh.css({top: pTop, left: pLeft});
			
		}
		
//		this.setElementPosition = function() {
//			var trigger = $("#"+self.options.trigger);			
//			if (trigger.length == 0) {
//				alert('请设置位置的相对元素');
//				self.close();				
//				return false;
//			}		
//			var scrollWidth = 0;
//			if (!$.browser.msie || $.browser.version >= 7) {
//				scrollWidth = $(window).width() - document.body.scrollWidth;
//			}
//			
//			var left = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft)+trigger.position().left;
//			if (left+self.dh.width() > document.body.clientWidth) {
//				left = trigger.position().left + trigger.width() + scrollWidth - self.dh.width();
//			} 
//			var top = Math.max(document.documentElement.scrollTop, document.body.scrollTop)+trigger.position().top;
//			if (top+self.dh.height()+trigger.height() > document.documentElement.clientHeight) {
//				top = top - self.dh.height() - 5;
//			} else {
//				top = top + trigger.height() + 5;
//			}
//			self.dh.css({top: top, left: left});
//			return true;
//		}	
	
		this.setElementPosition = function() {
			var trigger = $(self.options.trigger);	
			if (trigger.length == 0) {
				alert('请设置位置的相对元素');
				self.close();				
				return false;
			}
			var left = trigger.offset().left;
			var top = trigger.offset().top + 25;
			self.dh.css({top: top, left: left});
			return true;
		}	
		
		//窗口初始化	
		this.initialize = function() {
			self.initOptions();
			self.initMask();
			self.initBox();		
			self.initContent();
			self.initEvent();
			return self;
		}
		//初始化
		this.initialize();
	}	
	
	var weeboxs = function() {		
		var self = this;
		this._onbox = false;
		this._opening = false;
		this.boxs = new Array();
		this.zIndex = 999;
		this.push = function(box) {
			this.boxs.push(box);
		}
		this.pop = function() {
			if (this.boxs.length > 0) {
				return this.boxs.pop();
			} else {
				return false;
			}
		}
		this.open = function(content, options) {
			self._opening = true;
			if (typeof(options) == "undefined") {
				options = {};
			}
			if (options.boxid) {
				this.close(options.boxid);
			}
			options.zIndex = this.zIndex;
			this.zIndex += 10;
			var box = new weebox(content, options);
			box.dh.click(function(){
				self._onbox = true;
			});
			this.push(box);
			return box;
		}
		this.close = function(id) {
			if (id) {
				for(var i=0; i<this.boxs.length; i++) {
					if (this.boxs[i].dh.attr('id') == id) {
						this.boxs[i].close();
						this.boxs.splice(i,1);
					}
				}
			} else {
				this.pop().close();
			}
		}
		this.length = function() {
			return this.boxs.length;
		}
		this.getTopBox = function() {
			return this.boxs[this.boxs.length-1];
		}	
		this.find = function(selector) {
			return this.getTopBox().dh.find(selector);
		}		
		this.setTitle = function(title) {
			this.getTopBox().setTitle(title);
		}		
		this.getTitle = function() {
			return this.getTopBox().getTitle();
		}		
		this.setContent = function(content) {
			this.getTopBox().setContent(content);
		}		
		this.getContent = function() {
			return this.getTopBox().getContent();
		}		
		this.hideButton = function(btname) {
			this.getTopBox().hideButton(btname);			
		}		
		this.showButton = function(btname) {
			this.getTopBox().showButton(btname);	
		}		
		this.setButtonTitle = function(btname, title) {
			this.getTopBox().setButtonTitle(btname, title);	
		}
		$(window).scroll(function() {
			if (self.length() > 0) {
				var box = self.getTopBox();
				if (box.options.position == "center") {
					self.getTopBox().setCenterPosition();
				}
			}			
		});
		$(document).click(function() {
			if (self.length()>0) {
				var box = self.getTopBox();
				if(!self._opening && !self._onbox && box.options.clickClose) {
					box.close();
				}
			}
			self._opening = false;
			self._onbox = false;
		});
	}
	$.extend({weeboxs: new weeboxs()});		
})(jQuery);
/*!
 * jQuery Cookie Plugin v1.4.0
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2013 Klaus Hartl
 * Released under the MIT license
 */
(function (factory) {
	if (typeof define === 'function' && define.amd) {
		// AMD. Register as anonymous module.
		define(['jquery'], factory);
	} else {
		// Browser globals.
		factory(jQuery);
	}
}(function ($) {

	var pluses = /\+/g;

	function encode(s) {
		return config.raw ? s : encodeURIComponent(s);
	}

	function decode(s) {
		return config.raw ? s : decodeURIComponent(s);
	}

	function stringifyCookieValue(value) {
		return encode(config.json ? JSON.stringify(value) : String(value));
	}

	function parseCookieValue(s) {
		if (s.indexOf('"') === 0) {
			// This is a quoted cookie as according to RFC2068, unescape...
			s = s.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, '\\');
		}

		try {
			// Replace server-side written pluses with spaces.
			// If we can't decode the cookie, ignore it, it's unusable.
			s = decodeURIComponent(s.replace(pluses, ' '));
		} catch(e) {
			return;
		}

		try {
			// If we can't parse the cookie, ignore it, it's unusable.
			return config.json ? JSON.parse(s) : s;
		} catch(e) {}
	}

	function read(s, converter) {
		var value = config.raw ? s : parseCookieValue(s);
		return $.isFunction(converter) ? converter(value) : value;
	}

	var config = $.cookie = function (key, value, options) {

		// Write
		if (value !== undefined && !$.isFunction(value)) {
			options = $.extend({}, config.defaults, options);

			if (typeof options.expires === 'number') {
				var days = options.expires, t = options.expires = new Date();
				t.setDate(t.getDate() + days);
			}

			return (document.cookie = [
				encode(key), '=', stringifyCookieValue(value),
				options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
				options.path    ? '; path=' + options.path : '',
				options.domain  ? '; domain=' + options.domain : '',
				options.secure  ? '; secure' : ''
			].join(''));
		}

		// Read

		var result = key ? undefined : {};

		// To prevent the for loop in the first place assign an empty array
		// in case there are no cookies at all. Also prevents odd result when
		// calling $.cookie().
		var cookies = document.cookie ? document.cookie.split('; ') : [];

		for (var i = 0, l = cookies.length; i < l; i++) {
			var parts = cookies[i].split('=');
			var name = decode(parts.shift());
			var cookie = parts.join('=');

			if (key && key === name) {
				// If second argument (value) is a function it's a converter...
				result = read(cookie, value);
				break;
			}

			// Prevent storing a cookie that we couldn't decode.
			if (!key && (cookie = read(cookie)) !== undefined) {
				result[name] = cookie;
			}
		}

		return result;
	};

	config.defaults = {};

	$.removeCookie = function (key, options) {
		if ($.cookie(key) !== undefined) {
			// Must not alter options, thus extending a fresh object...
			$.cookie(key, '', $.extend({}, options, { expires: -1 }));
			return true;
		}
		return false;
	};

}));

(function($) {

	jQuery.fn.pngFix = function(settings) {
		settings = jQuery.extend({
			blankgif: 'blank.gif'
	}, settings);

	var ie55 = (navigator.appName == "Microsoft Internet Explorer" && parseInt(navigator.appVersion) == 4 && navigator.appVersion.indexOf("MSIE 5.5") != -1);
	var ie6 = (navigator.appName == "Microsoft Internet Explorer" && parseInt(navigator.appVersion) == 4 && navigator.appVersion.indexOf("MSIE 6.0") != -1);
	
	if (jQuery.browser.msie && (ie55 || ie6)) {
		jQuery(this).find("img[src$=.png]").each(function() {

			jQuery(this).attr('width',jQuery(this).width());
			jQuery(this).attr('height',jQuery(this).height());

			var prevStyle = '';
			var strNewHTML = '';
			var imgId = (jQuery(this).attr('id')) ? 'id="' + jQuery(this).attr('id') + '" ' : '';
			var imgClass = (jQuery(this).attr('class')) ? 'class="' + jQuery(this).attr('class') + '" ' : '';
			var imgTitle = (jQuery(this).attr('title')) ? 'title="' + jQuery(this).attr('title') + '" ' : '';
			var imgAlt = (jQuery(this).attr('alt')) ? 'alt="' + jQuery(this).attr('alt') + '" ' : '';
			var imgAlign = (jQuery(this).attr('align')) ? 'float:' + jQuery(this).attr('align') + ';' : '';
			var imgHand = (jQuery(this).parent().attr('href')) ? 'cursor:hand;' : '';
			if (this.style.border) {
				prevStyle += 'border:'+this.style.border+';';
				this.style.border = '';
			}
			if (this.style.padding) {
				prevStyle += 'padding:'+this.style.padding+';';
				this.style.padding = '';
			}
			if (this.style.margin) {
				prevStyle += 'margin:'+this.style.margin+';';
				this.style.margin = '';
			}
			var imgStyle = (this.style.cssText);

			strNewHTML += '<span '+imgId+imgClass+imgTitle+imgAlt;
			strNewHTML += 'style="position:relative;white-space:pre-line;display:inline-block;background:transparent;'+imgAlign+imgHand;
			strNewHTML += 'width:' + jQuery(this).width() + 'px;' + 'height:' + jQuery(this).height() + 'px;';
			strNewHTML += 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader' + '(src=\'' + jQuery(this).attr('src') + '\', sizingMethod=\'scale\');';
			strNewHTML += imgStyle+'"></span>';
			if (prevStyle != ''){
				strNewHTML = '<span style="position:relative;display:inline-block;'+prevStyle+imgHand+'width:' + jQuery(this).width() + 'px;' + 'height:' + jQuery(this).height() + 'px;'+'">' + strNewHTML + '</span>';
			}

			jQuery(this).hide();
			jQuery(this).after(strNewHTML);

		});

		jQuery(this).find("*").each(function(){
			var bgIMG = jQuery(this).css('background-image');
			if(bgIMG.indexOf(".png")!=-1){
				var iebg = bgIMG.split('url("')[1].split('")')[0];
				
				jQuery(this).css('background-image', 'none');
				jQuery(this).get(0).runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + iebg + "',sizingMethod='scale')";
			}
		});
		
		jQuery(this).find("input[src$=.png]").each(function() {
			var bgIMG = jQuery(this).attr('src');
			jQuery(this).get(0).runtimeStyle.filter = 'progid:DXImageTransform.Microsoft.AlphaImageLoader' + '(src=\'' + bgIMG + '\', sizingMethod=\'scale\');';
   		jQuery(this).attr('src', settings.blankgif)
		});
	
	}
	return jQuery;
};
})(jQuery);

(function($) {

    $.fn.lazyload = function(options) {
        var settings = {
            threshold    : 0,
            failurelimit : 0,
            event        : "scroll",
            effect       : "show",
            container    : window
        };
                
        if(options) {
            $.extend(settings, options);
        }

        /* Fire one scroll event per scroll. Not one scroll event per image. */
        var elements = this;
        if ("scroll" == settings.event) {
            $(settings.container).bind("scroll", function(event) {
                
                var counter = 0;
                elements.each(function() {
                    if ($.abovethetop(this, settings) ||
                        $.leftofbegin(this, settings)) {
                            /* Nothing. */
                    } else if (!$.belowthefold(this, settings) &&
                        !$.rightoffold(this, settings)) {
                            $(this).trigger("appear");
                    } else {
                        if (counter++ > settings.failurelimit) {
                            return false;
                        }
                    }
                });
                /* Remove image from array so it is not looped next time. */
                var temp = $.grep(elements, function(element) {
                    return !element.loaded;
                });
                elements = $(temp);
            });
        }
        
        this.each(function() {
            var self = this;
            
            /* Save original only if it is not defined in HTML. */
            if (undefined == $(self).attr("original")) {
                $(self).attr("original", $(self).attr("src"));     
            }

            if ("scroll" != settings.event || 
                    undefined == $(self).attr("src") || 
                    settings.placeholder == $(self).attr("src") || 
                    ($.abovethetop(self, settings) ||
                     $.leftofbegin(self, settings) || 
                     $.belowthefold(self, settings) || 
                     $.rightoffold(self, settings) )) {
                        
                if (settings.placeholder) {
                    $(self).attr("src", settings.placeholder);      
                } else {
                    $(self).removeAttr("src");
                }
                self.loaded = false;
            } else {
                self.loaded = true;
            }
            
            /* When appear is triggered load original image. */
            $(self).one("appear", function() {
                if (!this.loaded) {
                    $("<img />")
                        .bind("load", function() {
                            $(self)
                                .hide()
                                .attr("src", $(self).attr("original"))
                                [settings.effect](settings.effectspeed);
                            self.loaded = true;
                        })
                        .attr("src", $(self).attr("original"));
                };
            });

            /* When wanted event is triggered load original image */
            /* by triggering appear.                              */
            if ("scroll" != settings.event) {
                $(self).bind(settings.event, function(event) {
                    if (!self.loaded) {
                        $(self).trigger("appear");
                    }
                });
            }
        });
        
        /* Force initial check if images should appear. */
        $(settings.container).trigger(settings.event);
        
        return this;

    };

    /* Convenience methods in jQuery namespace.           */
    /* Use as  $.belowthefold(element, {threshold : 100, container : window}) */

    $.belowthefold = function(element, settings) {
        if (settings.container === undefined || settings.container === window) {
            var fold = $(window).height() + $(window).scrollTop();
        } else {
            var fold = $(settings.container).offset().top + $(settings.container).height();
        }
        return fold <= $(element).offset().top - settings.threshold;
    };
    
    $.rightoffold = function(element, settings) {
        if (settings.container === undefined || settings.container === window) {
            var fold = $(window).width() + $(window).scrollLeft();
        } else {
            var fold = $(settings.container).offset().left + $(settings.container).width();
        }
        return fold <= $(element).offset().left - settings.threshold;
    };
        
    $.abovethetop = function(element, settings) {
        if (settings.container === undefined || settings.container === window) {
            var fold = $(window).scrollTop();
        } else {
            var fold = $(settings.container).offset().top;
        }
        return fold >= $(element).offset().top + settings.threshold  + $(element).height();
    };
    
    $.leftofbegin = function(element, settings) {
        if (settings.container === undefined || settings.container === window) {
            var fold = $(window).scrollLeft();
        } else {
            var fold = $(settings.container).offset().left;
        }
        return fold >= $(element).offset().left + settings.threshold + $(element).width();
    };
    /* Custom selectors for your convenience.   */
    /* Use as $("img:below-the-fold").something() */

    $.extend($.expr[':'], {
        "below-the-fold" : "$.belowthefold(a, {threshold : 0, container: window})",
        "above-the-fold" : "!$.belowthefold(a, {threshold : 0, container: window})",
        "right-of-fold"  : "$.rightoffold(a, {threshold : 0, container: window})",
        "left-of-fold"   : "!$.rightoffold(a, {threshold : 0, container: window})"
    });
    
})(jQuery);

eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('$(25).2o(4(){$("#2u").l("h",4(){3 k=$("d[6=\'k\']").b();21(k)});$(".1R").2m({1U:".1V",1T:".1S",1Q:5});1B();12();Y();W();$("X[6=\'g[]\']").l("1W",4(){12();Y();W()});$("d[6=\'x\']").l("1X",4(){12();Y();W()});1k();1l()});4 22(){3 V=$(".1m").7("a[m=\'2\']").g("1q");$.z({L:V,K:4(8){$(".B").8(8);$(".1e").7("s[m=\'2\']").h();10();13()},J:4(E){}});A u}4 1l(){$(".t").7("d[6=\'1n\']").l("h",4(){1Y{9(1j.1r("j")){$.Z(G[\'1g\']);A u}}1P(1Z){3 j=$("#j").b();9(j==\'\'){$.Z(G[\'1g\']);A u}}})}4 13(){3 y=23+"/1M.1F?1H=1G&n=1O&z=1";$(".t").7("d[6=\'1n\']").l("h",4(){3 w=$(".t").7("d[6=\'w\']").b();3 U=$(".t").7("X[6=\'U\']").b();3 j=1j.8("j");3 k=$(".t").7("d[6=\'k\']").b();3 S=$(".t").7("d[6=\'S\']").b();3 q=1v 1N();q.w=w;q.U=U;q.j=j;q.1L=\'1J\';q.1K=k;q.S=S;9(1j.1r("j")){$.Z(G[\'1g\'])}e{$.z({L:y,O:q,2n:"24",2l:"2j",K:4(O){9(O.2k){3 y=1p+"&w="+w;$.z({L:y,K:4(8){$(".B").8(8);$.2p(O.1o);$(".t").7("2s[6=\'j\']").b("");2r.2q()},J:4(E){}})}e{$.Z(O.1o)}},J:4(E){}})}})}4 29(){3 y=1p;$.z({L:y,K:4(8){$(".B").8(8);13();10()},J:4(E){}})}4 10(){$(".B .1m,.B .27").7("a").l("h",4(){3 V=$(I).g("1q");$.z({L:V,K:4(8){$(".B").8(8);13();10()},J:4(E){}});A u})}4 1k(){$(".1e").7("s").l("h",4(){3 m=$(I).g("m");$(".1z").7("s").H("n");$(".1e").7("s").H("n");$(".1z").7("#2d"+m).P("n");$(I).P("n")})}4 1B(){3 1a=$(".1C").7("s");T(3 i=0;i<1a.15;i++){$(1a[i]).l("h",4(){$(".1s").7("s").H("n");$(".1C").7("s").H("n");$(I).P("n");3 m=$(I).g("m");$(".1s").7(".2c"+m).P("n")})}}4 12(){3 f=$("X[6=\'g[]\']");3 M=\'\';3 N=\'\';3 1h=17($("d[6=\'1h\']").b());3 1f=\'\';3 v=0;3 1i=\'\';T(i=0;i<f.15;i++){N+="[ "+$(f[i]).2e().7("C").8()+" ]";F=$(f[i]).7("18:16").g("m");9(F==2f){F=\'\'}e{v+=17($(f[i]).7("18:16").g("11"));1f+=" + "+19(17($(f[i]).7("18:16").g("11")));M+="[ "+F+" ]";1i+=F}}9(M!=\'\'){9(v>0){$("#v").8(1f+" = "+(19(v+1h)))}$("#1t").8(G[\'2g\']+M);3 14=u;T(D 2b p){3 1u=1v 2a(p[D][\'M\'],"26");1x=1u.28(1i);9(1x){3 c=p[D][\'1b\']-p[D][\'2h\'];$("#c").7("C").8(c);$("d[6=\'o\']").b(p[D][\'1b\']);9(p[D][\'1b\']>0)14=1y;e 14=u;1D}}9(p[0]){9(14){$("#c").1c()}e{$("#c").7("C").8("0");$("#c").1A()}}e{9($("d[6=\'o\']").b()>0)$("#c").1c()}}e{9(N!=\'\'&&p[0]){$("#1t").8(G[\'2i\']+N);$("#c").7("C").8("0");$("#c").1A()}e 9(N!=\'\'){9($("d[6=\'o\']").b()>0)$("#c").1c()}$("#v").8("")}}4 Y(){3 o=R($("d[6=\'o\']").b());3 r=$("d[6=\'x\']").b();9(2t(r)||r==\'\'||r<=0){$("d[6=\'x\']").b("1");A}9(o>0){3 c=R($("#c").7("C").8());r=R(r);9(r>c&&c>0){$("d[6=\'x\']").b(c)}e 9(c==0){$("d[6=\'x\']").b("1")}e{$("d[6=\'x\']").b(r)}}}4 W(){3 c=R($("#c").7("C").8());3 o=R($("d[6=\'o\']").b());3 f=$("X[6=\'g[]\']");3 1d=1y;3 k=$("d[6=\'k\']").b();9(f){T(i=0;i<f.15;i++){9($(f[i]).b()==\'0\'){1d=u;1D}}}9((o>0&&c==0)||!1d){$("*[6=\'Q\']").1w("h");$("*[6=\'Q\']").P("1E")}e{$("*[6=\'Q\']").1w("h");$("*[6=\'Q\']").l("h",4(){1I(k)});$("*[6=\'Q\']").H("1E")}}4 19(11){A 20+11}',62,155,'|||var|function||name|find|html|if||val|stock|input|else|attr_box|attr|click||content|goods_id|bind|rel|act|origin_stock|attr_stock_json|query|buy_number|li|goods_comment_form|false|attr_price|is_buy|number|ajaxurl|ajax|return|goods_comment_cnt|span|cfg|ajaxobj|attr_this|LANG|removeClass|this|error|success|url|attr_str|attr_name|data|addClass|buy_btn|parseInt|verify|for|point|bindurl|check_buy|select|check_number|showErr|bind_url|price|count_attr|init_comment_submit|show_stock|length|selected|parseFloat|option|format_price|icon_pics|stock_cfg|show|attr_selected|detail_nav|price_str|MESSAGE_CONTENT_EMPTY|current_price|attr_stock_express|KE|init_detail|init_comment_check|sub_nav|commit|info|comment_url|href|isEmpty|goods_main_pic|select_attr|re|new|unbind|rs|true|detail_cnt|hide|init_gallery|goods_icon_pic|break|btn_disabled|php|comment|ctl|add_cart|deal|rel_id|rel_table|shop|Object|add|catch|visible|roll_pic|prev|btnPrev|btnNext|next|change|blur|try|ex|price_unit|collect_goods|view_comment|APP_ROOT|POST|document|ig|pages|test|init_goods_comment|RegExp|in|pic_|detail_cnt_|parent|undefined|SELECTED_ATTR|buy_count|PLEASE_SELECT|json|status|dataType|jCarouselLite|type|ready|showSuccess|reload|location|textarea|isNaN|collect'.split('|'),0,{}))
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('$(22).7d(5(){$("#1M").1c(5(){6W()});$("#6l").p("1f",$(22).2e()+3J);$("3U").7i("E",5(){$(H).G("2F",6k)});$.2z($("3U"),5(i,n){c($(n).G("2F")==\'\')$(n).G("2F",6k)});$(20).6S(5(){$("#6l").p("1f",$(22).2e()+3J)});5Q();$(\'#2s-4A-1Q,#3C-2s-7n-4A\').1c(5(){5P($(H))});$("#7m").1i("1c",5(){$(H).1h();$("#7r").27();$("#7s").1h()});$(".7t").L("a").1i("1c",5(){7 k=z+"/Q.C?B=7q&x=7p&t="+$(H).G("1V");$.j({t:k,D:5(l){}})});$(\'#6f\').1i("1c",5(){7 1p=$(H).J().L("M[I=\'1p\']").m();7 1t=$(H).J().L("M[I=\'1t\']").m();7 k=z+"/Q.C?B=j&x=6f&1p="+1p+"&1t="+1t;$.j({t:k,D:5(R){$.1j(R)},E:5(q){}})});$(".7v").L("a").1i("2j",5(){$(H).4B()});$(".18").3f(5(){7 38=$(H).J().L(".7w");c(38.12>0){$(H).1g("x");7 l="<6p 2u=\'3t\' 4s=\'1R:"+($(H).1L().1R+7x)+"33; 1f:"+$(H).1L().1f+"33;\'>";2A(i=0;i<38.12;i++){l+="<u 4s=\'R-6h:"+$(38[i]).p("R-6h")+";\'>";c(i==0)l+="<2g 2u=\'7k\'></2g>";l+=$(38[i]).l()+"</u>"}l+="</6p>";$(H).6N(l);$(".3t").3f(5(){},5(){$(H).J().17("x");$(".3t").2v()})}},5(){$(H).17("x");$(".3t").2v()});6G();$("#4v").1i("2s",5(){c($("#1o").m()==\'\'){$.V(N[\'75\']);$("#1o").2j();S O}});$("#7a").1i("1c",5(){c($.16($("#1o").m())==\'\'||$.16($("#1o").m())==N[\'2U\']){$.V(N[\'2U\'],5(){$("#1o").2j()})}v $("#4v").2s()});c($.16($("#1o").m())==\'\'||$.16($("#1o").m())==N[\'2U\']){$("#1o").p("T","#6q")}v{$("#1o").p("T","#6x")}$("#1o").1i("2j",5(){$(H).p("T","#6x");c($.16($("#1o").m())==\'\'||$.16($("#1o").m())==N[\'2U\']){$("#1o").m("")}});$("#1o").1i("4B",5(){c($.16($("#1o").m())==\'\'||$.16($("#1o").m())==N[\'2U\']){$("#1o").m(N[\'2U\']);$(H).p("T","#6q")}});$("#4r").1i("1c",5(){7 1R=$(H).1L().1R;7 1f=$(H).1L().1f;$("#2W").p("1R",1R-2);$("#2W").p("1f",1f+28);$("#2W").27()});$("#2W").L("a").1i("1c",5(){$("#2W").1h();$("#4r").l($(H).l());$("#8q").m($(H).G("B"));$("#8b").m($(H).G("x"));$("#4v").G("2J",$(H).G("2J"))});$(22.3K).1c(5(e){c($(e.37).G("y")!=\'4r\'){$("#2W").1h()}c($(e.37).G("y")!=\'7G\'){$("#8a").1h()}c($(e.37).G("y")!=\'89\'){$("#85").1h()}c($(e.37).G("y")!=\'87\'){$("#8f").1h()}});54();65();c($(".1b-34-1a").12>0){$(".1b-34-1a").1i("1c",5(){g=$(H);7 y=g.G("2p");63(y,g,5(14){c(14.Y==1){g.1g("4y-4z-1l");g.l(N[\'64\'])}v{g.17("4y-4z-1l");g.l(N[\'8g\'])}})})}$("#8o").1i("1c",5(){7 g=$(H);c(46("您确定撤销订单？")){$.j({t:g.G("1V"),U:"&1C=1",F:"6A",W:"Z",31:O,D:5(14){c(14.Y==1m){20.1q.2a()}v c(14.Y==2){1K()}v{$.V(14.3e)}},E:5(q){}});S O}S O});4E();68();$(".8p a").1i("1c",5(){g=$(H);c(g.3m("4D")){g.J().J().J().L("u").2z(5(){c($(H).3m("27")){$(H).1g("1h")}});g.J().J().J().L("u").17("27");g.l(">>");g.17("4D");g.J().L("1x").17("60");g.J().L("1x").1g("5V")}v{g.J().J().J().L("u").2z(5(){c($(H).3m("1h")){$(H).1g("27")}});g.J().J().J().L("u").17("1h");g.l("<<");g.1g("4D");g.J().L("1x").1g("60");g.J().L("1x").17("5V")}});$(".83").5W(5(){$(".5S").27()}).7N(5(){$(".5S").1h()})});$.V=5(11,1T){$.1w.1s(11,{5T:\'7O\',1z:\'R\',1y:1m,69:O,6a:1m,1n:\'错误\',1d:6b,F:\'1B\',4b:1T})};$.1j=5(11,1T){$.1w.1s(11,{5T:\'7M\',1z:\'R\',1y:1m,69:O,6a:1m,1n:\'提示\',1d:6b,F:\'1B\',4b:1T})};$.7R=5(1A,12,3r){7 2H=$.16(1A).12;c(3r)2H=$.4w(1A);S 2H>=12};$.7S=5(1A,12,3r){7 2H=$.16(1A).12;c(3r)2H=$.4w(1A);S 2H<=12};$.4w=5(11){11=$.16(11);c(11=="")S 0;7 12=0;2A(7 i=0;i<11.12;i++){c(11.7T(i)>7V)12+=2;v 12++}S 12};$.7W=5(1A){c($.16(1A)!=\'\')S!3o($.16(1A));v S 1m};$.4H=5(1A){c($.16(1A)!=\'\')S/^\\d{6,}$/i.6V($.16(1A));v S 1m};$.4T=5(m){7 6Z=/^\\w+((-\\w+)|(\\.\\w+))*\\@[A-4K-4O-9]+((\\.|-)[A-4K-4O-9]+)*\\.[A-4K-4O-9]+$/;S 6Z.6V(m)};5 4p(F){7 k=z+"/4I.C?B=j&x=7U&F="+F;$.j({t:k,D:5(R){1q.2a()},E:5(q){}})}5 7Y(g,1D){c(1D!=\'\')$(g).J().L(".f-M-3C").l("<1x 2u=\'81\'>"+1D+"</1x>");v $(g).J().L(".f-M-3C").l("")}5 7K(g,1D){$(g).J().L(".f-M-3C").l("<1x 2u=\'7Q\'>"+1D+"</1x>")}5 7P(y,6I){7 2d=$(6I).m();7 k=z+"/Q.C?B=2Q&x=84&y="+y+"&2d="+2d;$.j({t:k,W:"Z",D:5(g){c(g.Y==1){$("#8l").l(g.l)}v{7 11=g.15.4l("|");7 1D=11[0];$.V(1D);$(".42").17("2i");c(11[2])$("41[2S*=\'3Z"+11[1]+"3B"+11[2]+"\']").1g("2i");v $(".3Y"+11[1]).1g("2i")}},E:5(q){}})}5 86(y){7 k=z+"/Q.C?B=2Q&x=7C&y="+y;$.j({t:k,W:"Z",D:5(g){1q.1V=7e},E:5(q){}})}5 78(){7 2D=$("M[I=\'2D\']").m();7 1O=$("M[I=\'2T\']").m();7 k=z+"/Q.C?B=2Q&x=3z&j=1&3l="+2D+"&1O="+1O;$.j({t:k,W:"Z",D:5(g){c(g.Y==1){1q.1V=6E}v{c(g.3a==1){$.1w.1s(g.l,{1z:\'R\',1y:O,1n:N[\'3h\'],1d:2b,F:\'1B\'})}v{7 11=g.15.4l("|");7 1D=11[0];$.V(1D);$(".42").17("2i");c(11[2])$("41[2S*=\'3Z"+11[1]+"3B"+11[2]+"\']").1g("2i");v $(".3Y"+11[1]).1g("2i")}}},E:5(q){}})}5 7F(){7 2D=$("M[I=\'2D\']").m();7 1O=$("M[I=\'2T\']").m();7 k=z+"/Q.C?B=7z&x=3z&j=1&3l="+2D+"&1O="+1O;$.j({t:k,W:"Z",D:5(g){c(g.Y==1){1q.1V=6E}v{c(g.3a==1){$.1w.1s(g.l,{1z:\'R\',1y:O,1n:N[\'3h\'],1d:2b,F:\'1B\'})}v{7 11=g.15.4l("|");7 1D=11[0];$.V(1D);$(".42").17("2i");c(11[2])$("41[2S*=\'3Z"+11[1]+"3B"+11[2]+"\']").1g("2i");v $(".3Y"+11[1]).1g("2i")}}},E:5(q){}})}5 72(6X){7 k=z+"/Q.C?B=j&x=72&y="+6X;$.j({t:k,D:5(l){$("#3I").l(l);47()},E:5(q){}})}5 47(){7 1P=$("#3I").L("2I[1A!=\'0\']");c(1P.12>0){7 21=$(1P[1P.12-1]).m()}v{7 21=0}7 k=z+"/Q.C?B=j&x=47&y="+21+"&2B="+$("M[I=\'y\']").m();$.j({t:k,D:5(l){$("#7D").l(l);3E()},E:5(q){}})}5 3E(){$("#1M").G("1U",1m);7 K=2n 2m();7 24=$("M[I=\'57\']:1W").m();c(!24){24=0}K.24=24;7 1P=$("#3I").L("2I[1A!=\'0\']");c(1P.12>0){7 21=$(1P[1P.12-1]).m()}v{7 21=0}K.21=21;7 1u=$("M[I=\'1u\']").m();c(!1u||$.16(1u)==\'\'){1u=0}K.1u=1u;c($("#3z-4X-5c").G("1W")){K.3v=1}v{K.3v=0}7 1p=$("M[I=\'1p\']").m();c(!1p){1p=\'\'}7 1t=$("M[I=\'1t\']").m();c(!1t){1t=\'\'}K.1p=1p;K.1t=1t;7 1E=$("M[I=\'1E\']:1W").m();c(!1E){1E=0}K.1E=1E;K.7y=$("M[I=\'1E\']:1W").G("2S");c(!3o(2B)&&2B>0)7 k=z+"/Q.C?B=j&x=5N&y="+2B;v 7 k=z+"/Q.C?B=j&x=3E";$.j({t:k,U:K,F:"13",W:"Z",D:5(U){$("#7h").l(U.l);$("M[I=\'1u\']").m(U.1u);c(U.5h==0){$("M[I=\'1E\']").G("1W",O)}$("#1M").G("1U",O)},E:5(q){}})}5 6W(){$("#1M").G("1U",1m);7 K=2n 2m();7 24=$("M[I=\'57\']:1W").m();c(!24){24=0}K.24=24;7 1P=$("#3I").L("2I[1A!=\'0\']");c(1P.12>0){7 21=$(1P[1P.12-1]).m()}v{7 21=0}K.21=21;7 1u=$("M[I=\'1u\']").m();c(!1u||$.16(1u)==\'\'){1u=0}K.1u=1u;c($("#3z-4X-5c").G("1W")){K.3v=1}v{K.3v=0}7 1p=$("M[I=\'1p\']").m();c(!1p){1p=\'\'}7 1t=$("M[I=\'1t\']").m();c(!1t){1t=\'\'}K.1p=1p;K.1t=1t;7 1E=$("M[I=\'1E\']:1W").m();c(!1E){1E=0}K.1E=1E;c(!3o(2B)&&2B>0)7 k=z+"/Q.C?B=j&x=5N&y="+2B;v 7 k=z+"/Q.C?B=j&x=3E";$.j({t:k,U:K,F:"13",W:"Z",D:5(U){c(U.7X==1){c(!U.5s||U.5s.82!=4){$.V(N[\'80\']);$("#1M").G("1U",O);S}c($.16($("M[I=\'7Z\']").m())==\'\'){$.V(N[\'7J\']);$("#1M").G("1U",O);S}c($.16($("M[I=\'7I\']").m())==\'\'){$.V(N[\'7L\']);$("#1M").G("1U",O);S}c($.16($("M[I=\'8k\']").m())==\'\'){$.V(N[\'8j\']);$("#1M").G("1U",O);S}c($.16($("M[I=\'1O\']").m())==\'\'){$.V(N[\'8i\']);$("#1M").G("1U",O);S}c(!$.4H($("M[I=\'1O\']").m())){$.V(N[\'52\']);$("#1M").G("1U",O);S}c(!U.8h){$.V(N[\'8m\']);$("#1M").G("1U",O);S}}c(U.5h!=0&&!U.8n){$.V("请选择支付方式");$("#1M").G("1U",O);S}$("#88").2s()},E:5(q){}})}5 4U(g){7 2T=$(g).J().L("M[I=\'2T\']").m();7 k=z+"/Q.C?B=j&x=4U&2T="+2T;$.j({t:k,W:"Z",D:5(g){c(g.Y){$.1j(g.15)}v $.V(g.15)},E:5(q){}})}$.8e=5(y){7 3Q=$(y).m();c(20.4t){20.4t.8d();7 5r=20.4t.5C("8c",3Q);c(5r===1m)2t(N.5A);v 2t(N.7c)}v c(7b.7f.7g("74")!=-1){20.1q=3Q}v c(20.5t){73{5t.76.7A.7B("7E")}7u(e){2t(N.7o)}7 3M=2w.44[\'@4a.40/53/7l;1\'].4k(2w.3S.4Y);c(!3M)S;7 3b=2w.44[\'@4a.40/53/79;1\'].4k(2w.3S.77);c(!3b)S;3b.7j(\'R/4W\');7 11=2n 2m();7 7H=2n 2m();7 11=2w.44["@4a.40/8S-a2;1"].4k(2w.3S.a3);7 4n=3Q;11.U=4n;3b.a4("R/4W",11,4n.12*2);7 5K=2w.3S.4Y;c(!3M)S O;3M.5C(3b,4u,5K.a1);2t(N.5A)}};5 a0(4f,4d){$.j({t:z+"/9X.C?4f="+4f+"&4d="+4d,U:"j=1",W:"Z",D:5(g){c(g.Y==2){20.1s(g.1D)}c(g.Y==1){$.1w.1s(g.1D,{1z:\'l\',1y:O,1n:N[\'9Y\'],1d:9Z,2x:a5,F:\'1B\'})}c(g.Y==0){$.V(g.1D)}}})}5 4p(F){7 k=z+"/Q.C?B=j&x=4p&F="+F;$.j({t:k,D:5(R){1q.2a()},E:5(q){}})}5 4R(F){7 k=z+"/Q.C?B=j&x=4R&F="+F;$.j({t:k,D:5(R){1q.2a()},E:5(q){}})}5 4Q(F){7 k=z+"/Q.C?B=j&x=4Q&F="+F;$.j({t:k,D:5(R){1q.2a()},E:5(q){}})}5 5f(F){7 k=z+"/4I.C?B=j&x=5f&F="+F;$.j({t:k,D:5(R){1q.2a()},E:5(q){}})}5 a6(y){7 k=z+"/Q.C?B=j&x=3R";$.j({t:k,W:"Z",F:"13",D:5(q){c(q.Y==0){1K()}v{5b(y)}},E:5(q){}})}5 5b(y,G){7 k=z+"/Q.C?B=2Q&x=ac&y="+y;c(G&&G!=\'\'){k+=G}v{4P=$("2I[I=\'G[]\']");2A(i=0;i<4P.12;i++){k+="&G[]="+$(4P[i]).m()}}7 2d=$("M[I=\'2d\']").m();c(2d)k+="&2d="+2d;$.j({t:k,W:"Z",D:5(g){c(g.3a==1){c($(".25-3p").p("2K")==\'5F\'){$(".25-3p,.25-2q").2v()}c(g.ad==1)$.1w.1s("<1x 2u=\'2Q-E\'>"+g.l+"</1x>",{1z:\'R\',1y:O,1n:N[\'ab\'],1d:2b,F:\'1B\'});v $.1w.1s(g.l,{1z:\'R\',1y:O,1n:N[\'aa\'],1d:2b,F:\'1B\'})}v c(g.3a==2){$.V(g.15)}v{c($(".25-3p").p("2K")==\'5F\'){$(".25-3p,.25-2q").2v()}$("#a7").l(2h(g.2d));$.1w.1s(g.l,{1z:\'R\',1y:O,1n:N[\'a8\'],1d:2b,F:\'1B\'})}},E:5(q){}})}5 a9(5l){7 k=z+"/Q.C?B=j&x=9W&y="+5l;$.j({t:k,W:"Z",D:5(g){c(g.3a==1){$.1w.1s(g.l,{1z:\'R\',1y:O,1n:N[\'3h\'],1d:2b,F:\'1B\'})}v{$.1j(g.15)}},E:5(q){}})}5 5o(){7 k=z+"/Q.C?B=2Q&x=5o";$.j({t:k,D:5(g){1q.1V=1q.1V},E:5(q){}})}5 9V(){$.1w.1s(z+"/Q.C?B=5H&x=5g",{1z:\'j\',1y:O,1n:N[\'9I\'],1d:5E,2x:3J,F:\'1B\'})}5 9J(){$.1w.1s(z+"/Q.C?B=5H&x=9K",{1z:\'j\',1y:O,1n:N[\'9H\'],1d:5E,2x:3J,F:\'1B\'})}5 5P(o){7 35=$("#2s-4A-R").m();c(35==\'\'){$.V(N.9G);S}c(!$.4T(35)){$.V(N.9D);S}7 k=z+"/4I.C?B=5g&x=9E&35="+35+"&j=1";$.j({t:k,W:"Z",D:5(g){c(g.Y==1){$.1j(N.9F);S}v{$.V(g.15);S}},E:5(q){}})}5 9L(3H,o){7 k=z+"/Q.C?B=j&x=2j&3H="+3H;$.j({t:k,W:"Z",D:5(g){c(g.1F==1){$(o).17("4F");$(o).17("4G");$(o).1g("4G");$(o).l(g.l)}c(g.1F==2){$(o).17("4F");$(o).17("4G");$(o).1g("4F");$(o).l(g.l)}c(g.1F==3){$.1j(g.l)}c(g.1F==4){1K()}},E:5(q){}})}5 5a(1I,1F,o){7 k=z+"/Q.C?B=j&x=5a&1F="+1F+"&1I="+1I;$.j({t:k,W:"Z",D:5(g){c(g.Y)$(o).L("1x").l(g.U);v $.V(g.U)},E:5(q){}})}5 9M(g){c($(g).L("*[I=\'3d\']").m()==\'\'){$.V(N.9S);$(g).L("*[I=\'3d\']").2j();S O}v{S 1m}}5 9T(y){7 k=z+"/1l.C?B=50&x=9U&y="+y;$.j({t:k,W:"Z",D:5(g){c(g.Y==1){$.1w.1s(g.l,{1z:\'R\',1y:O,1n:\'短信下载\',1d:2b,F:\'1B\'})}v{1K()}},E:5(q){}})}5 5k(y){7 K=2n 2m();K.y=y;K.5i=$("M[I=\'5i\']").m();K.55=$("2I[I=\'55\']").m();K.5d=$("2I[I=\'5d\']").m();K.5j=$("M[I=\'5j\']").m();K.4V=$("M[I=\'4V\']:1W").m();K.1O=$("M[I=\'1O\']").m();c(!$.4H(K.1O)||K.1O==\'\'){$.V(N[\'52\']);S}7 k=z+"/1l.C?B=50&x=5k";$.j({t:k,W:"Z",U:K,F:"13",D:5(g){c(g.Y==1){4L();$.1j(g.15)}v{$(".25-1n").l(N[\'3h\']);$(".25-3d").l(g.l)}},E:5(q){}})}5 9R(){$(".25-5p").1c()}5 5G(y){7 k=z+"/Q.C?B=j&x=3R";$.j({t:k,W:"Z",F:"13",D:5(q){c(q.Y==0){1K()}v{7 k=z+"/Q.C?B=j&x=5G&y="+y;$.1w.1s(k,{1z:\'j\',1y:O,1n:N[\'9Q\'],1d:2b,F:\'1B\'})}},E:5(q){}})}5 5B(y){7 k=z+"/Q.C?B=j&x=5B&y="+y;7 K=2n 2m();K.3d=$("23[I=\'af\']").m();$.j({t:k,W:"Z",U:K,F:"13",D:5(g){c(g.Y){$("#5O"+y).l(2h($("#5O"+y).l())+1);4L();$.1j(g.15);7 2f=$("M[I=\'2f\']");c(2f){3c($(2f).m(),$("#4g"))}}v{$.V(g.15)}},E:5(q){}})}5 4L(){$(".25-5p").1c()}5 9O(y){7 k=z+"/Q.C?B=j&x=9P&y="+y;$.j({t:k,W:"Z",F:"13",D:5(g){c(g.Y){$("#5n"+y).l(2h($("#5n"+y).l())+1);$.1j(g.15);7 2f=$("M[I=\'2f\']");c(2f){3c($(2f).m(),$("#4g"))}}v{7 k=z+"/Q.C?B=j&x=3R";$.j({t:k,W:"Z",F:"13",D:5(q){c(q.Y==0){1K()}v{$.1j(g.15)}},E:5(q){}})}},E:5(q){}})}5 ae(g){7 o=g;7 1F=$(o).G(\'1F\');7 5w=$(o).G(\'b\');7 5q=$(o).G(\'s\');7 5u=$(o).G(\'o\');7 w=$(o).G(\'w\');7 h=$(o).G(\'h\');c(1F==\'s\'){7 3A=0;c(w>5y){3A=5y}$(o).G(\'2F\',5w);$(o).G(\'1F\',\'b\');c(3A>0)$(o).G(\'1d\',3A);v $(o).5e(\'1d\');7 l=\'<2g><a 1V=\\"\'+5u+\'\\" 37=\\"aA\\">查看原图</a></2g>\'+$(o).J().l();$(o).J().l(l)}v{$(o).G(\'2F\',5q);$(o).G(\'1F\',\'s\');$(o).5e(\'1d\');$(o).J().L(\'2g\').2v()}}5 3c(k,2C){$.j({t:k,U:"j=1",F:"13",D:5(l){$(2C).l(l)},E:5(q){}})}5 az(y,g){c($(g).J().J().L(".3n").l()==\'\'){$(".3n").l("");7 k=z+"/Q.C?B=j&x=5J&y="+y;$.j({t:k,U:"j=1",F:"13",D:5(l){$(g).J().J().L(".3n").l(l)},E:5(q){}})}v $(g).J().J().L(".3n").l("")}5 ay(g){7 19=$(g).J().J().J();7 5M=$(g).J().L("3U");7 k=$(19).G("2J");7 59=$(19).L("#aC");7 23=$(19).L("23");c($.16(23.m())==\'\'){$.V("请输入分享内容");S}7 5z=$(19).L("M[I=\'ax\']");7 5x=$(19).L("M[I=\'aB\']");7 t=$(19).L("M[I=\'2f\']").m();7 K=$(19).3i()+"&j=1";$.j({t:k,W:"Z",U:K,F:"13",D:5(g){c(g.Y==0){$.V(g.15);S}$.1j(g.15);$(59).l("");$(5M).1c();$(19).L("M[I=\'3l\']").m("");$(23).m("");$(23).G("aD",0);$(5z).m("");$(5x).m("");$("M[I=\'5v\']").G("1W",O);$(".5v").1h();$(".av").17("al");$("M[I=\'1F[]\']").m("");c($("M[I=\'aw\']").G("1W")){7 3F=$(".3F");2A(i=0;i<3F.12;i++){5m(g.U,$(3F[i]).m())}}c(t)3c(t,$("#4g"))},E:5(q){}})}5 5m(1I,2r){7 k=z+"/Q.C?B=j&x=am&1I="+1I+"&2r="+2r;$.j({t:k,F:"13",D:5(U){},E:5(q){}})}5 ak(g){7 19=$(g).J().J().J();7 k=$(19).G("2J");7 23=$(19).L("23");7 1I=$(19).L("M[I=\'1I\']").m();7 t=z+"/Q.C?B=j&x=5J&y="+1I;7 K=$(19).3i()+"&j=1&4Z=1";$.j({t:k,W:"Z",U:K,F:"13",D:5(q){c(q.Y){$("#5L"+1I).l(2h($("#5L"+1I).l())+1);$.1j(q.15);3c(t,$(g).J().J().J().J())}v $.V(q.15)},E:5(q){}})}5 4S(k,5I){c(5I){7 5D=z+"/Q.C?B=j&x=3R";$.j({t:5D,W:"Z",F:"13",D:5(q){c(q.Y==0){1K(5(){$("#3L").l("正在加载评论");$.j({t:k,F:"13",D:5(l){$("#3L").l(l)},E:5(q){}})})}},E:5(q){}})}v{$("#3L").l("正在加载评论");$.j({t:k,F:"13",D:5(l){$("#3L").l(l)},E:5(q){}})}}5 aj(g){7 19=$(g).J().J().J();7 k=$(19).G("2J");7 23=$(19).L("23");7 1I=$(19).L("M[I=\'1I\']").m();7 43=$("#43").m();7 K=$(19).3i()+"&j=1&4Z=1";$.j({t:k,W:"Z",U:K,F:"13",D:5(q){c(q.Y){$("#51").l(2h($("#51").l())+1);$.1j(q.15);4S(43)}v $.V(q.15)},E:5(q){}})}5 56(y,2C){c(46(N.ag)){7 k=z+"/Q.C?B=j&x=56&y="+y;$.j({t:k,W:"Z",F:"13",D:5(q){c(q.Y){$(2C).2v()}v $.V(q.15)},E:5(q){}})}}5 58(y,2C){c(46(N.ah)){7 k=z+"/Q.C?B=j&x=58&y="+y;$.j({t:k,W:"Z",F:"13",D:5(q){c(q.Y){$(2C).2v()}v $.V(q.15)},E:5(q){}})}}5 54(){$(".6U").1i("5W",5(){$(".ai").1h();$(".6U").17("x");7 y=$(H).G("2S");$("#an"+y).27();$(H).1g("x");$(H).J().17("ao");$(H).J().17("at");$(H).J().17("au");$(H).J().17("as");$(H).J().17("8r");$(H).J().17("ar");$(H).J().1g("r"+$(H).G("ap"))})}5 aq(3j){7 k=z+"/Q.C?B=j&x=9N&y="+3j;$.j({t:k,W:"Z",F:"13",D:5(q){c(q.Y==1){6H(3j)}v c(q.Y==2){$.1j(q.15)}v{1K()}},E:5(q){}})}5 1K(1T){$.1w.1s(z+"/Q.C?B=j&x=1K",{1z:\'j\',1y:O,1n:N[\'3h\'],1d:2b,F:\'1B\',4b:1T})}5 6H(3j){7 k=z+"/Q.C?B=j&x=9B&y="+3j;$.1w.1s(k,{1z:\'j\',1y:O,1n:N[\'8Q\'],1d:8R,F:\'1B\'})}5 6K(){7 4j=$(".8P");2A(7 i=0;i<4j.12;i++){7 3N=$(4j[i]);c($(3N).L("M").m()==\'\'){$.V(N[\'8O\']+$(3N).L("1x").l());$(3N).L("M").2j();S}}7 K=$("19[I=\'8L\']").3i();7 k=z+"/Q.C?B=j&x=6K";$.j({t:k,W:"Z",F:"13",U:K,D:5(q){c(q.Y==1){$.1j(q.15)}v c(q.Y==2){2t(q.15);1q.2a()}v{1K()}},E:5(q){}})}7 3s;6P=(5(){7 26;7 4h="6P";7 2L,36;7 49=5(){3s=8M(5(){26.1h()},8N)};7 4o=5(){6J(3s)};7 6Q=5(){26=$("<2g y=\'"+4h+36+"\' 2u=\'6O\'><2g 2u=\'4e\'>正在加载，请稍后...</2g></2g>");$("3K").6N(26)};7 6L=5(){7 1L=2L.1L();7 3W=0;c(1L.1R+6M+2L.1d()>$(22).1d()){3W=1L.1R-6M}v{3W=1L.1R+2L.1d()}26.p({1f:1L.1f,1R:3W})};7 4i=5(){6L();26.27()};7 6C=5(){$(".6O").1h();26=$("#"+4h+36);c(!26.12){6Q();4i();26.4e(z+"/Q.C?B=j&x=9C&3H="+36)}v{4i()};26.3f(4o,49);2L.3f(4o,49)};S{4e:5(e,y){6J(3s);c(e===6D||y===6D||3o(y)||y<1){S O};2L=$(e);36=y;6C()}}})();5 6B(6F){7 k=z+"/Q.C?B=j&x=6B&8T="+6F;$.j({t:k,F:"13",W:"Z",D:5(U){2t(U.15);1q.2a()},E:5(q){}})}5 6T(2r,F){7 k=z+"/Q.C?B=j&x=6T&2r="+2r+"&F="+F;$.j({t:k,F:"13",D:5(U){$("#8Z"+2r+"3B"+F).l(U)},E:5(q){}})}5 90(){c($.16($("*[I=\'3g\']").m())==\'\'){$.V("请输入达人称号");S}v c($.16($("*[I=\'3g\']").m()).12>10){$.V("达人称号太长");S}c($.16($("*[I=\'3q\']").m())==\'\'){$.V("请输入申请理由");S}7 K=2n 2m();K.3g=$.16($("*[I=\'3g\']").m());K.3q=$.16($("*[I=\'3q\']").m());7 k=z+"/Q.C?B=8Y&x=8X";$.j({t:k,W:"Z",U:K,F:"13",D:5(q){c(q.Y==1){$.1j("申请成功，请等待管理员审核");$("*[I=\'3g\']").m("");$("*[I=\'3q\']").m("")}v c(q.Y==2){$.V(q.15)}v{1K()}},E:5(q){}})}5 6G(){$("#3G-3w-19").1i("2s",5(){7 k=$(H).G("2J");7 K=$(H).3i();$.j({t:k,W:"Z",U:K,F:"13",D:5(q){c(q.Y==1){$("#3G-3w-19").L("*[I=\'1n\']").m("");$("#3G-3w-19").L("*[I=\'3d\']").m("");$("#3G-3w-19").L("*[I=\'3l\']").m("");$.1j(q.15,5(){1q.2a()})}v{$.V(q.15)}},E:5(q){}});S O})}5 5Q(){$(20).6S(5(){7 6Y=$(22).2e()+$(20).2x()-70;c($.3k.71&&$.3k.6R=="6.0"){$("#1v").p("1f",6Y);c($(22).2e()>0){$("#1v").p("3D","6z")}v{$("#1v").p("3D","66")}}v{c($(22).2e()>0){c($("#1v").p("2K")=="X")$("#1v").8U()}v{c($("#1v").p("2K")!="X")$("#1v").8V()}}});$("#1v").1i("1c",5(){$("l,3K").8W({2e:0},"8K","8J",5(){})});7 1f=$(22).2e()+$(20).2x()-70;c($.3k.71&&$.3k.6R=="6.0"){$("#1v").p("1f",1f);c($(22).2e()>0){$("#1v").p("3D","6z")}v{$("#1v").p("3D","66")}}v{c($(22).2e()>0){c($("#1v").p("2K")=="X")$("#1v").27()}v{c($("#1v").p("2K")!="X")$("#1v").1h()}}}5 8x(){7 k=z+"/Q.C?B=j&x=8y";$.j({t:k,W:"R",F:"13",D:5(4x){c(4x!="")1q.1V=4x},E:5(q){}})}5 65(){c($(".1b-34-1a").12>0){7 2E=0;$(".1b-34-1a").2z(5(){2E+=","+$(H).G("2p")});$.j({t:z+"/1l.C?B=1r&x=8z&67="+2E,F:"13",W:"Z",31:O,D:5(14){c(14.Y==1m){2A(i=0;i<14.U.12;i++){$(".1b-34-1a").2z(5(){c(2h($(H).G("2p"))==2h(14.U[i].29)){$(H).1g("4y-4z-1l");$(H).l(N[\'64\'])}})}}},E:5(o){}})}}5 63(y,g,1T){$.j({t:z+"/1l.C?B=1r&x=8w&y="+y,F:"13",W:"Z",31:O,D:5(14){c(14.Y==O){$.V(14.3e)}v{c(1T!=4u){1T.61(H,14)}}}})}5 4E(){c($(".1b-1k-1a").12>0){7 2E=0;$(".1b-1k-1a").2z(5(){2E+=","+$(H).G("2p")});$.j({t:z+"/1l.C?B=1r&x=8v&67="+2E,F:"13",W:"Z",31:O,D:5(14){c(14.Y==1m){2A(i=0;i<14.U.12;i++){$(".1b-1k-1a").2z(5(){c(2h($(H).G("2p"))==2h(14.U[i].29)){$(H).L("1x").l(14.U[i].8s)}})}}},E:5(o){}})}}7 2G=O;5 68(){$(".1b-1k-1a").1i("1c",5(){g=$(H);y=g.G("2p");c(g.3m("3T")){2G=1m;$(".1b-1k-1a").17("3T");$("#1b-1a-1k-1S").1h()}v{2G=O;$(".1b-1k-1a").17("3T");g.1g("3T");$("#1b-1a-1k-1S .2q").l(\'<3U 2F="\'+z+\'/8t/8u.3X" 4s="8A:8B;"/>\');$("#1b-1a-1k-1S").27();$("#1b-1a-1k-1S").p({"1f":g.1L().1f,"1R":(g.1L().1R-8)+"33"});$("#1b-1a-1k-1S .2q").p({"1f":-($("#1b-1a-1k-1S .2q").2x()/2)+"33"});62(y,5(14){c(14.Y==1m){$("#1b-1a-1k-1S .2q").l(14.l);$("#1b-1a-1k-1S .2q").p({1f:-($("#1b-1a-1k-1S .2q").2x()/2)+"33"});5U();S O}})}S O});$(\'#1b-1a-1k-1S\').1c(5(){2G=1m});$("3K").1i("1c",5(){c(!2G)$(\'#1b-1a-1k-1S\').1h();2G=O})}5 62(y,1T){$.j({t:z+"/1l.C?B=1r&x=8H&y="+y,F:"13",W:"Z",31:O,D:5(14){c(1T!=4u){1T.61(H,14)}},E:5(o){}})}5 5U(){$("#2M").2j(5(){c($(H).m()==N[\'3P\']||$(H).m()==""){$(H).m("");$(H).p({"T":"#8I"})}});$("#2M").4B(5(){c($(H).m()==N[\'3P\']||$(H).m()==""){$(H).m(N[\'3P\']);$(H).p({"T":"#8G"})}});$("#8F").1i("1c",5(){c($("#2M").m()==N[\'3P\']||$("#2M").m()==""){2t(N[\'8C\'])}v{7 m=$("#2M").m();7 29=$("#2M").G("2p");4C(29,m)}});$("a.8D").1c(5(){7 g=$(H);7 29=g.G("2p");7 m="";c(g.L("1x.5R").12>0){m=g.L("1x.5R").l()}v{m=g.l()}4C(29,m);S O})}5 4C(29,m){7 K=2n 2m();K.29=29;K.m=m;$.j({t:z+"/1l.C?B=1r&x=8E",U:K,F:\'6A\',W:"Z",31:O,D:5(14){c(14.Y==1m){$("#1b-1a-1k-1S").1h();$.1j(14.3e);4E();S O}v{c(14.Y==2){$.V(14.3e,1K())}v{$.V(14.3e)}}},E:5(o){}})}5 91(2Z){7 2Z=2Z;$("#1J u.18").p({"P":"X"});$("#1J u ").p({"P":"X"});$("#1J u.18 a").p({"T":"#3O"});$("#1J u a").p({"T":"#3O"});$("#1J u a:3f").p({"T":"#3O"});$("#1J u.5Z"+2Z).p({"P-1Q":"X","P":"#3O","1G-1X":"1Y"});$("#1J u.5Z"+2Z+" a").p({"T":"#1Z"});$.j({t:z+"/1l.C?B=92&x=5Y&1C=1&9q="+2Z,D:5(R){$("#5Y").l(R)},E:5(o){}})}5 9r(2o){7 2o=2o;$("#1e u.18").p({"P":"X"});$("#1e u ").p({"P":"X"});$("#1e u.18 a").p({"T":"#2c"});$("#1e u a").p({"T":"#2c"});$("#1e u.2k"+2o).p({"P-1Q":"X","P":"#2c","1G-1X":"1Y"});$("#1e u.2k"+2o+" a").p({"T":"#1Z"});$.j({t:z+"/1l.C?B=2o&x=5X&1C=1&2o="+2o,D:5(R){$("#5X").l(R)},E:5(o){}})}5 9p(30){7 30=30;$("#2R u.18").p({"P":"X"});$("#2R u ").p({"P":"X"});$("#2R u.18 a").p({"T":"#4J"});$("#2R u a").p({"T":"#4J"});$("#2R u.6c"+30).p({"P-1Q":"X","P":"#4J","1G-1X":"1Y"});$("#2R u.6c"+30+" a").p({"T":"#1Z"});$.j({t:z+"/1l.C?B=1H&x=6d&1C=1&9o="+30,D:5(R){$("#6d").l(R)},E:5(o){}})}5 9l(2y){7 2y=2y;$("#2O u.18").p({"P":"X"});$("#2O u ").p({"P":"X"});$("#2O u.18 a").p({"T":"#2P"});$("#2O u a").p({"T":"#2P"});$("#2O u.6t"+2y).p({"P-1Q":"X","P":"#2P","1G-1X":"1Y"});$("#2O u.6t"+2y+" a").p({"T":"#1Z"});$.j({t:z+"/1l.C?B=1H&x=9m&1C=1&6s="+2y,D:5(e){$("#9n a").G("1V","/6u/9s-"+e)},E:5(o){}});$.j({t:z+"/1l.C?B=1H&x=6r&1C=1&6s="+2y,D:5(R){$("#6r").l(R)},E:5(o){}})}5 9t(1H){7 1H=1H;$("#1e u.18").p({"P":"X"});$("#1e u ").p({"P":"X"});$("#1e u.18 a").p({"T":"#2c"});$("#1e u a").p({"T":"#2c"});$("#1e u.2k"+1H).p({"P-1Q":"X","P":"#2c","1G-1X":"1Y"});$("#1e u.2k"+1H+" a").p({"T":"#1Z"});$.j({t:z+"/1l.C?B=1H&x=9z&1C=1&6v="+1H,D:5(e){$("#9A a").G("1V","9y://"+e+".9x.9u.9v/6u")},E:5(o){}});$.j({t:z+"/1l.C?B=1H&x=6y&1C=1&6v="+1H,D:5(R){$("#6y").l(R)},E:5(o){}})}5 9w(2N){7 2N=2N;$("#1e u.18").p({"P":"X"});$("#1e u ").p({"P":"X"});$("#1e u.18 a").p({"T":"#2c"});$("#1e u a").p({"T":"#2c"});$("#1e u.2k"+2N).p({"P-1Q":"X","P":"#2c","1G-1X":"1Y"});$("#1e u.2k"+2N+" a").p({"T":"#1Z"});$.j({t:z+"/1r.C?B=1r&x=45&1C=1&9k="+2N,D:5(R){$("#45").l(R)},E:5(o){}})}5 9j(e){7 3x=e;$("#1J u.18").p({"P":"X"});$("#1J u ").p({"P":"X"});$("#1J u.18 a").p({"T":"#2P"});$("#1J u a").p({"T":"#2P"});$("#1J u.3V"+3x).p({"P-1Q":"X","P":"#2P","1G-1X":"1Y"});$("#1J u.3V"+3x+" a").p({"T":"#1Z"});$.j({t:z+"/1r.C?B=1r&x=6w&1C=1&98="+3x,D:5(R){$("#6w").l(R)},E:5(o){}})}5 99(e){7 3u=e;$("#32 u.18").p({"P":"X"});$("#32 u ").p({"P":"X"});$("#32 u.18 a").p({"T":"4N(4M,4q, 39)"});$("#32 u a").p({"T":"4N(4M,4q, 39)"});$("#32 u.3V"+3u).p({"P-1Q":"X","P":"4N(4M,4q, 39)","1G-1X":"1Y"});$("#32 u.3V"+3u+" a").p({"T":"#1Z"});7 k=z+"/Q.C?B=1r&x=6o&97="+3u;$.j({t:k,D:5(g){$("#6o").l(g)},E:5(q){}})}5 96(e){7 2l=e;$("#1N u.18").p({"P":"X"});$("#1N u ").p({"P":"X"});$("#1N u.18 a").p({"T":"#2Y"});$("#1N u a").p({"T":"#2Y"});$("#1N u.3y"+2l).p({"P-1Q":"X","P":"#2Y","1G-1X":"1Y"});$("#1N u.3y"+2l+" a").p({"T":"#1Z"});$.j({t:z+"/1r.C?B=1r&x=4c&1C=1&6g="+2l,D:5(R){$("#4c").l(R)},E:5(o){}})}5 93(e){7 2l=e;$("#1N u.18").p({"P":"X"});$("#1N u ").p({"P":"X"});$("#1N u.18 a").p({"T":"#4m"});$("#1N u a").p({"T":"#4m"});$("#1N u.3y"+2l).p({"P-1Q":"X","P":"#4m","1G-1X":"1Y"});$("#1N u.3y"+2l+" a").p({"T":"#1Z"});$.j({t:z+"/1r.C?B=1r&x=94&1C=1&6g="+2l,D:5(R){$("#4c").l(R)},E:5(o){}})}5 95(2X){7 2X=2X;$("#2V u.18").p({"P":"X"});$("#2V u ").p({"P":"X"});$("#2V u.18 a").p({"T":"#2Y"});$("#2V u a").p({"T":"#2Y"});$("#2V u.2k"+2X).p({"P-1Q":"X","P":"#2Y","1G-1X":"1Y"});$("#2V u.2k"+2X+" a").p({"T":"#1Z"});$.j({t:z+"/1l.C?B=1H&x=9a&1C=1&9b="+2X,D:5(R){$("#9h").l(R)},E:5(o){}})}5 9i(o){48=$(o).G("2S");$("#1e u ").p({P:"t(./6i/6j/6n/6m/9g.3X) 0 6e","1G-1f":"6e 9f #9c"});$("#1e u.18").p({P:"t(./6i/6j/6n/6m/9d.3X) 0 0","1G":"X"});$.j({t:z+"/1r.C?B=1r&x=9e&48="+48+"&1C=1",D:5(R){$("#45").l(R)},E:5(o){}})}',62,660,'|||||function||var|||||if||||obj|||ajax|ajaxurl|html|val|||css|ajaxobj|||url|li|else||act|id|APP_ROOT||ctl|php|success|error|type|attr|this|name|parent|query|find|input|LANG|false|background|shop|text|return|color|data|showErr|dataType|none|status|json||str|length|POST|result|info|trim|removeClass|first|form|STORE|FW|click|width|index_purpose|top|addClass|hide|bind|showSuccess|IMPRESSION|store|true|title|header_kw|ecvsn|location|index|open|ecvpassword|account_money|gotop|weeboxs|span|showButton|contentType|value|wee|is_ajax|msg|payment|tag|border|farm|topic_id|index_purnj|ajax_login|offset|order_done|index_pudp|mobile|select_last_node|image|left|BOX|func|disabled|href|checked|radius|3px|fff|window|region_id|document|textarea|delivery_id|dialog|cardDiv|show||sid|reload|570|f9af46|number|scrollTop|ajax_url|div|parseInt|cart_warn|focus|p_|special|Object|new|farmhouse|dataid|box|class_name|submit|alert|class|remove|Components|height|zhuti|each|for|order_id|dom|verify_code|sids|src|divClicked|strLength|select|action|display|qObj|sendImpInput|purpose|index_zhuti|23b6d8|cart|index_fenlei|rel|lottery_mobile|HEAD_KEYWORD_EMPTY_TIP|dj_pose|dropdown|month_yue|ae6cbf|rmcd|caizhai|cache|index_purnjs|px|FAV|email|userId|target|sub_cate||open_win|trans|ajax_load_page|content|message|hover|daren_title|PLEASE_LOGIN_FIRST|serialize|event_id|browser|verify|hasClass|col_item_reply_box|isNaN|mask|reason|isByte|timer|toggle|line|all_account_money|add|njtore|s_|check|img_width|_|tip|visibility|count_buy_total|syn_class|consult|uid|cart_consignee|200|body|topic_page_reply|clip|row|00abd2|send_imp_score|txt|check_login_status|interfaces|cur|img|n_|of_left|gif|deal_|cart_|org|tr|deal_cart_row|load_url|classes|ajax_purpose_store|confirm|load_delivery|i_type|mout|mozilla|onclose|ajax_special_store|express_id|load|express_sn|col_list|userCardStr|showUserCard|submit_rows|createInstance|split|9bc626|copytext|mover|set_sort|159|select_search_type|style|clipboardData|null|header_search_box|getStringLength|jumpurl|had|fav|mail|blur|SendImpVal|cur_view|store_impression_count|add_focus|remove_focus|checkMobilePhone|tuan|75bf46|Za|close_pop|135|RGB|z0|attrs|set_event_sort|set_store_sort|load_topic_replys|checkEmail|get_verify_code|is_private_room|unicode|all|nsIClipboard|no_verify|fdetail|reply_count|FILL_CORRECT_MOBILE_PHONE|widget|init_index_store|date_time_h|delete_topic|delivery|delete_topic_reply|img_box|vote_topic|add_cart|money|date_time_m|removeAttr|switch_style|subscribe|pay_price|date_time|order_count|send_sms|goods_id|syn_topic_to_weibo|topic_fav_|clear_cart|close|s_src|judge|region_info|netscape|o_src|other_tag|b_src|groupdatabox|525|groupbox|JS_COPY_SUCCESS|do_relay_topic|setData|ajaxurl_ck|420|block|relay_topic|sms|checklogin|load_reply_col_form|clipid|topic_reply_|verify_img|count_order_total|topic_relay_|submit_mail|init_gotop|res_impress_in|song_zhush|boxid|bindImpInput|char_corr|mouseover|ajax_farmhouse_store|ajax_rmcdc_store|city_|char_cort|call|getImpResult|storeFav|had_fav_store|checkstoreFav|hidden|ids|load_impression_all|showCancel|showOk|250|czfl_|ajax_farm_caizhai|1px|verify_ecv|special_id|indent|app|Tpl|ERROR_IMG|vote|images|fanwe|ajax_line_store|ul|bbbbbb|ajax_farm_zhuti|zhuti_id|zht_|farmlist|farm_id|ajax_njtore_store|404040|ajax_farm_store|visible|post|set_syn|loadCard|undefined|CART_CHECK_URL|syn_field|submit_message|show_event_submit|htmlobj|clearTimeout|do_event_submit|resetXY|230|append|nameCard|userCard|createLoadDiv|version|scroll|load_api_url|index_store_item|test|submit_buy|consignee_id|s_top|reg||msie|load_consignee|try|Opera|INPUT_KW_PLEASE|security|nsITransferable|submit_cart|transferable|search_btn|navigator|JS_COPY_NOT_SUCCESS|ready|CART_URL|userAgent|indexOf|cart_total|one|addDataFlavor|hide_white|clipboard|modify_bind|deal|JS_NO_ALLOW|go|link|lottery_mobile_input|lottery_mobile_word|flink|catch|main_nav|subcate|173|bank_id|mb_cart|PrivilegeManager|enablePrivilege|delcart|cart_delivery|UniversalXPConnect|mb_submit_cart|bcate_box|len|address|FILL_CORRECT_CONSIGNEE|formError|FILL_CORRECT_ADDRESS|fanwe_success_box|mouseout|fanwe_error_box|modify_cart|form_err|minLength|maxLength|charCodeAt|set_sort_idx|255|checkNumber|is_delivery|formSuccess|consignee|FILL_CORRECT_CONSIGNEE_ADDRESS|form_success|region_level|song|modifycart|scate_box_drop_down|del_cart|area_box|cart_form|scate_box|bcate_box_drop_down|search_act|Text|clearData|copyText|area_box_drop_down|fav_store|delivery_info|FILL_MOBILE_PHONE|FILL_CORRECT_ZIP|zip|cart_list|PLEASE_SELECT_DELIVERY|payment_info|bookOrderCancel|res_sch_link_more|search_ctl|r4|number_count|public|loading|loadimpressioncount|addfav|skip_user_profile|gopreview|checkfav|padding|10px|please_send_imp_score|res_impress|impression|sendImpInputBtn|A9A9A9|loadimpressionall|000|swing|fast|event_submit_form|setTimeout|500|PLEASE_INPUT|event_submit_row|EVENT_SUBMIT|370|supports|field|fadeIn|fadeOut|animate|submit_daren|daren|api_|daren_submit|load_rmcdc_store|fishing|special_store|main_special_store|load_yuefen_store|load_special_store|re_id|njtore_id|load_line_store|ajax_month_store|month_id|D1D1D1|i_first|ajax_hot_store|solid|i_li|ajax_yuefen_store|load_hot_store|load_njtore_store|purpose_id|load_farm_zhuti|ajax_gengduo_zhuti|zhuti_gengduo|caizhai_id|load_farm_caizhai|rmcd_id|load_farmhouselx_store|zht|load_farm_store|com|cn|load_purpose_store|01nz|http|ajax_gengduo_chengshi|chengshi_gengduo|submit_event|usercard|EMAIL_FORMAT_ERROR_TIP|addmail|SUBSCRIBE_SUCCESS|EMAIL_EMPTY_TIP|SMS_UNSUBSCRIBE|SMS_SUBSCRIBE|unsubmit_sms|unsubscribe|focus_user|check_content|check_event|fav_topic|do_fav_topic|RELAY_TOPIC|closeCouponSms|MESSAGE_CONTENT_EMPTY|sms_download|load_sms|submit_sms|collect|express|TRACK_EXPRESS|550|track_express|kGlobalClipboard|string|nsISupportsString|setTransferData|280|add_score|cart_count|ADDCART_SUCCESS|collect_goods|SELECT_AND_ADDCART|ADD_CART_ERR|addcart|err|zoom|relay_content|CONFIRM_DELETE_TOPIC|CONFIRM_DELETE_RELAY|index_store_detail_box|ajax_submit_reply_form_topic_page|ajax_submit_reply_form|tag_item_c|syn_to_weibo|index_store_detail_box_|r0|idx|event_submit|r5|r3|r1|r2|tag_item|syn_weibo|group|ajax_submit_form|reply_topic|_blank|group_data|image_box|position'.split('|'),0,{}))
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('3 S(0){$.k.i(a+"/9.8?7=j&6=m&n=s&l=x&0="+0,{f:\'4\',h:d,e:"推荐点评",g:b,5:\'c\'})}3 O(0){$.k.i(a+"/9.8?7=j&6=m&n=s&l=p&0="+0,{f:\'4\',h:d,e:"删除点评",g:b,5:\'c\'})}3 Y(0){$.k.i(a+"/9.8?7=j&6=m&n=s&l=u&0="+0,{f:\'4\',h:d,e:"删除点评回应",g:b,5:\'c\'})}3 W(0){$.k.i(a+"/9.8?7=j&6=m&n=y&l=p&0="+0,{f:\'4\',h:d,e:"删除主题",g:b,5:\'c\'})}3 V(0){$.k.i(a+"/9.8?7=j&6=m&n=y&l=u&0="+0,{f:\'4\',h:d,e:"删除主题回应",g:b,5:\'c\'})}3 X(0){$.k.i(a+"/9.8?7=j&6=m&n=q&l=p&0="+0,{f:\'4\',h:d,e:"删除主题",g:b,5:\'c\'})}3 T(0){$.k.i(a+"/9.8?7=j&6=m&n=q&l=u&0="+0,{f:\'4\',h:d,e:"删除主题回应",g:b,5:\'c\'})}3 P(0){$.k.i(a+"/9.8?7=j&6=m&n=q&l=x&0="+0,{f:\'4\',h:d,e:"推荐主题",g:b,5:\'c\'})}3 Q(0){$.k.i(a+"/9.8?7=j&6=m&n=q&l=R&0="+0,{f:\'4\',h:d,e:"置顶主题",g:b,5:\'c\'})}3 U(0){$.k.i(a+"/9.8?7=j&6=16&0="+0,{f:\'4\',h:d,e:"编辑小组说明",g:b,5:\'c\'})}3 19(0){$.k.i(a+"/9.8?7=j&6=m&n=1a&l=p&0="+0,{f:\'4\',h:d,e:"删除留言",g:b,5:\'c\'})}3 12(){t L=$("w[A=\'z\']").13();t r=$("w[A=\'z\']").1b("14");$.4({J:r,15:L,5:"K",D:"C",B:3(o){E(o.F==1)I.N();H $.10(o.G)},M:3(v){}})}3 11(){t r=a+"/9.8?7=4&6=17";$.4({J:r,5:"K",D:"C",B:3(o){E(o.F==2){Z()}H{$.18(o.G,3(){I.N()})}},M:3(v){}})}',62,74,'id|||function|ajax|type|act|ctl|php|shop|APP_ROOT|570|wee|false|title|contentType|width|showButton|open|op|weeboxs|a_name|index|m_name||del|group|ajaxurl|dp|var|replydel|ajaxobj|form|setbest|topic|opform|name|success|json|dataType|if|status|info|else|location|url|POST|query|error|reload|op_dp_del|op_group_setbest|op_group_settop|settop|op_dp_setbest|op_group_replydel|op_group_setmemo|op_topic_replydel|op_topic_del|op_group_del|op_dp_replydel|ajax_login|showErr|user_sign|do_submit_opform|serialize|action|data|setmemo|signin|showSuccess|op_msg_del|msg|attr'.split('|'),0,{}))
