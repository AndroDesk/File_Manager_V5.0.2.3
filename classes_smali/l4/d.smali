.class public final Ll4/d;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"

# interfaces
.implements Ll4/g;


# instance fields
.field public a:Ljava/io/OutputStream;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Ll4/d;->b:J

    .line 8
    iput-object p1, p0, Ll4/d;->a:Ljava/io/OutputStream;

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Ll4/d;->e()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    .line 9
    check-cast v0, Ll4/h;

    .line 11
    iget v0, v0, Ll4/h;->d:I

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 6
    return-void
.end method

.method public final e()Z
    .registers 7

    .line 1
    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    .line 3
    instance-of v1, v0, Ll4/h;

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_18

    .line 9
    check-cast v0, Ll4/h;

    .line 11
    iget-wide v0, v0, Ll4/h;->b:J

    .line 13
    const-wide/16 v4, -0x1

    .line 15
    cmp-long v0, v0, v4

    .line 17
    if-eqz v0, :cond_14

    .line 19
    move v0, v2

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v3

    .line 22
    :goto_15
    if-eqz v0, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v2, v3

    .line 26
    :goto_19
    return v2
.end method

.method public final getFilePointer()J
    .registers 3

    .line 1
    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    .line 3
    instance-of v1, v0, Ll4/h;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Ll4/h;

    .line 9
    invoke-virtual {v0}, Ll4/h;->getFilePointer()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_d
    iget-wide v0, p0, Ll4/d;->b:J

    .line 16
    return-wide v0
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Ll4/d;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/d;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 6

    .line 3
    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-wide p1, p0, Ll4/d;->b:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ll4/d;->b:J

    return-void
.end method
