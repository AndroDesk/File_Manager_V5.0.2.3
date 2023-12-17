.class public final Ll4/l;
.super Ll4/b;
.source "ZipStandardCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll4/b<",
        "Lo1/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ll4/b;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    .line 4
    return-void
.end method


# virtual methods
.method public final e(Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lg4/d;
    .registers 8

    .line 1
    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 7
    invoke-static {v0, v1}, La/b;->x(J)J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/32 v2, 0xffff

    .line 14
    and-long/2addr v0, v2

    .line 15
    const/16 p1, 0x10

    .line 17
    shl-long/2addr v0, p1

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    .line 21
    :goto_14
    new-instance p1, Lo1/a;

    .line 23
    invoke-direct {p1, p2, v0, v1, p3}, Lo1/a;-><init>([CJZ)V

    .line 26
    iget-object p2, p1, Lo1/a;->c:Ljava/lang/Object;

    .line 28
    check-cast p2, [B

    .line 30
    iget-object p3, p0, Ll4/b;->a:Ll4/j;

    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    array-length v0, p2

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p3, p2, v1, v0}, Ll4/j;->write([BII)V

    .line 40
    return-object p1
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 3
    invoke-super {p0, v1, v2, v0}, Ll4/b;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    .line 2
    invoke-super {p0, p1, v1, v0}, Ll4/b;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 4

    .line 4
    invoke-super {p0, p1, p2, p3}, Ll4/b;->write([BII)V

    return-void
.end method
