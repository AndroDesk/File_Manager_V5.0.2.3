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

    const-string v0, "org.jaudiotagger.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/ogg/OggFileWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    new-instance v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileWriter;->vtw:Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;

    return-void
.end method


# virtual methods
.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileWriter;->vtw:Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 5

    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileWriter;->vtw:Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method
