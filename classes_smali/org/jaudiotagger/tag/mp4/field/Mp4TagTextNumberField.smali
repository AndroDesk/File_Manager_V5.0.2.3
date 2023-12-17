.class public Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;
.super Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;
.source "Mp4TagTextNumberField.java"


# static fields
.field public static final NUMBER_LENGTH:I = 0x2


# instance fields
.field public numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
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
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 23
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->getNumbers()Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 29
    return-void
.end method

.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->getContent()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->getNumbers()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 19
    :cond_12
    return-void
.end method

.method public getDataBytes()[B
    .registers 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2a

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Short;

    .line 24
    :try_start_17
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeBEInt16(S)[B

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_23

    .line 35
    goto :goto_b

    .line 36
    :catch_23
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    .line 39
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    throw v1

    .line 43
    :cond_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 3
    return-object v0
.end method
