.class public Lcom/junrar/unpack/ppm/RangeCoder;
.super Ljava/lang/Object;
.source "RangeCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/junrar/unpack/ppm/RangeCoder$SubRange;
    }
.end annotation


# static fields
.field private static final BOT:I = 0x8000

.field private static final TOP:I = 0x1000000

.field private static final uintMask:J = 0xffffffffL


# instance fields
.field private code:J

.field private low:J

.field private range:J

.field private final subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

.field private unpackRead:Lcom/junrar/unpack/Unpack;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 6
    invoke-direct {v0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 11
    return-void
.end method

.method private getChar()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->unpackRead:Lcom/junrar/unpack/Unpack;

    .line 3
    invoke-virtual {v0}, Lcom/junrar/unpack/Unpack;->getChar()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public ariDecNormalize()V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 5
    iget-wide v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 7
    add-long v6, v2, v4

    .line 9
    xor-long/2addr v6, v2

    .line 10
    const-wide/32 v8, 0x1000000

    .line 13
    cmp-long v6, v6, v8

    .line 15
    if-ltz v6, :cond_1e

    .line 17
    const-wide/32 v6, 0x8000

    .line 20
    cmp-long v1, v4, v6

    .line 22
    if-gez v1, :cond_19

    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v1, v0

    .line 27
    :goto_1a
    if-eqz v1, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    return-void

    .line 31
    :cond_1e
    :goto_1e
    const-wide v4, 0xffffffffL

    .line 36
    if-eqz v1, :cond_2d

    .line 38
    neg-long v1, v2

    .line 39
    const-wide/16 v6, 0x7fff

    .line 41
    and-long/2addr v1, v6

    .line 42
    and-long/2addr v1, v4

    .line 43
    iput-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 45
    move v1, v0

    .line 46
    :cond_2d
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    .line 48
    const/16 v6, 0x8

    .line 50
    shl-long/2addr v2, v6

    .line 51
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RangeCoder;->getChar()I

    .line 54
    move-result v7

    .line 55
    int-to-long v7, v7

    .line 56
    or-long/2addr v2, v7

    .line 57
    and-long/2addr v2, v4

    .line 58
    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    .line 60
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 62
    shl-long/2addr v2, v6

    .line 63
    and-long/2addr v2, v4

    .line 64
    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 66
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 68
    shl-long/2addr v2, v6

    .line 69
    and-long/2addr v2, v4

    .line 70
    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 72
    goto :goto_2
.end method

.method public decode()V
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 3
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 5
    iget-object v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 7
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getLowCount()J

    .line 10
    move-result-wide v4

    .line 11
    mul-long/2addr v4, v2

    .line 12
    add-long/2addr v4, v0

    .line 13
    const-wide v0, 0xffffffffL

    .line 18
    and-long v2, v4, v0

    .line 20
    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 22
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 24
    iget-object v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 26
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getHighCount()J

    .line 29
    move-result-wide v4

    .line 30
    iget-object v6, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 32
    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getLowCount()J

    .line 35
    move-result-wide v6

    .line 36
    sub-long/2addr v4, v6

    .line 37
    mul-long/2addr v4, v2

    .line 38
    and-long/2addr v0, v4

    .line 39
    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 41
    return-void
.end method

.method public getCurrentCount()I
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 3
    iget-object v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 5
    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    .line 8
    move-result-wide v2

    .line 9
    div-long/2addr v0, v2

    .line 10
    const-wide v2, 0xffffffffL

    .line 15
    and-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 18
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    .line 20
    iget-wide v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 22
    sub-long/2addr v2, v4

    .line 23
    div-long/2addr v2, v0

    .line 24
    long-to-int v0, v2

    .line 25
    return v0
.end method

.method public getCurrentShiftCount(I)J
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 3
    ushr-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 6
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    .line 8
    iget-wide v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 10
    sub-long/2addr v2, v4

    .line 11
    div-long/2addr v2, v0

    .line 12
    const-wide v0, 0xffffffffL

    .line 17
    and-long/2addr v0, v2

    .line 18
    return-wide v0
.end method

.method public getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 3
    return-object v0
.end method

.method public initDecoder(Lcom/junrar/unpack/Unpack;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->unpackRead:Lcom/junrar/unpack/Unpack;

    .line 3
    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    .line 7
    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 9
    const-wide v0, 0xffffffffL

    .line 14
    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_10
    const/4 v2, 0x4

    .line 18
    if-ge p1, v2, :cond_24

    .line 20
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    .line 22
    const/16 v4, 0x8

    .line 24
    shl-long/2addr v2, v4

    .line 25
    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RangeCoder;->getChar()I

    .line 28
    move-result v4

    .line 29
    int-to-long v4, v4

    .line 30
    or-long/2addr v2, v4

    .line 31
    and-long/2addr v2, v0

    .line 32
    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 36
    goto :goto_10

    .line 37
    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "RangeCoder["

    .line 3
    const-string v1, "\n  low="

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "\n  code="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "\n  range="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "\n  subrange="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "]"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
