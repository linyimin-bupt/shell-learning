## A brief Introduction to Regular Expressions

An expression is a string of characters.Thoese characters having an interpretation above and beyond their literal meaning are called *metacharaters*.

A Regular Expression contains one or more of the following:

- A character set.These are the characters retaining their literal meaning.

- An anchor.These designate (anchor) the position in the line of the text that the RE is to match.

- Modifier.These expand or narrow (modify) the range of text the RE is to match.

The main uses for Regualr Expression are text searches and string manipulation.An RE matches a single character or a set of characters --- a  string or a part of string.

- The asterisk ``*` matches any number of repeats of the character string or RE preceding it, including zero instances.

- The dot `.` matches any one character, except a newline.

- The caret `^` matches the beginning of a line, but sometimes,depending on the context,negates the meaning of a set of characters in an RE.