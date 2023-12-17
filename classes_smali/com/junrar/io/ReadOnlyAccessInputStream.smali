.class public Lcom/junrar/io/ReadOnlyAccessInputStream;
.super Ljava/io/InputStream;
.source "ReadOnlyAccessInputStream.java"


# instance fields
.field private curPos:J

.field private final endPos:J

.field private file:Lcom/junrar/io/IReadOnlyAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/junrar/io/IReadOnlyAccess;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->file:Lcom/junrar/io/IReadOnlyAccess;

    iput-wide p2, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    iput-wide p4, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->endPos:J

    invoke-interface {p1, p2, p3}, Lcom/junrar/io/IReadOnlyAccess;->setPosition(J)V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 6

    iget-wide v0, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    iget-wide v2, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->endPos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    iget-object v0, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->file:Lcom/junrar/io/IReadOnlyAccess;

    invoke-interface {v0}, Lcom/junrar/io/IReadOnlyAccess;->read()I

    move-result v0

    iget-wide v1, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    return v0
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/junrar/io/ReadOnlyAccessInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 11

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-wide v0, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    iget-wide v2, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->endPos:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    iget-object v4, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->file:Lcom/junrar/io/IReadOnlyAccess;

    int-to-long v5, p3

    sub-long/2addr v2, v0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-interface {v4, p1, p2, p3}, Lcom/junrar/io/IReadOnlyAccess;->read([BII)I

    move-result p1

    iget-wide p2, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/junrar/io/ReadOnlyAccessInputStream;->curPos:J

    return p1
.end method
