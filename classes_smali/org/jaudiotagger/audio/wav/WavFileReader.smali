.class public Lorg/jaudiotagger/audio/wav/WavFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "WavFileReader.java"


# instance fields
.field private ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/wav/WavFileReader;->ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    .line 11
    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavFileReader;->ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 2

    .line 1
    new-instance p1, Lorg/jaudiotagger/audio/wav/WavTag;

    .line 3
    invoke-direct {p1}, Lorg/jaudiotagger/audio/wav/WavTag;-><init>()V

    .line 6
    return-object p1
.end method
