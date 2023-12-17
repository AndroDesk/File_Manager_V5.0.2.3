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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ll4/b;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    return-void
.end method


# virtual methods
.method public final e(Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lg4/d;
    .registers 8

    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    if-eqz v0, :cond_12

    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    invoke-static {v0, v1}, La/b;->x(J)J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    goto :goto_14

    :cond_12
    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    :goto_14
    new-instance p1, Lo1/a;

    invoke-direct {p1, p2, v0, v1, p3}, Lo1/a;-><init>([CJZ)V

    iget-object p2, p1, Lo1/a;->c:Ljava/lang/Object;

    check-cast p2, [B

    iget-object p3, p0, Ll4/b;->a:Ll4/j;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1, v0}, Ll4/j;->write([BII)V

    return-object p1
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-super {p0, v1, v2, v0}, Ll4/b;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Ll4/b;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Ll4/b;->write([BII)V

    return-void
.end method
