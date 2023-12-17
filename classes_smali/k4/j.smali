.class public final Lk4/j;
.super Ljava/io/InputStream;
.source "ZipEntryInputStream.java"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:J

.field public c:[B

.field public d:J


# direct methods
.method public constructor <init>(Ljava/io/PushbackInputStream;J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lk4/j;->b:J

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [B

    .line 11
    iput-object v0, p0, Lk4/j;->c:[B

    .line 13
    iput-object p1, p0, Lk4/j;->a:Ljava/io/InputStream;

    .line 15
    iput-wide p2, p0, Lk4/j;->d:J

    .line 17
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lk4/j;->a:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    return-void
.end method

.method public final read()I
    .registers 3

    .line 1
    iget-object v0, p0, Lk4/j;->c:[B

    invoke-virtual {p0, v0}, Lk4/j;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 2
    :cond_a
    iget-object v0, p0, Lk4/j;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final read([B)I
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/j;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 12

    .line 4
    iget-wide v0, p0, Lk4/j;->d:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    .line 5
    iget-wide v2, p0, Lk4/j;->b:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_10

    const/4 p1, -0x1

    return p1

    :cond_10
    int-to-long v4, p3

    sub-long v6, v0, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_19

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 6
    :cond_19
    iget-object v0, p0, Lk4/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_27

    .line 7
    iget-wide p2, p0, Lk4/j;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lk4/j;->b:J

    :cond_27
    return p1
.end method
