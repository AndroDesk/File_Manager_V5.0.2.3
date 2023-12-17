.class public Lorg/jaudiotagger/audio/mp3/MP3FileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "MP3FileWriter.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3File;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v1Tag(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V

    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3File;

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "MP3FileReader.getEncodingInfo should be called"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteTag(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 2

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    return-void
.end method

.method public writeFile(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 2

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "MP3FileReaderwriteTag should not be called"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
