.class public Lorg/jaudiotagger/audio/mp3/MP3FileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "MP3FileReader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string v0, "MP3FileReader.getEncodingInfo should be called"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string v0, "MP3FileReader.getEncodingInfo should be called"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .registers 5

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp3/MP3File;

    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, p1, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    .line 8
    return-object v0
.end method

.method public readMustBeWritable(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .registers 5

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp3/MP3File;

    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p1, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    .line 8
    return-object v0
.end method
