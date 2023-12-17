.class public Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;
.super Ljava/lang/Object;
.source "MetadataDescriptor.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final DWORD_MAXVALUE:J

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final MAX_LANG_INDEX:I = 0x7f

.field public static final MAX_STREAM_NUMBER:I = 0x7f

.field public static final QWORD_MAXVALUE:Ljava/math/BigInteger;

.field public static final TYPE_BINARY:I = 0x1

.field public static final TYPE_BOOLEAN:I = 0x2

.field public static final TYPE_DWORD:I = 0x3

.field public static final TYPE_GUID:I = 0x6

.field public static final TYPE_QWORD:I = 0x4

.field public static final TYPE_STRING:I = 0x0

.field public static final TYPE_WORD:I = 0x5

.field public static final WORD_MAXVALUE:I = 0xffff


# instance fields
.field private final containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

.field private content:[B

.field private descriptorType:I

.field private languageIndex:I

.field private final name:Ljava/lang/String;

.field private streamNumber:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    const-string v0, "org.jaudiotagger.audio.asf.data"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 9

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    iput v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    iput v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    new-array v4, v0, [B

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iput p3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iput p4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iput p5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    return-void
.end method


# virtual methods
.method public asNumber()Ljava/math/BigInteger;
    .registers 7

    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    packed-switch v0, :pswitch_data_4c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_b  #0x6
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "GUID cannot be converted to a number."

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13  #0x1, 0x2, 0x3, 0x4, 0x5
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1c

    const/4 v0, 0x0

    goto :goto_2f

    :cond_1c
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Binary data would exceed QWORD"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24  #0x0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    :goto_2f
    if-nez v0, :cond_4b

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v0, :cond_45

    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v4, v3

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    move v2, v5

    goto :goto_37

    :cond_45
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    :cond_4b
    return-object v0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_13  #00000001
        :pswitch_13  #00000002
        :pswitch_13  #00000003
        :pswitch_13  #00000004
        :pswitch_13  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->compareTo(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)I
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public createCopy()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;
    .registers 8

    new-instance v6, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v0

    iput-object v0, v6, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    if-ne p1, p0, :cond_9

    goto :goto_37

    :cond_9
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    if-ne v0, v3, :cond_36

    iget v0, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    if-ne v0, v3, :cond_36

    iget v0, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    if-ne v0, v3, :cond_36

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    iget-object p1, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    return v1
.end method

.method public getBoolean()Z
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_b

    aget-byte v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    :cond_b
    return v2
.end method

.method public getBytes()[B
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->writeInto(Ljava/io/OutputStream;Lorg/jaudiotagger/audio/asf/data/ContainerType;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v1

    sget-object v2, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    return-object v0
.end method

.method public getCurrentAsfSize(Lorg/jaudiotagger/audio/asf/data/ContainerType;)I
    .registers 6

    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    if-eq p1, v0, :cond_7

    const/16 v1, 0xe

    goto :goto_9

    :cond_7
    const/16 v1, 0x8

    :goto_9
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1e

    add-int/2addr v2, v3

    if-ne p1, v0, :cond_2a

    goto :goto_28

    :cond_1e
    iget-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length p1, p1

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result p1

    if-nez p1, :cond_2a

    :goto_28
    add-int/lit8 v2, v2, 0x2

    :cond_2a
    return v2
.end method

.method public getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_16

    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([B)V

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method public getLanguageIndex()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()J
    .registers 9

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_31

    const/4 v3, 0x3

    if-eq v0, v3, :cond_32

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    move v1, v2

    goto :goto_32

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The current type doesn\'t allow an interpretation as a number. ("

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/16 v1, 0x8

    goto :goto_32

    :cond_31
    const/4 v1, 0x1

    :cond_32
    :goto_32
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    if-gt v1, v0, :cond_4c

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_3a
    if-ge v0, v1, :cond_4b

    iget-object v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    aget-byte v4, v4, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4b
    return-wide v2

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The stored data cannot represent the type of current object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRawData()[B
    .registers 5

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getRawDataSize()I
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    return v0
.end method

.method public getStreamNumber()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current type is not known."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f  #0x6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "Invalid GUID"

    goto :goto_4b

    :cond_18
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :pswitch_21  #0x3, 0x4, 0x5
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :pswitch_2a  #0x2
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :pswitch_33  #0x1
    const-string v0, "binary data"

    goto :goto_4b

    :pswitch_36  #0x0
    :try_start_36
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_4b

    :catch_40
    move-exception v0

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4b
    return-object v0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_33  #00000001
        :pswitch_2a  #00000002
        :pswitch_21  #00000003
        :pswitch_21  #00000004
        :pswitch_21  #00000005
        :pswitch_f  #00000006
    .end packed-switch
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setBinaryValue([B)V
    .registers 8

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void
.end method

.method public setBooleanValue(Z)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x2

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void
.end method

.method public setDWordValue(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    sget-wide v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_17

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x3

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value out of range (0-"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-wide v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGUIDValue(Lorg/jaudiotagger/audio/asf/data/GUID;)V
    .registers 8

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    iget v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    const/4 v3, 0x6

    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x6

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void
.end method

.method public setLanguageIndex(I)V
    .registers 8

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    return-void
.end method

.method public setQWordValue(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const/16 v0, 0x8

    invoke-static {p1, p2, v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x4

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value out of range (0-"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setQWordValue(Ljava/math/BigInteger;)V
    .registers 6

    if-eqz p1, :cond_4b

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_43

    sget-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3b

    const/16 v0, 0x8

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v1, p1

    if-gt v1, v0, :cond_31

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_22
    if-ltz v0, :cond_37

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v2, p1

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_31
    iget-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 v0, -0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_37
    const/4 p1, 0x4

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value exceeds QWORD (64 bit unsigned)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only unsigned values allowed (no negative)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "null"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStreamNumber(I)V
    .registers 8

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_41

    :pswitch_a  #0x6
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->parseGUID(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setGUIDValue(Lorg/jaudiotagger/audio/asf/data/GUID;)V

    goto :goto_40

    :pswitch_12  #0x5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setWordValue(I)V

    goto :goto_40

    :pswitch_1a  #0x4
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setQWordValue(Ljava/math/BigInteger;)V

    goto :goto_40

    :pswitch_25  #0x3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    goto :goto_40

    :pswitch_2d  #0x2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBooleanValue(Z)V

    goto :goto_40

    :pswitch_35  #0x1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot interpret binary as string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3d  #0x0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    :goto_40
    return-void

    :goto_41
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_45} :catch_45

    :catch_45
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value cannot be parsed as Number or is out of range (\""

    const-string v3, "\")"

    invoke-static {v2, p1, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3d  #00000000
        :pswitch_35  #00000001
        :pswitch_2d  #00000002
        :pswitch_25  #00000003
        :pswitch_1a  #00000004
        :pswitch_12  #00000005
        :pswitch_a  #00000006
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_8

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    goto :goto_43

    :cond_8
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    array-length v2, p1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isWithinValueRange(J)Z

    move-result v1

    if-eqz v1, :cond_1d

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    goto :goto_43

    :cond_1d
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isTruncateTextWithoutErrors()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_39

    goto :goto_3b

    :cond_39
    add-int/lit8 v1, v1, -0x1

    :goto_3b
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v2, v1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_43
    iput v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_DATA_IS_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWordValue(I)V
    .registers 4

    if-ltz p1, :cond_13

    const v0, 0xffff

    if-gt p1, v0, :cond_13

    int-to-long v0, p1

    const/4 p1, 0x2

    invoke-static {v0, v1, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x5

    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value out of range (0-65535)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "String: "

    const-string v3, "Binary: "

    const-string v4, "Boolean: "

    const-string v5, "DWORD: "

    const-string v6, "QWORD:"

    const-string v7, "WORD:"

    const-string v8, "GUID:"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeInto(Ljava/io/OutputStream;Lorg/jaudiotagger/audio/asf/data/ContainerType;)I
    .registers 9

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getCurrentAsfSize(Lorg/jaudiotagger/audio/asf/data/ContainerType;)I

    move-result v0

    iget v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    if-ne p2, v1, :cond_f

    const/4 v1, 0x4

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    new-array v1, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getBoolean()Z

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    goto :goto_1d

    :cond_1b
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    :goto_1d
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    if-eq p2, v3, :cond_2f

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v4

    invoke-static {v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v4

    invoke-static {v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    :cond_2f
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v2

    invoke-static {v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    if-ne p2, v3, :cond_50

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v2, v4}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_50
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v2

    invoke-static {v2, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    array-length v4, v1

    if-nez v2, :cond_5c

    add-int/lit8 v4, v4, 0x2

    :cond_5c
    if-ne p2, v3, :cond_62

    invoke-static {v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    goto :goto_66

    :cond_62
    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    :goto_66
    if-eq p2, v3, :cond_7a

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p2, v3}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    sget-object p2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_7a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    if-nez v2, :cond_84

    sget-object p2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_84
    return v0
.end method
