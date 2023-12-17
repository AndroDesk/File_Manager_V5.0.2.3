.class public Lcom/junrar/unpack/ppm/RangeCoder$SubRange;
.super Ljava/lang/Object;
.source "RangeCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/junrar/unpack/ppm/RangeCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubRange"
.end annotation


# instance fields
.field private highCount:J

.field private lowCount:J

.field private scale:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighCount()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->highCount:J

    .line 3
    return-wide v0
.end method

.method public getLowCount()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->lowCount:J

    .line 3
    const-wide v2, 0xffffffffL

    .line 8
    and-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public getScale()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->scale:J

    .line 3
    return-wide v0
.end method

.method public incScale(I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    .line 4
    move-result-wide v0

    .line 5
    int-to-long v2, p1

    .line 6
    add-long/2addr v0, v2

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 10
    return-void
.end method

.method public setHighCount(J)V
    .registers 5

    .line 1
    const-wide v0, 0xffffffffL

    .line 6
    and-long/2addr p1, v0

    .line 7
    iput-wide p1, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->highCount:J

    .line 9
    return-void
.end method

.method public setLowCount(J)V
    .registers 5

    .line 1
    const-wide v0, 0xffffffffL

    .line 6
    and-long/2addr p1, v0

    .line 7
    iput-wide p1, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->lowCount:J

    .line 9
    return-void
.end method

.method public setScale(J)V
    .registers 5

    .line 1
    const-wide v0, 0xffffffffL

    .line 6
    and-long/2addr p1, v0

    .line 7
    iput-wide p1, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->scale:J

    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "SubRange["

    .line 3
    const-string v1, "\n  lowCount="

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->lowCount:J

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "\n  highCount="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->highCount:J

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "\n  scale="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-wide v1, p0, Lcom/junrar/unpack/ppm/RangeCoder$SubRange;->scale:J

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "]"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
