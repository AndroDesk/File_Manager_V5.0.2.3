.class Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexGroupDescriptor"
.end annotation


# instance fields
.field public mMaxIndex:I

.field public mMinIndex:I

.field public mOffset:J


# direct methods
.method private constructor <init>(IIJ)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 4
    iput p2, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 5
    iput-wide p3, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    return-void
.end method

.method public synthetic constructor <init>(IIJLmiuix/core/util/DirectIndexedFile$1;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-void
.end method

.method public static synthetic access$3800(Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->write(Ljava/io/DataOutput;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 4
    move-result v0

    .line 5
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 8
    move-result v1

    .line 9
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 12
    move-result-wide v2

    .line 13
    new-instance p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 15
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    .line 18
    return-object p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .registers 4

    .line 1
    if-eqz p1, :cond_11

    .line 3
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 8
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 10
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 13
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    .line 15
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 18
    :cond_11
    const/16 p1, 0x10

    .line 20
    return p1
.end method
