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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lorg/jaudiotagger/test/ExtractID3TagFromFile;

    invoke-direct {v0}, Lorg/jaudiotagger/test/ExtractID3TagFromFile;-><init>()V

    array-length v0, p0

    const-string v1, "usage ExtractID3TagFromFile Filename FilenameOut"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "      You must enter the file to extract the tag from and where to extract to"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_1b
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_51

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "      File "

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object p0, p0, v3

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " could not be found"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_51
    :try_start_51
    new-instance p0, Lorg/jaudiotagger/audio/mp3/MP3File;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v4}, Lorg/jaudiotagger/audio/mp3/MP3File;->extractID3v2TagDataIntoFile(Ljava/io/File;)Ljava/io/File;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_64

    :catch_5a
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Unable to extract tag"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_64
    return-void
.end method
