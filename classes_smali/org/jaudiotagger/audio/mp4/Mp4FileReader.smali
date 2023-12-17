.class public Lorg/jaudiotagger/audio/mp4/Mp4FileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "Mp4FileReader.java"


# instance fields
.field private ir:Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;

.field private tr:Lorg/jaudiotagger/audio/mp4/Mp4TagReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;->ir:Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;

    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;->tr:Lorg/jaudiotagger/audio/mp4/Mp4TagReader;

    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;->ir:Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object p1

    return-object p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileReader;->tr:Lorg/jaudiotagger/audio/mp4/Mp4TagReader;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/mp4/Mp4TagReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    move-result-object p1

    return-object p1
.end method
