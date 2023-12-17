.class public Lorg/jaudiotagger/audio/mp3/MP3FileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "MP3FileReader.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "MP3FileReader.getEncodingInfo should be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "MP3FileReader.getEncodingInfo should be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .registers 5

    new-instance v0, Lorg/jaudiotagger/audio/mp3/MP3File;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    return-object v0
.end method

.method public readMustBeWritable(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .registers 5

    new-instance v0, Lorg/jaudiotagger/audio/mp3/MP3File;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    return-object v0
.end method
