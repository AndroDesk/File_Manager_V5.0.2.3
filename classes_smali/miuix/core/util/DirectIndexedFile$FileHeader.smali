.class Lmiuix/core/util/DirectIndexedFile$FileHeader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileHeader"
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x2

.field private static final FILE_TAG:[B


# instance fields
.field private mDataVersion:I

.field private mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_a

    .line 7
    sput-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_a
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method private constructor <init>(II)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 4
    iput p2, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    return-void
.end method

.method public synthetic constructor <init>(IILmiuix/core/util/DirectIndexedFile$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$FileHeader;-><init>(II)V

    return-void
.end method

.method public static synthetic access$1600(Lmiuix/core/util/DirectIndexedFile$FileHeader;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3700(Lmiuix/core/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->write(Ljava/io/DataOutput;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;
    .registers 6

    .line 1
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    .line 3
    array-length v0, v0

    .line 4
    new-array v1, v0, [B

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-ge v3, v0, :cond_12

    .line 10
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 13
    move-result v4

    .line 14
    aput-byte v4, v1, v3

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 18
    goto :goto_7

    .line 19
    :cond_12
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    .line 21
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_44

    .line 27
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x2

    .line 32
    if-ne v0, v1, :cond_3c

    .line 34
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 37
    move-result v0

    .line 38
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 41
    move-result v1

    .line 42
    new-instance v3, Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 44
    invoke-direct {v3, v0, v1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;-><init>(II)V

    .line 47
    :goto_2e
    if-ge v2, v0, :cond_3b

    .line 49
    iget-object v1, v3, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 51
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$000(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 54
    move-result-object v4

    .line 55
    aput-object v4, v1, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_2e

    .line 60
    :cond_3b
    return-object v3

    .line 61
    :cond_3c
    new-instance p0, Ljava/io/IOException;

    .line 63
    const-string v0, "File version unmatched, please upgrade your reader"

    .line 65
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0

    .line 69
    :cond_44
    new-instance p0, Ljava/io/IOException;

    .line 71
    const-string v0, "File tag unmatched, file may be corrupt"

    .line 73
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .registers 7

    .line 1
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, 0x4

    .line 6
    add-int/lit8 v1, v1, 0x4

    .line 8
    add-int/lit8 v1, v1, 0x4

    .line 10
    if-eqz p1, :cond_1d

    .line 12
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 19
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 21
    array-length v0, v0

    .line 22
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 25
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    .line 27
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 32
    array-length v2, v0

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_21
    if-ge v3, v2, :cond_2d

    .line 36
    aget-object v4, v0, v3

    .line 38
    invoke-static {v4, p1}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$100(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I

    .line 41
    move-result v4

    .line 42
    add-int/2addr v1, v4

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_21

    .line 46
    :cond_2d
    return v1
.end method
