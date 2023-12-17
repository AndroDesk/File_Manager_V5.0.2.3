.class public Lorg/jaudiotagger/audio/ogg/OggFileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "OggFileWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vtw:Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.ogg"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/ogg/OggFileWriter;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileWriter;->vtw:Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;

    .line 11
    return-void
.end method


# virtual methods
.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileWriter;->vtw:Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 6
    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileWriter;->vtw:Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 6
    return-void
.end method
