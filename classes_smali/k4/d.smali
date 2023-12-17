.class public final Lk4/d;
.super Lk4/c;
.source "InflaterInputStream.java"


# instance fields
.field public c:Ljava/util/zip/Inflater;

.field public d:[B

.field public e:[B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk4/b;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/b<",
            "*>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk4/c;-><init>(Lk4/b;)V

    const/4 p1, 0x1

    new-array v0, p1, [B

    iput-object v0, p0, Lk4/d;->e:[B

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    new-array p1, p2, [B

    iput-object p1, p0, Lk4/d;->d:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/PushbackInputStream;I)V
    .registers 4

    iget-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    :cond_a
    invoke-super {p0, p1, p2}, Lk4/c;->a(Ljava/io/PushbackInputStream;I)V

    return-void
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    :cond_7
    invoke-super {p0}, Lk4/c;->close()V

    return-void
.end method

.method public final e(Ljava/io/PushbackInputStream;)I
    .registers 5

    iget-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v1, p0, Lk4/c;->a:Lk4/b;

    iget-object v1, v1, Lk4/b;->c:[B

    iget v2, p0, Lk4/d;->f:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_12
    return v0
.end method

.method public final read()I
    .registers 3

    iget-object v0, p0, Lk4/d;->e:[B

    invoke-virtual {p0, v0}, Lk4/d;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lk4/d;->e:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/d;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 8

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3e

    iget-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_3e

    :cond_1a
    iget-object v0, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk4/d;->d:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-super {p0, v0, v3, v2}, Lk4/c;->read([BII)I

    move-result v0

    iput v0, p0, Lk4/d;->f:I

    if-eq v0, v1, :cond_36

    iget-object v1, p0, Lk4/d;->c:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lk4/d;->d:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    :cond_36
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "Unexpected end of input stream"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_3e} :catch_40

    :cond_3e
    :goto_3e
    return v1

    :cond_3f
    return v0

    :catch_40
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
