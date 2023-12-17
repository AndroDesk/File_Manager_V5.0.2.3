.class public Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;
.super Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyLYR.java"


# instance fields
.field private lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jaudiotagger/tag/datatype/Lyrics3Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 10
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;)V
    .registers 6

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    :goto_b
    iget-object v1, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 6
    iget-object v1, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 7
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    new-instance v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-direct {v3, v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Lorg/jaudiotagger/tag/datatype/Lyrics3Line;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_28
    return-void
.end method

.method private readString(Ljava/lang/String;)V
    .registers 7

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_e
    const-string v2, "Lyric Line"

    .line 17
    if-ltz v0, :cond_32

    .line 19
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    new-instance v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 25
    invoke-direct {v3, v2, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 28
    invoke-virtual {v3, v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    move-result v2

    .line 42
    add-int/2addr v0, v2

    .line 43
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 46
    move-result v1

    .line 47
    move v4, v1

    .line 48
    move v1, v0

    .line 49
    move v0, v4

    .line 50
    goto :goto_e

    .line 51
    :cond_32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    move-result v0

    .line 55
    if-ge v1, v0, :cond_49

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 63
    invoke-direct {v0, v2, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 66
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_49
    return-void
.end method

.method private writeString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_29

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 21
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->writeString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget-object v2, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    goto :goto_8

    .line 42
    :cond_29
    return-object v1
.end method


# virtual methods
.method public addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    .line 5
    new-instance v3, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    invoke-direct {v3, v2}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;-><init>(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V

    .line 6
    new-instance v2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    const-string v4, "Time Stamp"

    invoke-direct {v2, v4, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 7
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;->getTimeStampFormat()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v5, v6}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->setTimeStamp(JB)V

    .line 8
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 9
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 10
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->addTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V

    goto :goto_9

    .line 11
    :cond_45
    new-instance v4, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    const-string v5, "Lyric Line"

    invoke-direct {v4, v5, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 12
    invoke-virtual {v4, v3}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V

    .line 13
    invoke-virtual {v4, v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V

    .line 14
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_5f
    return-void
.end method

.method public addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V
    .registers 4

    .line 16
    new-instance v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    const-string v1, "Lyric Line"

    invoke-direct {v0, v1, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->getLyric()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

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
    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 12
    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->equals(Ljava/lang/Object;)Z

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

    const-string v0, "LYR"

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->writeString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSize()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1b

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 20
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->getSize()I

    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, 0x2

    .line 26
    add-int/2addr v1, v2

    .line 27
    goto :goto_7

    .line 28
    :cond_1b
    return v1
.end method

.method public hasTimeStamp()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1b

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 20
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->hasTimeStamp()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_7

    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_7

    .line 28
    :cond_1b
    return v1
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

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
    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 10
    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 12
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v2

    .line 18
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_24

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_11

    .line 36
    return v1

    .line 37
    :cond_24
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/datatype/Lyrics3Line;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [B

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    new-instance v3, Ljava/lang/String;

    .line 10
    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_25

    .line 19
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1d

    .line 29
    goto :goto_25

    .line 30
    :cond_1d
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    .line 32
    const-string v0, "Lyircs3v2 Field has size of zero."

    .line 34
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1

    .line 38
    :cond_25
    :goto_25
    new-array v0, v0, [B

    .line 40
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 43
    new-instance p1, Ljava/lang/String;

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 48
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public setupObjectList()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->getIdentifier()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " : "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v1

    .line 28
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_37

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 40
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    goto :goto_1b

    .line 56
    :cond_37
    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 11

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [B

    .line 4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->getSize()I

    .line 7
    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    :goto_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 17
    move-result v6

    .line 18
    rsub-int/lit8 v6, v6, 0x5

    .line 20
    if-ge v5, v6, :cond_1c

    .line 22
    const/16 v6, 0x30

    .line 24
    aput-byte v6, v1, v5

    .line 26
    add-int/lit8 v5, v5, 0x1

    .line 28
    goto :goto_d

    .line 29
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 32
    move-result v5

    .line 33
    rsub-int/lit8 v5, v5, 0x5

    .line 35
    add-int/2addr v5, v4

    .line 36
    move v6, v4

    .line 37
    :goto_24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    move-result v7

    .line 41
    if-ge v6, v7, :cond_36

    .line 43
    add-int v7, v6, v5

    .line 45
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 48
    move-result v8

    .line 49
    int-to-byte v8, v8

    .line 50
    aput-byte v8, v1, v7

    .line 52
    add-int/lit8 v6, v6, 0x1

    .line 54
    goto :goto_24

    .line 55
    :cond_36
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 58
    if-lez v2, :cond_58

    .line 60
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->writeString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 67
    move-result v1

    .line 68
    new-array v1, v1, [B

    .line 70
    :goto_45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 73
    move-result v2

    .line 74
    if-ge v4, v2, :cond_55

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 79
    move-result v2

    .line 80
    int-to-byte v2, v2

    .line 81
    aput-byte v2, v1, v4

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 85
    goto :goto_45

    .line 86
    :cond_55
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 89
    :cond_58
    return-void
.end method
