.class public Lorg/jaudiotagger/fix/Fix202;
.super Ljava/lang/Object;
.source "Fix202.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/fix/Fix202$OggFileFilter;
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "$Id: Fix202.java 792 2009-05-05 15:59:19Z paultaylor $"


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
    .registers 9

    new-instance v0, Lorg/jaudiotagger/fix/Fix202;

    invoke-direct {v0}, Lorg/jaudiotagger/fix/Fix202;-><init>()V

    array-length v0, p0

    const-string v1, "usage Fix202 Folder"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "      You must enter the folder containing the corrupted files"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_1a
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "      File "

    if-nez v4, :cond_49

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_49
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_6e

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object p0, p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a folder"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_6e
    :try_start_6e
    new-instance p0, Lorg/jaudiotagger/fix/Fix202$OggFileFilter;

    invoke-direct {p0}, Lorg/jaudiotagger/fix/Fix202$OggFileFilter;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_e4

    array-length v0, p0

    :goto_7b
    if-ge v3, v0, :cond_e4

    aget-object v1, p0, v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9e} :catch_da

    :try_start_9e
    new-instance v4, Lorg/jaudiotagger/audio/ogg/OggFileReader;

    invoke-direct {v4}, Lorg/jaudiotagger/audio/ogg/OggFileReader;-><init>()V

    invoke-virtual {v4, v1}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ":Not Broken"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_9e .. :try_end_ad} :catchall_ae

    goto :goto_d7

    :catchall_ae
    :try_start_ae
    new-instance v4, Lorg/jaudiotagger/audio/ogg/OggFileReader;

    sget-object v5, Lorg/jaudiotagger/fix/Fix;->FIX_OGG_VORBIS_COMMENT_NOT_COUNTING_EMPTY_COLUMNS:Lorg/jaudiotagger/fix/Fix;

    invoke-direct {v4, v5}, Lorg/jaudiotagger/audio/ogg/OggFileReader;-><init>(Lorg/jaudiotagger/fix/Fix;)V

    invoke-virtual {v4, v1}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    new-instance v4, Lorg/jaudiotagger/audio/ogg/OggFileReader;

    invoke-direct {v4}, Lorg/jaudiotagger/audio/ogg/OggFileReader;-><init>()V

    invoke-virtual {v4, v1}, Lorg/jaudiotagger/audio/generic/AudioFileReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ":********Fixed*************"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_ae .. :try_end_cf} :catchall_d0

    goto :goto_d7

    :catchall_d0
    :try_start_d0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Unable to fix"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d7} :catch_da

    :goto_d7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :catch_da
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Unable to extract tag"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_e4
    return-void
.end method
