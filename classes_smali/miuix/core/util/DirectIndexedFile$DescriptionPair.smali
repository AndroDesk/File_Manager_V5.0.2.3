.class Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptionPair"
.end annotation


# instance fields
.field private mDataItemDescriptionOffset:J

.field private mIndexGroupDescriptionOffset:J


# direct methods
.method private constructor <init>(JJ)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    .line 4
    iput-wide p3, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-void
.end method

.method public synthetic constructor <init>(JJLmiuix/core/util/DirectIndexedFile$1;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-void
.end method

.method public static synthetic access$000(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->write(Ljava/io/DataOutput;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$502(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$800(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$802(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    .line 3
    return-wide p1
.end method

.method private static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 8
    move-result-wide v2

    .line 9
    new-instance p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 11
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    .line 14
    return-object p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .registers 4

    .line 1
    if-eqz p1, :cond_c

    .line 3
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    .line 5
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 8
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    .line 10
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 13
    :cond_c
    const/16 p1, 0x10

    .line 15
    return p1
.end method
