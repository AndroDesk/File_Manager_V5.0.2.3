.class public final Ll4/d;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"

# interfaces
.implements Ll4/g;


# instance fields
.field public a:Ljava/io/OutputStream;

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll4/d;->b:J

    iput-object p1, p0, Ll4/d;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-virtual {p0}, Ll4/d;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    check-cast v0, Ll4/h;

    iget v0, v0, Ll4/h;->d:I

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final e()Z
    .registers 7

    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    instance-of v1, v0, Ll4/h;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    check-cast v0, Ll4/h;

    iget-wide v0, v0, Ll4/h;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v3

    :goto_15
    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    return v2
.end method

.method public final getFilePointer()J
    .registers 3

    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    instance-of v1, v0, Ll4/h;

    if-eqz v1, :cond_d

    check-cast v0, Ll4/h;

    invoke-virtual {v0}, Ll4/h;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    :cond_d
    iget-wide v0, p0, Ll4/d;->b:J

    return-wide v0
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Ll4/d;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/d;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 6

    iget-object v0, p0, Ll4/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Ll4/d;->b:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ll4/d;->b:J

    return-void
.end method
