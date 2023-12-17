.class public Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "Mp4FileWriter.java"


# instance fields
.field private tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    .line 11
    return-void
.end method


# virtual methods
.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 6
    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 6
    return-void
.end method
