.class public Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;
.super Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.source "PairedTextEncodedStringNullTerminated.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;)V
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
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canBeEncoded()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->access$000(Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2d

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 25
    new-instance v2, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 27
    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 29
    iget-object v4, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 31
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v2, v3, v4, v1}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_c

    .line 44
    const/4 v0, 0x0

    .line 45
    return v0

    .line 46
    :cond_2d
    const/4 v0, 0x1

    .line 47
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p1, p0, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    .line 13
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 17
    invoke-static {v0, p1}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 3
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    .registers 2

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    return-object v0
.end method

.method public readByteArray([BI)V
    .registers 7

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Reading PairTextEncodedStringNullTerminated from array from offset:"

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
    iget v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 37
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 40
    move-result v2

    .line 41
    add-int/2addr v1, v2

    .line 42
    iput v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 44
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 47
    move-result v1

    .line 48
    add-int/2addr p2, v1

    .line 49
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_37

    .line 55
    goto :goto_7d

    .line 56
    :cond_37
    new-instance v1, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 58
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 62
    invoke-direct {v1, v2, v3}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 65
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->readByteArray([BI)V

    .line 68
    iget v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 70
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 73
    move-result v3

    .line 74
    add-int/2addr v2, v3

    .line 75
    iput v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 77
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 80
    move-result v2

    .line 81
    add-int/2addr p2, v2

    .line 82
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_58

    .line 88
    goto :goto_7d

    .line 89
    :cond_58
    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 91
    check-cast v2, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 93
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v0, v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_16 .. :try_end_6b} :catch_7d

    .line 108
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 110
    if-eqz v0, :cond_70

    .line 112
    goto :goto_16

    .line 113
    :cond_70
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 115
    const-string p2, "No null terminated Strings found"

    .line 117
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 120
    new-instance p1, Lorg/jaudiotagger/tag/InvalidDataTypeException;

    .line 122
    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p1

    .line 126
    :catch_7d
    :goto_7d
    sget-object p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 128
    const-string p2, "Read  PairTextEncodedStringNullTerminated:"

    .line 130
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    move-result-object p2

    .line 134
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, " size:"

    .line 141
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public writeByteArray()[B
    .registers 9

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "Writing PairTextEncodedStringNullTerminated"

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
    check-cast v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 17
    invoke-static {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->access$000(Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_58

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 38
    new-instance v4, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 40
    iget-object v5, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 42
    iget-object v6, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 44
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    .line 47
    move-result-object v7

    .line 48
    invoke-direct {v4, v5, v6, v7}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 58
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 61
    move-result v4

    .line 62
    add-int/2addr v2, v4

    .line 63
    new-instance v4, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;

    .line 65
    iget-object v5, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 67
    iget-object v6, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 69
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    invoke-direct {v4, v5, v6, v3}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 83
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/AbstractString;->getSize()I

    .line 86
    move-result v3
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_56} :catch_66

    .line 87
    add-int/2addr v2, v3

    .line 88
    goto :goto_19

    .line 89
    :cond_58
    iput v2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->size:I

    .line 91
    sget-object v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 93
    const-string v2, "Written PairTextEncodedStringNullTerminated"

    .line 95
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :catch_66
    move-exception v0

    .line 104
    sget-object v1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 106
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 108
    const-string v3, "IOException in MultipleTextEncodedStringNullTerminated when writing byte array"

    .line 110
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    .line 115
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 118
    throw v1
.end method
