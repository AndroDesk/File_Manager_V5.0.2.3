.class public Lorg/jaudiotagger/audio/mp3/MP3FileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "MP3FileWriter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    move-object v0, p1

    .line 3
    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3File;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v1Tag(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V

    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3File;

    .line 12
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 15
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "MP3FileReader.getEncodingInfo should be called"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteTag(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    return-void
.end method

.method public writeFile(Lorg/jaudiotagger/audio/AudioFile;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    .line 4
    return-void
.end method

.method public writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "MP3FileReaderwriteTag should not be called"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
