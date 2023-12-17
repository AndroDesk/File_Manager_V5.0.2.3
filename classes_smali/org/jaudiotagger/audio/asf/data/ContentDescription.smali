.class public final Lorg/jaudiotagger/audio/asf/data/ContentDescription;
.super Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
.source "ContentDescription.java"


# static fields
.field public static final ALLOWED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_AUTHOR:Ljava/lang/String; = "AUTHOR"

.field public static final KEY_COPYRIGHT:Ljava/lang/String; = "COPYRIGHT"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final KEY_RATING:Ljava/lang/String; = "RATING"

.field public static final KEY_TITLE:Ljava/lang/String; = "TITLE"


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    const-string v1, "AUTHOR"

    .line 5
    const-string v2, "COPYRIGHT"

    .line 7
    const-string v3, "DESCRIPTION"

    .line 9
    const-string v4, "RATING"

    .line 11
    const-string v5, "TITLE"

    .line 13
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->ALLOWED:Ljava/util/Set;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .registers 5

    .line 2
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "AUTHOR"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "DESCRIPTION"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCopyRight()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "COPYRIGHT"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentAsfChunkSize()J
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/16 v2, 0x2c

    .line 14
    add-long/2addr v0, v2

    .line 15
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 22
    move-result v2

    .line 23
    mul-int/lit8 v2, v2, 0x2

    .line 25
    int-to-long v2, v2

    .line 26
    add-long/2addr v0, v2

    .line 27
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 34
    move-result v2

    .line 35
    mul-int/lit8 v2, v2, 0x2

    .line 37
    int-to-long v2, v2

    .line 38
    add-long/2addr v0, v2

    .line 39
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 46
    move-result v2

    .line 47
    mul-int/lit8 v2, v2, 0x2

    .line 49
    int-to-long v2, v2

    .line 50
    add-long/2addr v0, v2

    .line 51
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 58
    move-result v2

    .line 59
    mul-int/lit8 v2, v2, 0x2

    .line 61
    int-to-long v2, v2

    .line 62
    add-long/2addr v0, v2

    .line 63
    return-wide v0
.end method

.method public getRating()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "RATING"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "TITLE"

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->ALLOWED:Ljava/util/Set;

    .line 3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    :goto_15
    return p1
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "  |->Title      : "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "  |->Author     : "

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, "  |->Copyright  : "

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v2, "  |->Description: "

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string p1, "  |->Rating     :"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "AUTHOR"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "DESCRIPTION"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "COPYRIGHT"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "RATING"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "TITLE"

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public writeInto(Ljava/io/OutputStream;)J
    .registers 7

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getCurrentAsfChunkSize()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/Chunk;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 16
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getCurrentAsfChunkSize()J

    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v2, v3, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 23
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 30
    move-result v2

    .line 31
    mul-int/lit8 v2, v2, 0x2

    .line 33
    add-int/lit8 v2, v2, 0x2

    .line 35
    invoke-static {v2, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 38
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 45
    move-result v2

    .line 46
    mul-int/lit8 v2, v2, 0x2

    .line 48
    add-int/lit8 v2, v2, 0x2

    .line 50
    invoke-static {v2, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 53
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 60
    move-result v2

    .line 61
    mul-int/lit8 v2, v2, 0x2

    .line 63
    add-int/lit8 v2, v2, 0x2

    .line 65
    invoke-static {v2, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 68
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 75
    move-result v2

    .line 76
    mul-int/lit8 v2, v2, 0x2

    .line 78
    add-int/lit8 v2, v2, 0x2

    .line 80
    invoke-static {v2, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 83
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 90
    move-result v2

    .line 91
    mul-int/lit8 v2, v2, 0x2

    .line 93
    add-int/lit8 v2, v2, 0x2

    .line 95
    invoke-static {v2, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 98
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 104
    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 111
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    .line 113
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 116
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    .line 119
    move-result-object v4

    .line 120
    invoke-static {v4, v3}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 127
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    invoke-static {v4, v3}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 141
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    .line 147
    move-result-object v4

    .line 148
    invoke-static {v4, v3}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 155
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 158
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    .line 161
    move-result-object v4

    .line 162
    invoke-static {v4, v3}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 169
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 172
    return-wide v0
.end method
