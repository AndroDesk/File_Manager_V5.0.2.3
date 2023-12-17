.class public Lorg/jaudiotagger/audio/AudioFileFilter;
.super Ljava/lang/Object;
.source "AudioFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final allowDirectories:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/AudioFileFilter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/AudioFileFilter;->allowDirectories:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_27

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    goto :goto_27

    .line 15
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_17

    .line 21
    iget-boolean p1, p0, Lorg/jaudiotagger/audio/AudioFileFilter;->allowDirectories:Z

    .line 23
    return p1

    .line 24
    :cond_17
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 35
    move-result-object p1
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_27

    .line 36
    if-eqz p1, :cond_27

    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :catch_27
    :cond_27
    :goto_27
    return v1
.end method
