.class public final Ll4/j;
.super Ljava/io/OutputStream;
.source "ZipEntryOutputStream.java"


# instance fields
.field public a:J

.field public b:Ljava/io/OutputStream;

.field public c:Z


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Ll4/j;->a:J

    .line 8
    iput-object p1, p0, Ll4/j;->b:Ljava/io/OutputStream;

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Ll4/j;->c:Z

    .line 13
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    return-void
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Ll4/j;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/j;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 6

    .line 3
    iget-boolean v0, p0, Ll4/j;->c:Z

    if-nez v0, :cond_10

    .line 4
    iget-object v0, p0, Ll4/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-wide p1, p0, Ll4/j;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ll4/j;->a:J

    return-void

    .line 6
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ZipEntryOutputStream is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
