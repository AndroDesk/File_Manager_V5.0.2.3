.class public Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "MultipleTextEncodedStringNullTerminated.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    new-instance p1, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/TextEncodedStringSizeTerminated;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V

    .line 4
    new-instance p1, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canBeEncoded()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    check-cast v0, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;->getList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_29

    .line 19
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 21
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 23
    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 25
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 31
    invoke-direct {v1, v2, v3, v4}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_c

    .line 40
    const/4 v0, 0x0

    .line 41
    return v0

    .line 42
    :cond_29
    const/4 v0, 0x1

    .line 43
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 3
    return v0
.end method

.method public readByteArray([BI)V
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Reading MultipleTextEncodedStringNullTerminated from array from offset:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 23
    :goto_16
    :try_start_16
    new-instance v0, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 25
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 27
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 29
    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 32
    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->readByteArray([BI)V

    .line 35
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_29

    .line 41
    goto :goto_56

    .line 42
    :cond_29
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 44
    check-cast v1, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    .line 46
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;->add(Ljava/lang/String;)V

    .line 55
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 57
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 60
    move-result v2

    .line 61
    add-int/2addr v1, v2

    .line 62
    iput v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 64
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 67
    move-result v0
    :try_end_43
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_16 .. :try_end_43} :catch_56

    .line 68
    add-int/2addr p2, v0

    .line 69
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 71
    if-eqz v0, :cond_49

    .line 73
    goto :goto_16

    .line 74
    :cond_49
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 76
    const-string p2, "No null terminated Strings found"

    .line 78
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 81
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 83
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p1

    .line 87
    :catch_56
    :goto_56
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 89
    const-string p2, "Read  MultipleTextEncodedStringNullTerminated:"

    .line 91
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    move-result-object p2

    .line 95
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, " size:"

    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public writeByteArray()[B
    .registers 8

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Writing MultipleTextEncodedStringNullTerminated"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 10
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    :try_start_c
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 15
    check-cast v1, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;->getList()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_19
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3b

    .line 32
    new-instance v3, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 34
    iget-object v4, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 38
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/String;

    .line 44
    invoke-direct {v3, v4, v5, v6}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 54
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 57
    move-result v3
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_39} :catch_49

    .line 58
    add-int/2addr v2, v3

    .line 59
    goto :goto_19

    .line 60
    :cond_3b
    iput v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 62
    sget-object v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 64
    const-string v2, "Written MultipleTextEncodedStringNullTerminated"

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :catch_49
    move-exception v0

    .line 75
    sget-object v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 77
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 79
    const-string v3, "IOException in MultipleTextEncodedStringNullTerminated when writing byte array"

    .line 81
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    .line 86
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    throw v1
.end method
