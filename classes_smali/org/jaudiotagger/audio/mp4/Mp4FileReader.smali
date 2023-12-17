.class public Lorg/jaudiotagger/audio/mp4/Mp4FileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "Mp4FileReader.java"


# instance fields
.field private ir:Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;

.field private tr:Lorg/jaudiotagger/audio/mp4/Mp4TagReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;->ir:Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;

    .line 11
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;

    .line 13
    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;->tr:Lorg/jaudiotagger/audio/mp4/Mp4TagReader;

    .line 18
    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;->ir:Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;->tr:Lorg/jaudiotagger/audio/mp4/Mp4TagReader;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
