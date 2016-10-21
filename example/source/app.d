module app;

import std.conv;
import std.process;
import vibe.d;

shared static this()
{
    auto settings = new HTTPServerSettings;
    settings.port = environment [ "PORT" ].to!ushort;
    settings.bindAddresses = ["::1", "127.0.0.1"];
    listenHTTP(settings, &hello);
    logInfo("Sleep.");
}
