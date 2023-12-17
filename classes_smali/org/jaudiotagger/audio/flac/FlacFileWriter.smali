.class public Lorg/jaudiotagger/audio/flac/FlacFileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "FlacFileWriter.java"


# instance fields
.field private tw:Lorg/jaudiotagger/audio/flac/FlacTagWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileWriter;->tw:Lorg/jaudiotagger/audio/flac/FlacTagWriter;

    .line 11
    return-void
.end method


# virtual methods
.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileWriter;->tw:Lorg/jaudiotagger/audio/flac/FlacTagWriter;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 6
    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileWriter;->tw:Lorg/jaudiotagger/audio/flac/FlacTagWriter;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 6
    return-void
.end method
