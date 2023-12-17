.class public Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;
.super Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyUnsupported.java"


# instance fields
.field private value:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 10
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 5
    iget-object p1, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 6
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

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
    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    .line 10
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 12
    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 14
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

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

    const-string v0, "ZZZ"

    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

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
    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    .line 10
    new-instance v2, Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 17
    new-instance v3, Ljava/lang/String;

    .line 19
    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 21
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_24

    .line 30
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_24

    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_24
    return v1
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
    new-array v0, v0, [B

    .line 19
    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 21
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 24
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
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->getIdentifier()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " : "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance v1, Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .registers 8

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [B

    .line 4
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 6
    array-length v2, v2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 16
    move-result v5

    .line 17
    rsub-int/lit8 v5, v5, 0x5

    .line 19
    if-ge v4, v5, :cond_1b

    .line 21
    const/16 v5, 0x30

    .line 23
    aput-byte v5, v1, v4

    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 27
    goto :goto_c

    .line 28
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    move-result v4

    .line 32
    sub-int/2addr v0, v4

    .line 33
    add-int/2addr v0, v3

    .line 34
    :goto_21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 37
    move-result v4

    .line 38
    if-ge v3, v4, :cond_33

    .line 40
    add-int v4, v3, v0

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 45
    move-result v5

    .line 46
    int-to-byte v5, v5

    .line 47
    aput-byte v5, v1, v4

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_21

    .line 52
    :cond_33
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 55
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 60
    return-void
.end method
