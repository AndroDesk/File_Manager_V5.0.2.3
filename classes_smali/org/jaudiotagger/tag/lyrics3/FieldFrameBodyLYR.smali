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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V
    .registers 3

    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V
    .registers 3

    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;)V
    .registers 6

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    iget-object v1, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

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

    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_e
    const-string v2, "Lyric Line"

    if-ltz v0, :cond_32

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-direct {v3, v2, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_e

    :cond_32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_49

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-direct {v0, v2, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method private writeString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->writeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_29
    return-object v1
.end method


# virtual methods
.method public addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V
    .registers 9

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    new-instance v3, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    invoke-direct {v3, v2}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;-><init>(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V

    new-instance v2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    const-string v4, "Time Stamp"

    invoke-direct {v2, v4, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;->getTimeStampFormat()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v5, v6}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->setTimeStamp(JB)V

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->addTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V

    goto :goto_9

    :cond_45
    new-instance v4, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    const-string v5, "Lyric Line"

    invoke-direct {v4, v5, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v4, v3}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V

    invoke-virtual {v4, v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_5f
    return-void
.end method

.method public addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V
    .registers 4

    new-instance v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    const-string v1, "Lyric Line"

    invoke-direct {v0, v1, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->getLyric()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

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

    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_1b
    return v1
.end method

.method public hasTimeStamp()Z
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->hasTimeStamp()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_1b
    return v1
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v1

    :cond_24
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result p1

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

    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .registers 6

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_25

    :cond_1d
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    const-string v0, "Lyircs3v2 Field has size of zero."

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    :goto_25
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public setupObjectList()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_37
    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 11

    const/4 v0, 0x5

    new-array v1, v0, [B

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x5

    if-ge v5, v6, :cond_1c

    const/16 v6, 0x30

    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v4

    move v6, v4

    :goto_24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_36

    add-int v7, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_36
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    if-lez v2, :cond_58

    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->writeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    :goto_45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_55

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_55
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_58
    return-void
.end method
