.class public Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "Mp4FileWriter.java"


# instance fields
.field private tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    return-void
.end method


# virtual methods
.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 5

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method
