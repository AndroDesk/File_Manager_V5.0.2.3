.class public abstract Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.super Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
.source "AbstractLyrics3v2FieldFrameBody.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 7
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_31

    .line 23
    add-int/lit8 v3, v0, -0x1

    .line 25
    if-gt v2, v3, :cond_29

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 33
    invoke-virtual {v3, v1, v2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->readByteArray([BI)V

    .line 36
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getSize()I

    .line 39
    move-result v3

    .line 40
    add-int/2addr v2, v3

    .line 41
    goto :goto_10

    .line 42
    :cond_29
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    .line 44
    const-string v0, "Invalid size for Frame Body"

    .line 46
    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    :cond_31
    return-void
.end method

.method public readHeader(Ljava/io/RandomAccessFile;)I
    .registers 5

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [B

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 8
    new-instance p1, Ljava/lang/String;

    .line 10
    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_25

    .line 19
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

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
    return p1
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 19
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->writeByteArray()[B

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 26
    goto :goto_6

    .line 27
    :cond_1a
    return-void
.end method

.method public writeHeader(Ljava/io/RandomAccessFile;I)V
    .registers 8

    .line 1
    const/4 p2, 0x5

    .line 2
    new-array v0, p2, [B

    .line 4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    move-result v4

    .line 18
    rsub-int/lit8 v4, v4, 0x5

    .line 20
    if-ge v3, v4, :cond_1c

    .line 22
    const/16 v4, 0x30

    .line 24
    aput-byte v4, v0, v3

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_d

    .line 29
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 32
    move-result v3

    .line 33
    sub-int/2addr p2, v3

    .line 34
    add-int/2addr p2, v2

    .line 35
    :goto_22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    move-result v3

    .line 39
    if-ge v2, v3, :cond_34

    .line 41
    add-int v3, v2, p2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 46
    move-result v4

    .line 47
    int-to-byte v4, v4

    .line 48
    aput-byte v4, v0, v3

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_22

    .line 53
    :cond_34
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 56
    return-void
.end method
