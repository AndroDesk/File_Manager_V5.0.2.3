.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4FtypBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
    }
.end annotation


# static fields
.field private static final COMPATIBLE_BRAND_LENGTH:I = 0x4

.field private static final MAJOR_BRAND_LENGTH:I = 0x4

.field private static final MAJOR_BRAND_POS:I = 0x0

.field private static final MAJOR_BRAND_VERSION_LENGTH:I = 0x4

.field private static final MAJOR_BRAND_VERSION_POS:I = 0x4


# instance fields
.field private compatibleBrands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private majorBrand:Ljava/lang/String;

.field private majorBrandVersion:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->compatibleBrands:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 13
    iput-object p2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 15
    return-void
.end method


# virtual methods
.method public getCompatibleBrands()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->compatibleBrands:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getMajorBrand()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->majorBrand:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMajorBrandVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->majorBrandVersion:I

    .line 3
    return v0
.end method

.method public processData()V
    .registers 6

    .line 1
    const-string v0, "ISO-8859-1"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x4

    .line 12
    :try_start_b
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    iput-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->majorBrand:Ljava/lang/String;
    :try_end_21
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_b .. :try_end_21} :catch_21

    .line 34
    :catch_21
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 39
    move-result v3

    .line 40
    add-int/2addr v3, v1

    .line 41
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 55
    move-result v4

    .line 56
    add-int/2addr v4, v1

    .line 57
    add-int/lit8 v4, v4, -0x1

    .line 59
    invoke-static {v2, v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 62
    move-result v2

    .line 63
    iput v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->majorBrandVersion:I

    .line 65
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 70
    move-result v3

    .line 71
    add-int/2addr v3, v1

    .line 72
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    :goto_4a
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 80
    move-result v2

    .line 81
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 86
    move-result v3

    .line 87
    if-ge v2, v3, :cond_9d

    .line 89
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 94
    move-result v2

    .line 95
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 100
    move-result v3

    .line 101
    sub-int/2addr v2, v3

    .line 102
    if-lt v2, v1, :cond_9d

    .line 104
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 106
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 109
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 111
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 114
    :try_start_71
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    const-string v3, "\u0000\u0000\u0000\u0000"

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_92

    .line 142
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->compatibleBrands:Ljava/util/List;

    .line 144
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_71 .. :try_end_92} :catch_92

    .line 147
    :catch_92
    :cond_92
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 152
    move-result v3

    .line 153
    add-int/2addr v3, v1

    .line 154
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    goto :goto_4a

    .line 158
    :cond_9d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "Major Brand:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->majorBrand:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "Version:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->majorBrandVersion:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->compatibleBrands:Ljava/util/List;

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_4f

    .line 34
    const-string v1, "Compatible:"

    .line 36
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->compatibleBrands:Ljava/util/List;

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v1

    .line 46
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_44

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 58
    invoke-static {v0, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    const-string v2, ","

    .line 64
    invoke-static {v0, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    goto :goto_2d

    .line 69
    :cond_44
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 73
    move-result v2

    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    :cond_4f
    return-object v0
.end method
