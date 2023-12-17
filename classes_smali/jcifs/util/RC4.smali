.class public Ljcifs/util/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# instance fields
.field public i:I

.field public j:I

.field public s:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/util/RC4;->init([BII)V

    return-void
.end method


# virtual methods
.method public init([BII)V
    .registers 11

    .line 1
    const/16 v0, 0x100

    .line 3
    new-array v1, v0, [B

    .line 5
    iput-object v1, p0, Ljcifs/util/RC4;->s:[B

    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Ljcifs/util/RC4;->i:I

    .line 10
    :goto_9
    iget v2, p0, Ljcifs/util/RC4;->i:I

    .line 12
    if-lt v2, v0, :cond_36

    .line 14
    iput v1, p0, Ljcifs/util/RC4;->j:I

    .line 16
    iput v1, p0, Ljcifs/util/RC4;->i:I

    .line 18
    :goto_11
    iget v2, p0, Ljcifs/util/RC4;->i:I

    .line 20
    if-lt v2, v0, :cond_1a

    .line 22
    iput v1, p0, Ljcifs/util/RC4;->j:I

    .line 24
    iput v1, p0, Ljcifs/util/RC4;->i:I

    .line 26
    return-void

    .line 27
    :cond_1a
    iget v3, p0, Ljcifs/util/RC4;->j:I

    .line 29
    rem-int v4, v2, p3

    .line 31
    add-int/2addr v4, p2

    .line 32
    aget-byte v4, p1, v4

    .line 34
    add-int/2addr v3, v4

    .line 35
    iget-object v4, p0, Ljcifs/util/RC4;->s:[B

    .line 37
    aget-byte v5, v4, v2

    .line 39
    add-int/2addr v3, v5

    .line 40
    and-int/lit16 v3, v3, 0xff

    .line 42
    iput v3, p0, Ljcifs/util/RC4;->j:I

    .line 44
    aget-byte v6, v4, v3

    .line 46
    aput-byte v6, v4, v2

    .line 48
    aput-byte v5, v4, v3

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    iput v2, p0, Ljcifs/util/RC4;->i:I

    .line 54
    goto :goto_11

    .line 55
    :cond_36
    iget-object v3, p0, Ljcifs/util/RC4;->s:[B

    .line 57
    int-to-byte v4, v2

    .line 58
    aput-byte v4, v3, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 62
    iput v2, p0, Ljcifs/util/RC4;->i:I

    .line 64
    goto :goto_9
.end method

.method public update([BII[BI)V
    .registers 11

    .line 1
    add-int/2addr p3, p2

    .line 2
    :goto_1
    if-lt p2, p3, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    iget v0, p0, Ljcifs/util/RC4;->i:I

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 11
    iput v0, p0, Ljcifs/util/RC4;->i:I

    .line 13
    iget v1, p0, Ljcifs/util/RC4;->j:I

    .line 15
    iget-object v2, p0, Ljcifs/util/RC4;->s:[B

    .line 17
    aget-byte v3, v2, v0

    .line 19
    add-int/2addr v1, v3

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 22
    iput v1, p0, Ljcifs/util/RC4;->j:I

    .line 24
    aget-byte v4, v2, v1

    .line 26
    aput-byte v4, v2, v0

    .line 28
    aput-byte v3, v2, v1

    .line 30
    add-int/lit8 v1, p5, 0x1

    .line 32
    add-int/lit8 v4, p2, 0x1

    .line 34
    aget-byte p2, p1, p2

    .line 36
    aget-byte v0, v2, v0

    .line 38
    add-int/2addr v0, v3

    .line 39
    and-int/lit16 v0, v0, 0xff

    .line 41
    aget-byte v0, v2, v0

    .line 43
    xor-int/2addr p2, v0

    .line 44
    int-to-byte p2, p2

    .line 45
    aput-byte p2, p4, p5

    .line 47
    move p5, v1

    .line 48
    move p2, v4

    .line 49
    goto :goto_1
.end method
