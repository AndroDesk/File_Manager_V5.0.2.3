.class public Lorg/jaudiotagger/audio/ogg/OggFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "OggFileReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private ir:Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;

.field private vtr:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;


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
    sput-object v0, Lorg/jaudiotagger/audio/ogg/OggFileReader;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    .line 4
    new-instance v0, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;

    .line 6
    invoke-direct {v0}, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileReader;->ir:Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;

    .line 11
    new-instance v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 13
    invoke-direct {v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileReader;->vtr:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 18
    return-void
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileReader;->ir:Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggFileReader;->vtr:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public readOggPageHeader(Ljava/io/RandomAccessFile;I)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;
    .registers 8

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    if-lez p2, :cond_1a

    .line 7
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 14
    move-result v0

    .line 15
    int-to-long v3, v0

    .line 16
    add-long/2addr v1, v3

    .line 17
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    invoke-static {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 23
    move-result-object v0

    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 26
    goto :goto_4

    .line 27
    :cond_1a
    return-object v0
.end method

.method public shortSummarizeOggPageHeaders(Ljava/io/File;)V
    .registers 8

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 3
    const-string v1, "r"

    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    const/4 p1, 0x0

    .line 9
    :cond_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 16
    move-result-wide v3

    .line 17
    cmp-long v1, v1, v3

    .line 19
    if-gez v1, :cond_6c

    .line 21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 23
    const-string v2, "pageHeader starts at absolute file position:"

    .line 25
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 49
    const-string v3, "pageHeader finishes at absolute file position:"

    .line 51
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 58
    move-result-wide v4

    .line 59
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v4, "\n"

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 94
    move-result-wide v2

    .line 95
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 98
    move-result v1

    .line 99
    int-to-long v4, v1

    .line 100
    add-long/2addr v2, v4

    .line 101
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 104
    add-int/lit8 p1, p1, 0x1

    .line 106
    const/4 v1, 0x5

    .line 107
    if-lt p1, v1, :cond_8

    .line 109
    :cond_6c
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 111
    const-string v1, "Raf File Pointer at:"

    .line 113
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 120
    move-result-wide v2

    .line 121
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, "File Size is:"

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 132
    move-result-wide v2

    .line 133
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 146
    return-void
.end method

.method public summarizeOggPageHeaders(Ljava/io/File;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 3
    const-string v1, "r"

    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    :goto_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 15
    move-result-wide v3

    .line 16
    cmp-long p1, v1, v3

    .line 18
    if-gez p1, :cond_67

    .line 20
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 22
    const-string v1, "pageHeader starts at absolute file position:"

    .line 24
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    .line 45
    move-result-object p1

    .line 46
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 48
    const-string v2, "pageHeader finishes at absolute file position:"

    .line 50
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v3, "\n"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 93
    move-result-wide v1

    .line 94
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    .line 97
    move-result p1

    .line 98
    int-to-long v3, p1

    .line 99
    add-long/2addr v1, v3

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    goto :goto_7

    .line 104
    :cond_67
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 106
    const-string v1, "Raf File Pointer at:"

    .line 108
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 115
    move-result-wide v2

    .line 116
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    const-string v2, "File Size is:"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 127
    move-result-wide v2

    .line 128
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 141
    return-void
.end method
