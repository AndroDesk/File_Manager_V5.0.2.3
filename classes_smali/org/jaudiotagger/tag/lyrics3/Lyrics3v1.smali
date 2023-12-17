.class public Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;
.super Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;
.source "Lyrics3v1.java"


# instance fields
.field private lyric:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 17
    :try_start_7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->read(Ljava/nio/ByteBuffer;)V
    :try_end_a
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    if-eqz p1, :cond_35

    .line 8
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    if-nez v0, :cond_2d

    .line 9
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    if-eqz v0, :cond_14

    .line 10
    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    goto :goto_1a

    .line 11
    :cond_14
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    :goto_1a
    const-string v0, "LYR"

    .line 12
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->getLyric()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    goto :goto_35

    .line 14
    :cond_2d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;)V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTag;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1a

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1a
    return v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "Lyrics3v1.00"

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0xb

    .line 9
    add-int/lit8 v0, v0, 0x9

    .line 11
    return v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 7
    iget-object p1, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "Method iterator() not yet implemented."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    const/16 v0, 0x1400

    .line 3
    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->seek(Ljava/nio/ByteBuffer;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_20

    .line 11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 14
    new-instance p1, Ljava/lang/String;

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 19
    const/4 v0, 0x0

    .line 20
    const-string v1, "LYRICSEND"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 32
    return-void

    .line 33
    :cond_20
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    .line 35
    const-string v0, "ID3v1 tag not found"

    .line 37
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .registers 11

    .line 1
    const/16 v0, 0x1400

    .line 3
    new-array v0, v0, [B

    .line 5
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x80

    .line 11
    sub-long/2addr v1, v3

    .line 12
    const-wide/16 v3, 0x9

    .line 14
    sub-long/2addr v1, v3

    .line 15
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 18
    const/4 v1, 0x0

    .line 19
    const/16 v2, 0x9

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 24
    new-instance v5, Ljava/lang/String;

    .line 26
    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 29
    const-string v6, "LYRICSEND"

    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_29

    .line 37
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 40
    move-result-wide v2

    .line 41
    goto :goto_43

    .line 42
    :cond_29
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 45
    move-result-wide v7

    .line 46
    sub-long/2addr v7, v3

    .line 47
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 53
    new-instance v3, Ljava/lang/String;

    .line 55
    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 58
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_65

    .line 64
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 67
    move-result-wide v2

    .line 68
    :goto_43
    const-wide/16 v4, 0x1400

    .line 70
    sub-long/2addr v2, v4

    .line 71
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 77
    new-instance v4, Ljava/lang/String;

    .line 79
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 82
    const-string v0, "LYRICSBEGIN"

    .line 84
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 87
    move-result v0

    .line 88
    const/4 v4, -0x1

    .line 89
    if-ne v0, v4, :cond_5b

    .line 91
    return v1

    .line 92
    :cond_5b
    int-to-long v0, v0

    .line 93
    add-long/2addr v2, v0

    .line 94
    const-wide/16 v0, 0xb

    .line 96
    add-long/2addr v2, v0

    .line 97
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 100
    const/4 p1, 0x1

    .line 101
    return p1

    .line 102
    :cond_65
    return v1
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setLyric(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/16 v0, 0x13ec

    .line 3
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getIdentifier()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getSize()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "\n"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 10

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;->delete(Ljava/io/RandomAccessFile;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 11
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    const/16 v1, 0xb

    .line 19
    add-int/2addr v0, v1

    .line 20
    const/16 v2, 0x9

    .line 22
    add-int/2addr v0, v2

    .line 23
    new-array v0, v0, [B

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_1a
    if-ge v4, v1, :cond_28

    .line 29
    const-string v5, "LYRICSBEGIN"

    .line 31
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v5

    .line 35
    int-to-byte v5, v5

    .line 36
    aput-byte v5, v0, v4

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_1a

    .line 41
    :cond_28
    iget-object v4, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 43
    const/16 v5, 0x13ec

    .line 45
    invoke-static {v4, v5}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    move v5, v3

    .line 50
    :goto_31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 53
    move-result v6

    .line 54
    if-ge v5, v6, :cond_43

    .line 56
    add-int/lit8 v6, v5, 0xb

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 61
    move-result v7

    .line 62
    int-to-byte v7, v7

    .line 63
    aput-byte v7, v0, v6

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 67
    goto :goto_31

    .line 68
    :cond_43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 71
    move-result v4

    .line 72
    add-int/2addr v4, v1

    .line 73
    move v1, v3

    .line 74
    :goto_49
    if-ge v1, v2, :cond_59

    .line 76
    add-int v5, v1, v4

    .line 78
    const-string v6, "LYRICSEND"

    .line 80
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    .line 83
    move-result v6

    .line 84
    int-to-byte v6, v6

    .line 85
    aput-byte v6, v0, v5

    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_49

    .line 90
    :cond_59
    add-int/2addr v4, v2

    .line 91
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 94
    return-void
.end method
