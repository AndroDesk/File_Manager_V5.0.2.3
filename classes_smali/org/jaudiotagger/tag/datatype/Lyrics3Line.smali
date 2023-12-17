.class public Lorg/jaudiotagger/tag/datatype/Lyrics3Line;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "Lyrics3Line.java"


# instance fields
.field private lyric:Ljava/lang/String;

.field private timeStamp:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/Lyrics3Line;)V
    .registers 5

    .line 4
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    :goto_13
    iget-object v1, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 9
    new-instance v1, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    iget-object v2, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-direct {v1, v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_30
    return-void
.end method


# virtual methods
.method public addLyric(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public addLyric(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V
    .registers 4

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public addTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

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
    check-cast v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 12
    iget-object v3, v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 23
    iget-object v0, v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_25

    .line 31
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_25
    return v1
.end method

.method public getLyric()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSize()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

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
    if-eqz v2, :cond_19

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 20
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->getSize()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_7

    .line 26
    :cond_19
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public getTimeStamp()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasTimeStamp()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public readByteArray([BI)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->readString(Ljava/lang/String;I)V

    .line 8
    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .registers 7

    .line 1
    if-eqz p1, :cond_59

    .line 3
    if-ltz p2, :cond_40

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    if-ge p2, v0, :cond_40

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 18
    const-string v0, "["

    .line 20
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 23
    move-result v1

    .line 24
    :goto_17
    if-ltz v1, :cond_39

    .line 26
    const-string p2, "]"

    .line 28
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 31
    move-result p2

    .line 32
    add-int/lit8 p2, p2, 0x1

    .line 34
    new-instance v2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 36
    const-string v3, "Time Stamp"

    .line 38
    invoke-direct {v2, v3}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v2, v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->readString(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 56
    move-result v1

    .line 57
    goto :goto_17

    .line 58
    :cond_39
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 64
    return-void

    .line 65
    :cond_40
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 67
    const-string v1, "Offset to line is out of bounds: offset = "

    .line 69
    const-string v2, ", line.length()"

    .line 71
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    move-result p1

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 89
    throw v0

    .line 90
    :cond_59
    new-instance p1, Ljava/lang/NullPointerException;

    .line 92
    const-string p2, "Image is null"

    .line 94
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p1
.end method

.method public setLyric(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public setLyric(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V
    .registers 2

    .line 2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

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
    if-eqz v2, :cond_24

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 21
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    goto :goto_8

    .line 37
    :cond_24
    const-string v0, "timeStamp = "

    .line 39
    const-string v2, ", lyric = "

    .line 41
    invoke-static {v0, v1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 47
    const-string v2, "\n"

    .line 49
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public writeByteArray()[B
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->writeString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ISO8859-1"

    .line 7
    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

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
    if-eqz v2, :cond_24

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 21
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    goto :goto_8

    .line 37
    :cond_24
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
