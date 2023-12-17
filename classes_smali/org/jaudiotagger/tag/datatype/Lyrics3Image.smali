.class public Lorg/jaudiotagger/tag/datatype/Lyrics3Image;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "Lyrics3Image.java"


# instance fields
.field private description:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/Lyrics3Image;)V
    .registers 4

    .line 5
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 9
    new-instance v0, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    iget-object v1, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 10
    iget-object v0, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;

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
    check-cast v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 12
    iget-object v3, v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 23
    iget-object v3, v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1f

    .line 31
    return v1

    .line 32
    :cond_1f
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 34
    if-nez v2, :cond_28

    .line 36
    iget-object v0, v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 38
    if-eqz v0, :cond_31

    .line 40
    return v1

    .line 41
    :cond_28
    iget-object v0, v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 43
    invoke-virtual {v2, v0}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_31

    .line 49
    return v1

    .line 50
    :cond_31
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSize()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x2

    .line 9
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    add-int/lit8 v1, v1, 0x2

    .line 18
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 20
    if-eqz v0, :cond_1a

    .line 22
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->getSize()I

    .line 25
    move-result v0

    .line 26
    add-int/2addr v1, v0

    .line 27
    :cond_1a
    return v1
.end method

.method public getTimeStamp()Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 3
    return-object v0
.end method

.method public readByteArray([BI)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->readString(Ljava/lang/String;I)V

    .line 8
    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .registers 6

    .line 1
    if-eqz p1, :cond_55

    .line 3
    if-ltz p2, :cond_3c

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    if-ge p2, v0, :cond_3c

    .line 11
    const-string v0, "||"

    .line 13
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 23
    add-int/lit8 v1, v1, 0x2

    .line 25
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 35
    add-int/lit8 p2, p2, 0x2

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 44
    move-result p2

    .line 45
    const/4 v0, 0x7

    .line 46
    if-ne p2, v0, :cond_3b

    .line 48
    new-instance p2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 50
    const-string v0, "Time Stamp"

    .line 52
    invoke-direct {p2, v0}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 57
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->readString(Ljava/lang/String;)V

    .line 60
    :cond_3b
    return-void

    .line 61
    :cond_3c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 63
    const-string v1, "Offset to image string is out of bounds: offset = "

    .line 65
    const-string v2, ", string.length()"

    .line 67
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    move-result p1

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0

    .line 86
    :cond_55
    new-instance p1, Ljava/lang/NullPointerException;

    .line 88
    const-string p2, "Image string is null"

    .line 90
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "filename = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", description = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 28
    if-eqz v1, :cond_30

    .line 30
    const-string v1, ", timestamp = "

    .line 32
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 38
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    :cond_30
    const-string v1, "\n"

    .line 51
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public writeByteArray()[B
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->writeString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ISO-8859-1"

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
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 3
    const-string v1, "||"

    .line 5
    if-nez v0, :cond_8

    .line 7
    move-object v0, v1

    .line 8
    goto :goto_13

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 16
    invoke-static {v0, v2, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_13
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 22
    if-nez v2, :cond_1c

    .line 24
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_26

    .line 29
    :cond_1c
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 35
    invoke-static {v0, v2, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    :goto_26
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 41
    if-eqz v1, :cond_3b

    .line 43
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/Lyrics3Image;->time:Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 49
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    :cond_3b
    return-object v0
.end method
