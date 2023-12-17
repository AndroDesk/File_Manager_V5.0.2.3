.class public Lorg/jaudiotagger/audio/wav/WavFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "WavFileReader.java"


# instance fields
.field private ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    new-instance v0, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/wav/WavFileReader;->ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavFileReader;->ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object p1

    return-object p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 2

    new-instance p1, Lorg/jaudiotagger/audio/wav/WavTag;

    invoke-direct {p1}, Lorg/jaudiotagger/audio/wav/WavTag;-><init>()V

    return-object p1
.end method
