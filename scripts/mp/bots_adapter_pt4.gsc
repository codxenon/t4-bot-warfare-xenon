init()
{
	level.bot_builtins[ "printconsole" ] = ::do_printconsole;
	level.bot_builtins[ "fileexists" ] = ::do_fileexists;
	level.bot_builtins[ "botaction" ] = ::do_botaction;
	level.bot_builtins[ "botstop" ] = ::do_botstop;
	level.bot_builtins[ "botmovement" ] = ::do_botmovement;
	level.bot_builtins[ "botmeleeparams" ] = ::do_botmeleeparams;
	level.bot_builtins[ "botangles" ] = ::do_botangles;
	level.bot_builtins[ "isbot" ] = ::do_isbot;
	level.bot_builtins[ "fs_fopen" ] = ::do_fs_fopen;
	level.bot_builtins[ "fs_fclose" ] = ::do_fs_fclose;
	level.bot_builtins[ "fs_readline" ] = ::do_fs_readline;
	level.bot_builtins[ "fs_writeline" ] = ::do_fs_writeline;
	level.bot_builtins[ "cmdexec" ] = ::do_cmdexec;
	level.bot_builtins[ "ishost" ] = ::do_ishost;
}

do_cmdexec( a )
{
	cmdexec( a );
}

do_ishost()
{
	return self ishost();
}

do_printconsole( s )
{
	printf( s );
}

do_fileexists( file )
{
	file = "scriptdata/" + file;
	return fs_testfile( file );
}

do_botaction( action )
{
	self botaction( action );
}

do_botstop()
{
	self botstop();
}

do_botmovement( forward, right )
{
	self botmovement( forward, right );
}

do_botmeleeparams( yaw, dist )
{
	self botmeleeparams( yaw, dist );
}

do_botangles( angles )
{
	self botangles( angles );
}

do_isbot()
{
	return self isbot();
}

do_fs_fopen( file, mode )
{
	file = "scriptdata/" + file;
	return fs_fopen( file, mode );
}

do_fs_fclose( fh )
{
	fs_fclose( fh );
}

do_fs_readline( fh )
{
	return fs_readline( fh );
}

do_fs_writeline( fh, contents )
{
	fs_writeline( fh, contents );
}
