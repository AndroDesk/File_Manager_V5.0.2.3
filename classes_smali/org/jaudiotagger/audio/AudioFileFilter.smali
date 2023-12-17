.class public Lorg/jaudiotagger/audio/AudioFileFilter;
.super Ljava/lang/Object;
.source "AudioFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final allowDirectories:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/AudioFileFilter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/jaudiotagger/audio/AudioFileFilter;->allowDirectories:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_27

    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean p1, p0, Lorg/jaudiotagger/audio/AudioFileFilter;->allowDirectories:Z

    return p1

    :cond_17
    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_27

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    return p1

    :catch_27
    :cond_27
    :goto_27
    return v1
.end method
