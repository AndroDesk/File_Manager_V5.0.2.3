.class public Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;
.super Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;
.source "Mp4TagByteField.java"


# static fields
.field public static TRUE_VALUE:Ljava/lang/String; = "1"


# instance fields
.field private bytedata:[B

.field private realDataLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V
    .registers 6

    .line 2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p3, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->realDataLength:I

    .line 4
    :try_start_9
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    .line 5
    :catch_d
    new-instance p3, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is invalid for field:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    new-instance v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;

    .line 8
    invoke-direct {v1, v0, p1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 11
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->dataSize:I

    .line 17
    add-int/lit8 p1, p1, -0x8

    .line 19
    iput p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->realDataLength:I

    .line 21
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->getByteData()[B

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->bytedata:[B

    .line 27
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public getDataBytes()[B
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->bytedata:[B

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->realDataLength:I

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_56

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_46

    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_20

    .line 17
    new-instance v0, Ljava/lang/Integer;

    .line 19
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-object v2, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, ":"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v3, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->realDataLength:I

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "Dont know how to write byte fields of this length"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0

    .line 71
    :cond_46
    new-instance v0, Ljava/lang/Short;

    .line 73
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 81
    move-result v0

    .line 82
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt16(S)[B

    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_56
    new-instance v0, Ljava/lang/Short;

    .line 89
    iget-object v2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 91
    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    .line 94
    new-array v1, v1, [B

    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Short;->byteValue()B

    .line 100
    move-result v0

    .line 101
    aput-byte v0, v1, v2

    .line 103
    return-object v1
.end method

.method public getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    return-object v0
.end method
