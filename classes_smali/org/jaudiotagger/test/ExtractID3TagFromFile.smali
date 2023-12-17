.class public Lorg/jaudiotagger/test/ExtractID3TagFromFile;
.super Ljava/lang/Object;
.source "ExtractID3TagFromFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/test/ExtractID3TagFromFile$MP3FileFilter;
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "$Id: ExtractID3TagFromFile.java 836 2009-11-12 15:44:07Z paultaylor $"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Lorg/jaudiotagger/test/ExtractID3TagFromFile;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/test/ExtractID3TagFromFile;-><init>()V

    .line 6
    array-length v0, p0

    .line 7
    const-string v1, "usage ExtractID3TagFromFile Filename FilenameOut"

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v0, v3, :cond_1b

    .line 13
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 20
    const-string v3, "      You must enter the file to extract the tag from and where to extract to"

    .line 22
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 28
    :cond_1b
    new-instance v0, Ljava/io/File;

    .line 30
    const/4 v3, 0x0

    .line 31
    aget-object v4, p0, v3

    .line 33
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v4, Ljava/io/File;

    .line 38
    aget-object v5, p0, v2

    .line 40
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_51

    .line 49
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 51
    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 56
    const-string v5, "      File "

    .line 58
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v5

    .line 62
    aget-object p0, p0, v3

    .line 64
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p0, " could not be found"

    .line 69
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 82
    :cond_51
    :try_start_51
    new-instance p0, Lorg/jaudiotagger/audio/mp3/MP3File;

    .line 84
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;)V

    .line 87
    invoke-virtual {p0, v4}, Lorg/jaudiotagger/audio/mp3/MP3File;->extractID3v2TagDataIntoFile(Ljava/io/File;)Ljava/io/File;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_5a

    .line 90
    goto :goto_64

    .line 91
    :catch_5a
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 93
    const-string v0, "Unable to extract tag"

    .line 95
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 101
    :goto_64
    return-void
.end method
