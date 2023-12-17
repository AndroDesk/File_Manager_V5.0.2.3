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

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    new-instance v0, Ljava/math/BigInteger;

    .line 5
    const-string v1, "FFFFFFFF"

    .line 7
    const/16 v2, 0x10

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    .line 18
    const-string v0, "org.jaudiotagger.audio.asf.data"

    .line 20
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    .line 26
    new-instance v0, Ljava/math/BigInteger;

    .line 28
    const-string v1, "FFFFFFFFFFFFFFFF"

    .line 30
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 9

    .line 13
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

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V
    .registers 14

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 4
    iput v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 5
    iput v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    new-array v4, v0, [B

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 6
    invoke-virtual/range {v2 .. v7}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 7
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 8
    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 9
    iput p3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 10
    iput p4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 11
    iput p5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    return-void
.end method


# virtual methods
.method public asNumber()Ljava/math/BigInteger;
    .registers 7

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 3
    packed-switch v0, :pswitch_data_4c

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 11
    throw v0

    .line 12
    :pswitch_b  #0x6
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 14
    const-string v1, "GUID cannot be converted to a number."

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    :pswitch_13  #0x1, 0x2, 0x3, 0x4, 0x5
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 22
    array-length v0, v0

    .line 23
    const/16 v1, 0x8

    .line 25
    if-gt v0, v1, :cond_1c

    .line 27
    const/4 v0, 0x0

    .line 28
    goto :goto_2f

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 31
    const-string v1, "Binary data would exceed QWORD"

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0

    .line 37
    :pswitch_24  #0x0
    new-instance v0, Ljava/math/BigInteger;

    .line 39
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    const/16 v2, 0xa

    .line 45
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 48
    :goto_2f
    if-nez v0, :cond_4b

    .line 50
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 52
    array-length v0, v0

    .line 53
    new-array v1, v0, [B

    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_37
    if-ge v2, v0, :cond_45

    .line 58
    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 60
    array-length v4, v3

    .line 61
    add-int/lit8 v5, v2, 0x1

    .line 63
    sub-int/2addr v4, v5

    .line 64
    aget-byte v3, v3, v4

    .line 66
    aput-byte v3, v1, v2

    .line 68
    move v2, v5

    .line 69
    goto :goto_37

    .line 70
    :cond_45
    new-instance v0, Ljava/math/BigInteger;

    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 76
    :cond_4b
    return-object v0

    .line 77
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

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->compareTo(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)I
    .registers 3

    .line 2
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

    .line 1
    new-instance v6, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 5
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 7
    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 9
    iget v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 11
    iget v5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    .line 17
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v6, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 23
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_36

    .line 7
    if-ne p1, p0, :cond_9

    .line 9
    goto :goto_37

    .line 10
    :cond_9
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 12
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_36

    .line 26
    iget v0, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 28
    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 30
    if-ne v0, v3, :cond_36

    .line 32
    iget v0, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 34
    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 36
    if-ne v0, v3, :cond_36

    .line 38
    iget v0, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 40
    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 42
    if-ne v0, v3, :cond_36

    .line 44
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 46
    iget-object p1, p1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 48
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_36

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v1, v2

    .line 56
    :goto_37
    return v1
.end method

.method public getBoolean()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v1, :cond_b

    .line 7
    aget-byte v0, v0, v2

    .line 9
    if-eqz v0, :cond_b

    .line 11
    const/4 v2, 0x1

    .line 12
    :cond_b
    return v2
.end method

.method public getBytes()[B
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    :try_start_5
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 8
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->writeInto(Ljava/io/OutputStream;Lorg/jaudiotagger/audio/asf/data/ContainerType;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    .line 11
    goto :goto_15

    .line 12
    :catch_b
    move-exception v1

    .line 13
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 22
    :goto_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    return-object v0
.end method

.method public getCurrentAsfSize(Lorg/jaudiotagger/audio/asf/data/ContainerType;)I
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    if-eq p1, v0, :cond_7

    .line 5
    const/16 v1, 0xe

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/16 v1, 0x8

    .line 10
    :goto_9
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x2

    .line 19
    mul-int/2addr v2, v3

    .line 20
    add-int/2addr v2, v1

    .line 21
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 24
    move-result v1

    .line 25
    if-ne v1, v3, :cond_1e

    .line 27
    add-int/2addr v2, v3

    .line 28
    if-ne p1, v0, :cond_2a

    .line 30
    goto :goto_28

    .line 31
    :cond_1e
    iget-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 33
    array-length p1, p1

    .line 34
    add-int/2addr v2, p1

    .line 35
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2a

    .line 41
    :goto_28
    add-int/lit8 v2, v2, 0x2

    .line 43
    :cond_2a
    return v2
.end method

.method public getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-ne v0, v1, :cond_16

    .line 8
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 10
    array-length v0, v0

    .line 11
    const/16 v1, 0x10

    .line 13
    if-ne v0, v1, :cond_16

    .line 15
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 17
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 19
    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([B)V

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return-object v0
.end method

.method public getLanguageIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNumber()J
    .registers 9

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_31

    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v3, :cond_32

    .line 12
    if-eq v0, v1, :cond_2e

    .line 14
    const/4 v1, 0x5

    .line 15
    if-ne v0, v1, :cond_12

    .line 17
    move v1, v2

    .line 18
    goto :goto_32

    .line 19
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 21
    const-string v1, "The current type doesn\'t allow an interpretation as a number. ("

    .line 23
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ")"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 47
    :cond_2e
    const/16 v1, 0x8

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 v1, 0x1

    .line 51
    :cond_32
    :goto_32
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 53
    array-length v0, v0

    .line 54
    if-gt v1, v0, :cond_4c

    .line 56
    const-wide/16 v2, 0x0

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_3a
    if-ge v0, v1, :cond_4b

    .line 61
    iget-object v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 63
    aget-byte v4, v4, v0

    .line 65
    int-to-long v4, v4

    .line 66
    const-wide/16 v6, 0xff

    .line 68
    and-long/2addr v4, v6

    .line 69
    mul-int/lit8 v6, v0, 0x8

    .line 71
    shl-long/2addr v4, v6

    .line 72
    or-long/2addr v2, v4

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 75
    goto :goto_3a

    .line 76
    :cond_4b
    return-wide v2

    .line 77
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    const-string v1, "The stored data cannot represent the type of current object."

    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    throw v0
.end method

.method public getRawData()[B
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [B

    .line 6
    array-length v2, v0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-object v1
.end method

.method public getRawDataSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getStreamNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 3
    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_4c

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    const-string v1, "Current type is not known."

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0

    .line 16
    :pswitch_f  #0x6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_18

    .line 22
    const-string v0, "Invalid GUID"

    .line 24
    goto :goto_4b

    .line 25
    :cond_18
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_4b

    .line 34
    :pswitch_21  #0x3, 0x4, 0x5
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getNumber()J

    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    goto :goto_4b

    .line 43
    :pswitch_2a  #0x2
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getBoolean()Z

    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    goto :goto_4b

    .line 52
    :pswitch_33  #0x1
    const-string v0, "binary data"

    .line 54
    goto :goto_4b

    .line 55
    :pswitch_36  #0x0
    :try_start_36
    new-instance v0, Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 59
    const-string v2, "UTF-16LE"

    .line 61
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_3f} :catch_40

    .line 64
    goto :goto_4b

    .line 65
    :catch_40
    move-exception v0

    .line 66
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_4b
    return-object v0

    .line 77
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

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 3
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return v0
.end method

.method public setBinaryValue([B)V
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 5
    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 7
    iget v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 9
    iget v5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 11
    move-object v2, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 15
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [B

    .line 21
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 26
    return-void
.end method

.method public setBooleanValue(Z)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p1, v0, v1

    .line 7
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 9
    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 12
    return-void
.end method

.method public setDWordValue(J)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-ltz v0, :cond_17

    .line 7
    sget-wide v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    .line 9
    cmp-long v0, p1, v0

    .line 11
    if-gtz v0, :cond_17

    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-static {p1, p2, v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 20
    const/4 p1, 0x3

    .line 21
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 23
    return-void

    .line 24
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string p2, "value out of range (0-"

    .line 28
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object p2

    .line 32
    sget-wide v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    .line 34
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ")"

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1
.end method

.method public setGUIDValue(Lorg/jaudiotagger/audio/asf/data/GUID;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 8
    move-result-object v2

    .line 9
    iget v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 11
    iget v5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 13
    const/4 v3, 0x6

    .line 14
    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 23
    const/4 p1, 0x6

    .line 24
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 26
    return-void
.end method

.method public setLanguageIndex(I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 7
    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 9
    iget v4, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 11
    move v5, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 15
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 17
    return-void
.end method

.method public setQWordValue(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const/16 v0, 0x8

    .line 13
    invoke-static {p1, p2, v0}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x4

    .line 14
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    .line 15
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value out of range (0-"

    .line 16
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 17
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

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_43

    .line 2
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3b

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 4
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 5
    array-length v1, p1

    if-gt v1, v0, :cond_31

    .line 6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_22
    if-ltz v0, :cond_37

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v2, p1

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 8
    :cond_31
    iget-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 v0, -0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_37
    const/4 p1, 0x4

    .line 9
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    .line 10
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value exceeds QWORD (64 bit unsigned)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only unsigned values allowed (no negative)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4b
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "null"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStreamNumber(I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 7
    iget v3, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 9
    iget v5, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 11
    move v4, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 15
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 17
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_54

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    goto :goto_41

    .line 11
    :pswitch_a  #0x6
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->parseGUID(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setGUIDValue(Lorg/jaudiotagger/audio/asf/data/GUID;)V

    .line 18
    goto :goto_40

    .line 19
    :pswitch_12  #0x5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setWordValue(I)V

    .line 26
    goto :goto_40

    .line 27
    :pswitch_1a  #0x4
    new-instance v0, Ljava/math/BigInteger;

    .line 29
    const/16 v1, 0xa

    .line 31
    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setQWordValue(Ljava/math/BigInteger;)V

    .line 37
    goto :goto_40

    .line 38
    :pswitch_25  #0x3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 41
    move-result-wide v0

    .line 42
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    .line 45
    goto :goto_40

    .line 46
    :pswitch_2d  #0x2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBooleanValue(Z)V

    .line 53
    goto :goto_40

    .line 54
    :pswitch_35  #0x1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 56
    const-string v1, "Cannot interpret binary as string."

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    .line 62
    :pswitch_3d  #0x0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 65
    :goto_40
    return-void

    .line 66
    :goto_41
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 69
    throw v0
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_45} :catch_45

    .line 70
    :catch_45
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 73
    const-string v2, "Value cannot be parsed as Number or is out of range (\""

    .line 75
    const-string v3, "\")"

    .line 77
    invoke-static {v2, p1, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    throw v1

    .line 85
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_8

    .line 4
    new-array p1, v0, [B

    .line 6
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 8
    goto :goto_43

    .line 9
    :cond_8
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 11
    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 18
    move-result-object v1

    .line 19
    array-length v2, p1

    .line 20
    int-to-long v2, v2

    .line 21
    invoke-virtual {v1, v2, v3}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isWithinValueRange(J)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1d

    .line 27
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 29
    goto :goto_43

    .line 30
    :cond_1d
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isTruncateTextWithoutErrors()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_46

    .line 40
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    .line 51
    move-result-wide v1

    .line 52
    long-to-int v1, v1

    .line 53
    rem-int/lit8 v2, v1, 0x2

    .line 55
    if-nez v2, :cond_39

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    add-int/lit8 v1, v1, -0x1

    .line 60
    :goto_3b
    new-array v1, v1, [B

    .line 62
    iput-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 64
    array-length v2, v1

    .line 65
    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :goto_43
    iput v0, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 70
    return-void

    .line 71
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 73
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_DATA_IS_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 75
    const/4 v3, 0x3

    .line 76
    new-array v3, v3, [Ljava/lang/Object;

    .line 78
    array-length p1, p1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object p1

    .line 83
    aput-object p1, v3, v0

    .line 85
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    .line 92
    move-result-object p1

    .line 93
    const/4 v0, 0x1

    .line 94
    aput-object p1, v3, v0

    .line 96
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    const/4 v0, 0x2

    .line 109
    aput-object p1, v3, v0

    .line 111
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    throw v1
.end method

.method public setWordValue(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_13

    .line 3
    const v0, 0xffff

    .line 6
    if-gt p1, v0, :cond_13

    .line 8
    int-to-long v0, p1

    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-static {v0, v1, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 16
    const/4 p1, 0x5

    .line 17
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v0, "value out of range (0-65535)"

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " : "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "String: "

    .line 20
    const-string v3, "Binary: "

    .line 22
    const-string v4, "Boolean: "

    .line 24
    const-string v5, "DWORD: "

    .line 26
    const-string v6, "QWORD:"

    .line 28
    const-string v7, "WORD:"

    .line 30
    const-string v8, "GUID:"

    .line 32
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    iget v2, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 38
    aget-object v1, v1, v2

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " (language: "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, " / stream: "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 67
    const-string v2, ")"

    .line 69
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method

.method public writeInto(Ljava/io/OutputStream;Lorg/jaudiotagger/audio/asf/data/ContainerType;)I
    .registers 9

    .line 1
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getCurrentAsfSize(Lorg/jaudiotagger/audio/asf/data/ContainerType;)I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_1b

    .line 10
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 12
    if-ne p2, v1, :cond_f

    .line 14
    const/4 v1, 0x4

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v1, v2

    .line 17
    :goto_10
    new-array v1, v1, [B

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getBoolean()Z

    .line 23
    move-result v4

    .line 24
    int-to-byte v4, v4

    .line 25
    aput-byte v4, v1, v3

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 30
    :goto_1d
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 32
    if-eq p2, v3, :cond_2f

    .line 34
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    .line 37
    move-result v4

    .line 38
    invoke-static {v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 41
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    .line 44
    move-result v4

    .line 45
    invoke-static {v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 55
    move-result v4

    .line 56
    mul-int/2addr v4, v2

    .line 57
    add-int/2addr v4, v2

    .line 58
    invoke-static {v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 61
    if-ne p2, v3, :cond_50

    .line 63
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    sget-object v4, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 69
    invoke-static {v2, v4}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 76
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    .line 78
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 81
    :cond_50
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 84
    move-result v2

    .line 85
    invoke-static {v2, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 88
    array-length v4, v1

    .line 89
    if-nez v2, :cond_5c

    .line 91
    add-int/lit8 v4, v4, 0x2

    .line 93
    :cond_5c
    if-ne p2, v3, :cond_62

    .line 95
    invoke-static {v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 98
    goto :goto_66

    .line 99
    :cond_62
    int-to-long v4, v4

    .line 100
    invoke-static {v4, v5, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 103
    :goto_66
    if-eq p2, v3, :cond_7a

    .line 105
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 108
    move-result-object p2

    .line 109
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 111
    invoke-static {p2, v3}, Lorg/jaudiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 118
    sget-object p2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    .line 120
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 123
    :cond_7a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 126
    if-nez v2, :cond_84

    .line 128
    sget-object p2, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    .line 130
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 133
    :cond_84
    return v0
.end method
