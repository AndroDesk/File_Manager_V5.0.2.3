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
.field private static final BOT:I

.field private static final TOP:I

.field private static final uintMask:J = 0xffffffffL


# instance fields
.field private code:J

.field private low:J

.field private range:J

.field private final subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

.field private unpackRead:Lcom/junrar/unpack/Unpack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x9ad96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/RangeCoder;->BOT:I

    const v0, 0x1092d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/junrar/unpack/ppm/RangeCoder;->TOP:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-direct {v0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    return-void
.end method

.method private getChar()I
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->unpackRead:Lcom/junrar/unpack/Unpack;

    invoke-virtual {v0}, Lcom/junrar/unpack/Unpack;->getChar()I

    move-result v0

    return v0
.end method


# virtual methods
.method public ariDecNormalize()V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    iget-wide v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    add-long v6, v2, v4

    xor-long/2addr v6, v2

    const-wide/32 v8, 0x1000000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1e

    const-wide/32 v6, 0x8000

    cmp-long v1, v4, v6

    if-gez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    move v1, v0

    :goto_1a
    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    return-void

    :cond_1e
    :goto_1e
    const-wide v4, 0xffffffffL

    if-eqz v1, :cond_2d

    neg-long v1, v2

    const-wide/16 v6, 0x7fff

    and-long/2addr v1, v6

    and-long/2addr v1, v4

    iput-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    move v1, v0

    :cond_2d
    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RangeCoder;->getChar()I

    move-result v7

    int-to-long v7, v7

    or-long/2addr v2, v7

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    shl-long/2addr v2, v6

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    shl-long/2addr v2, v6

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    goto :goto_2
.end method

.method public decode()V
    .registers 9

    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    iget-object v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getLowCount()J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long/2addr v4, v0

    const-wide v0, 0xffffffffL

    and-long v2, v4, v0

    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    iget-object v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getHighCount()J

    move-result-wide v4

    iget-object v6, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getLowCount()J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long/2addr v4, v2

    and-long/2addr v0, v4

    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    return-void
.end method

.method public getCurrentCount()I
    .registers 7

    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    iget-object v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v2}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    iget-wide v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public getCurrentShiftCount(I)J
    .registers 8

    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    ushr-long/2addr v0, p1

    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    iget-wide v4, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    const-wide v0, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getSubRange()Lcom/junrar/unpack/ppm/RangeCoder$SubRange;
    .registers 2

    iget-object v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    return-object v0
.end method

.method public initDecoder(Lcom/junrar/unpack/Unpack;)V
    .registers 8

    iput-object p1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->unpackRead:Lcom/junrar/unpack/Unpack;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    const/4 p1, 0x0

    :goto_10
    const/4 v2, 0x4

    if-ge p1, v2, :cond_24

    iget-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    invoke-direct {p0}, Lcom/junrar/unpack/ppm/RangeCoder;->getChar()I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    and-long/2addr v2, v0

    iput-wide v2, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "RangeCoder["

    const-string v1, "\n  low="

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->low:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->code:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->range:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  subrange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/junrar/unpack/ppm/RangeCoder;->subRange:Lcom/junrar/unpack/ppm/RangeCoder$SubRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
