.class public Leu/medsea/util/ZipJarUtil;
.super Ljava/lang/Object;
.source "ZipJarUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntries(Ljava/io/File;)Ljava/util/Collection;
    .registers 2

    .line 2
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Leu/medsea/util/ZipJarUtil;->getEntries(Ljava/util/zip/ZipFile;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries(Ljava/lang/String;)Ljava/util/Collection;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Leu/medsea/util/ZipJarUtil;->getEntries(Ljava/util/zip/ZipFile;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries(Ljava/net/URL;)Ljava/util/Collection;
    .registers 1

    .line 3
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/JarURLConnection;

    .line 4
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object p0

    invoke-static {p0}, Leu/medsea/util/ZipJarUtil;->getEntries(Ljava/util/zip/ZipFile;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries(Ljava/util/zip/ZipFile;)Ljava/util/Collection;
    .registers 4

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 7
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_10

    return-object v0

    .line 8
    :cond_10
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 9
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_9

    .line 10
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public static getInputStreamForURL(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/net/JarURLConnection;

    .line 7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    const-string v0, "src/test/resources/a.zip"

    .line 5
    invoke-static {v0}, Leu/medsea/util/ZipJarUtil;->getEntries(Ljava/lang/String;)Ljava/util/Collection;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 12
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 14
    new-instance v1, Ljava/io/File;

    .line 16
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {v1}, Leu/medsea/util/ZipJarUtil;->getEntries(Ljava/io/File;)Ljava/util/Collection;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 26
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 28
    new-instance v0, Ljava/net/URL;

    .line 30
    const-string v1, "jar:file:src/test/resources/a.zip!/"

    .line 32
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v0}, Leu/medsea/util/ZipJarUtil;->getEntries(Ljava/net/URL;)Ljava/util/Collection;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 42
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 44
    new-instance v0, Ljava/net/URL;

    .line 46
    const-string v1, "jar:file:src/test/resources/a.zip!/resources/eu/medsea/mimeutil/magic.mime"

    .line 48
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {v0}, Leu/medsea/util/ZipJarUtil;->getEntries(Ljava/net/URL;)Ljava/util/Collection;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
