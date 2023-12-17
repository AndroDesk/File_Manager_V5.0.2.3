.class public final Ll4/e;
.super Ll4/c;
.source "DeflaterOutputStream.java"


# instance fields
.field public b:[B

.field public c:Ljava/util/zip/Deflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ll4/b;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/b<",
            "*>;",
            "Lnet/lingala/zip4j/model/enums/CompressionLevel;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ll4/c;-><init>(Ll4/b;)V

    new-instance p1, Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->getLevel()I

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    new-array p1, p3, [B

    iput-object p1, p0, Ll4/e;->b:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :cond_d
    :goto_d
    iget-object v0, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    iget-object v1, p0, Ll4/e;->b:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v1, p0, Ll4/e;->b:[B

    invoke-super {p0, v1, v3, v0}, Ll4/c;->write([BII)V

    goto :goto_d

    :cond_27
    iget-object v0, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    invoke-super {p0}, Ll4/c;->a()V

    return-void
.end method

.method public final write(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Ll4/e;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/e;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 5

    iget-object v0, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    :cond_5
    :goto_5
    iget-object p1, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Ll4/e;->c:Ljava/util/zip/Deflater;

    iget-object p2, p0, Ll4/e;->b:[B

    array-length p3, p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p2, p0, Ll4/e;->b:[B

    invoke-super {p0, p2, v0, p1}, Ll4/c;->write([BII)V

    goto :goto_5

    :cond_1f
    return-void
.end method
