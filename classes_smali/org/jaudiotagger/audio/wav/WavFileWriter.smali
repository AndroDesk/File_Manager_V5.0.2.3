.class public Lorg/jaudiotagger/audio/wav/WavFileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "WavFileWriter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 3

    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    return-void
.end method
