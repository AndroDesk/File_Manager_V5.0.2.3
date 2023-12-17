.class public Ljcifs/util/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# instance fields
.field public i:I

.field public j:I

.field public s:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/util/RC4;->init([BII)V

    return-void
.end method


# virtual methods
.method public init([BII)V
    .registers 11

    const/16 v0, 0x100

    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/util/RC4;->s:[B

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/RC4;->i:I

    :goto_9
    iget v2, p0, Ljcifs/util/RC4;->i:I

    if-lt v2, v0, :cond_36

    iput v1, p0, Ljcifs/util/RC4;->j:I

    iput v1, p0, Ljcifs/util/RC4;->i:I

    :goto_11
    iget v2, p0, Ljcifs/util/RC4;->i:I

    if-lt v2, v0, :cond_1a

    iput v1, p0, Ljcifs/util/RC4;->j:I

    iput v1, p0, Ljcifs/util/RC4;->i:I

    return-void

    :cond_1a
    iget v3, p0, Ljcifs/util/RC4;->j:I

    rem-int v4, v2, p3

    add-int/2addr v4, p2

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Ljcifs/util/RC4;->s:[B

    aget-byte v5, v4, v2

    add-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Ljcifs/util/RC4;->j:I

    aget-byte v6, v4, v3

    aput-byte v6, v4, v2

    aput-byte v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/util/RC4;->i:I

    goto :goto_11

    :cond_36
    iget-object v3, p0, Ljcifs/util/RC4;->s:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/util/RC4;->i:I

    goto :goto_9
.end method

.method public update([BII[BI)V
    .registers 11

    add-int/2addr p3, p2

    :goto_1
    if-lt p2, p3, :cond_4

    return-void

    :cond_4
    iget v0, p0, Ljcifs/util/RC4;->i:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/util/RC4;->i:I

    iget v1, p0, Ljcifs/util/RC4;->j:I

    iget-object v2, p0, Ljcifs/util/RC4;->s:[B

    aget-byte v3, v2, v0

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Ljcifs/util/RC4;->j:I

    aget-byte v4, v2, v1

    aput-byte v4, v2, v0

    aput-byte v3, v2, v1

    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    aget-byte v0, v2, v0

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    move p5, v1

    move p2, v4

    goto :goto_1
.end method
