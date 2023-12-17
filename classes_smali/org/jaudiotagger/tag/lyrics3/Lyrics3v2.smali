.class public Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;
.super Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;
.source "Lyrics3v2.java"


# instance fields
.field private fieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 24
    :try_start_a
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->read(Ljava/nio/ByteBuffer;)V
    :try_end_d
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .registers 5

    .line 10
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    if-eqz p1, :cond_5a

    .line 12
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    if-nez v0, :cond_52

    .line 13
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    if-eqz v0, :cond_2e

    .line 14
    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 15
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    new-instance v1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 16
    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 17
    :cond_2e
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 18
    :catch_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 19
    :try_start_3d
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 20
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_3d .. :try_end_51} :catch_37

    goto :goto_37

    .line 21
    :cond_52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    :goto_5a
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;)V
    .registers 6

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 5
    iget-object v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    new-instance v2, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    iget-object v3, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-direct {v2, v3}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V

    .line 9
    iget-object v3, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_33
    return-void
.end method

.method private seekSize(Ljava/nio/ByteBuffer;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

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
    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 12
    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getField(Ljava/lang/String;)Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 9
    return-object p1
.end method

.method public getFieldCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "Lyrics3v2.00"

    return-object v0
.end method

.method public getSize()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1d

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 24
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getSize()I

    .line 27
    move-result v2

    .line 28
    add-int/2addr v1, v2

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    add-int/lit8 v1, v1, 0xb

    .line 32
    return v1
.end method

.method public hasField(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->seek(Ljava/nio/ByteBuffer;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_29

    .line 7
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->seekSize(Ljava/nio/ByteBuffer;)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->seek(Ljava/nio/ByteBuffer;)Z

    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 17
    new-instance v1, Ljava/util/HashMap;

    .line 19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    iput-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 24
    :catch_17
    :goto_17
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 27
    move-result v1

    .line 28
    add-int/lit8 v2, v0, -0xb

    .line 30
    if-ge v1, v2, :cond_28

    .line 32
    :try_start_1f
    new-instance v1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 34
    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Ljava/nio/ByteBuffer;)V

    .line 37
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->setField(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V
    :try_end_27
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_1f .. :try_end_27} :catch_17

    .line 40
    goto :goto_17

    .line 41
    :cond_28
    return-void

    .line 42
    :cond_29
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    .line 44
    const-string v0, "Lyrics3v2.00 Tag Not Found"

    .line 46
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1
.end method

.method public removeField(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .registers 12

    .line 1
    const/16 v0, 0xb

    .line 3
    new-array v1, v0, [B

    .line 5
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x80

    .line 11
    sub-long/2addr v2, v4

    .line 12
    const-wide/16 v4, 0x9

    .line 14
    sub-long/2addr v2, v4

    .line 15
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 18
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0x9

    .line 21
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 24
    new-instance v6, Ljava/lang/String;

    .line 26
    invoke-direct {v6, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 29
    const-string v7, "LYRICS200"

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_29

    .line 37
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 40
    move-result-wide v3

    .line 41
    goto :goto_43

    .line 42
    :cond_29
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 45
    move-result-wide v8

    .line 46
    sub-long/2addr v8, v4

    .line 47
    invoke-virtual {p1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 53
    new-instance v4, Ljava/lang/String;

    .line 55
    invoke-direct {v4, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 58
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_6a

    .line 64
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 67
    move-result-wide v3

    .line 68
    :goto_43
    const-wide/16 v5, 0xf

    .line 70
    sub-long/2addr v3, v5

    .line 71
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    const/4 v5, 0x6

    .line 75
    invoke-virtual {p1, v1, v2, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 78
    new-instance v6, Ljava/lang/String;

    .line 80
    invoke-direct {v6, v1, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    move-result v5

    .line 87
    int-to-long v5, v5

    .line 88
    sub-long/2addr v3, v5

    .line 89
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 92
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 95
    new-instance p1, Ljava/lang/String;

    .line 97
    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 100
    const-string v0, "LYRICSBEGIN"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :cond_6a
    return v2
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setField(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->getIdentifier()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " "

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->getSize()I

    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "\n"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_4a

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 56
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    goto :goto_2b

    .line 75
    :cond_4a
    return-object v1
.end method

.method public updateField(Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "IND"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_32

    .line 9
    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 11
    const-string v0, "LYR"

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_25

    .line 20
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 28
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 34
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->hasTimeStamp()Z

    .line 37
    move-result v1

    .line 38
    :cond_25
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 40
    new-instance v2, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;

    .line 42
    invoke-direct {v2, p1, v1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;-><init>(ZZ)V

    .line 45
    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 48
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->setField(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V

    .line 51
    :cond_32
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 11

    .line 1
    const/16 v0, 0xf

    .line 3
    new-array v0, v0, [B

    .line 5
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 7
    invoke-direct {v1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;->delete(Ljava/io/RandomAccessFile;)V

    .line 13
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 23
    move-result-wide v1

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_19
    const/16 v5, 0xb

    .line 28
    if-ge v4, v5, :cond_29

    .line 30
    const-string v5, "LYRICSBEGIN"

    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v5

    .line 36
    int-to-byte v5, v5

    .line 37
    aput-byte v5, v0, v4

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_19

    .line 42
    :cond_29
    invoke-virtual {p1, v0, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 45
    const-string v4, "IND"

    .line 47
    invoke-virtual {p0, v4}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->updateField(Ljava/lang/String;)V

    .line 50
    iget-object v5, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 52
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 58
    invoke-virtual {v5, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    .line 61
    iget-object v5, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 63
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v5

    .line 71
    :cond_46
    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_6a

    .line 77
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 83
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    .line 86
    move-result-object v7

    .line 87
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v8, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getLyrics3SaveField(Ljava/lang/String;)Z

    .line 94
    move-result v8

    .line 95
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v7

    .line 99
    if-nez v7, :cond_46

    .line 101
    if-eqz v8, :cond_46

    .line 103
    invoke-virtual {v6, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    .line 106
    goto :goto_46

    .line 107
    :cond_6a
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 110
    move-result-wide v4

    .line 111
    sub-long/2addr v4, v1

    .line 112
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->getSize()I

    .line 115
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    move v2, v3

    .line 120
    :goto_77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 123
    move-result v4

    .line 124
    rsub-int/lit8 v4, v4, 0x6

    .line 126
    if-ge v2, v4, :cond_86

    .line 128
    const/16 v4, 0x30

    .line 130
    aput-byte v4, v0, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 134
    goto :goto_77

    .line 135
    :cond_86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 138
    move-result v2

    .line 139
    rsub-int/lit8 v2, v2, 0x6

    .line 141
    add-int/2addr v2, v3

    .line 142
    move v4, v3

    .line 143
    :goto_8e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 146
    move-result v5

    .line 147
    if-ge v4, v5, :cond_a0

    .line 149
    add-int v5, v4, v2

    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 154
    move-result v6

    .line 155
    int-to-byte v6, v6

    .line 156
    aput-byte v6, v0, v5

    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 160
    goto :goto_8e

    .line 161
    :cond_a0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 164
    move-result v1

    .line 165
    add-int/2addr v1, v2

    .line 166
    move v2, v3

    .line 167
    :goto_a6
    const/16 v4, 0x9

    .line 169
    if-ge v2, v4, :cond_b8

    .line 171
    add-int v4, v2, v1

    .line 173
    const-string v5, "LYRICS200"

    .line 175
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 178
    move-result v5

    .line 179
    int-to-byte v5, v5

    .line 180
    aput-byte v5, v0, v4

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 184
    goto :goto_a6

    .line 185
    :cond_b8
    add-int/2addr v1, v4

    .line 186
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 189
    return-void
.end method
