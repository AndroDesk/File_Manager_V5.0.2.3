.class public Lorg/jaudiotagger/audio/flac/FlacFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "FlacFileReader.java"


# instance fields
.field private ir:Lorg/jaudiotagger/audio/flac/FlacInfoReader;

.field private tr:Lorg/jaudiotagger/audio/flac/FlacTagReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacInfoReader;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacInfoReader;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileReader;->ir:Lorg/jaudiotagger/audio/flac/FlacInfoReader;

    .line 11
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagReader;

    .line 13
    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagReader;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileReader;->tr:Lorg/jaudiotagger/audio/flac/FlacTagReader;

    .line 18
    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileReader;->ir:Lorg/jaudiotagger/audio/flac/FlacInfoReader;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileReader;->tr:Lorg/jaudiotagger/audio/flac/FlacTagReader;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/flac/FlacTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/flac/FlacTag;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
