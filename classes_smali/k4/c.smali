.class public abstract Lk4/c;
.super Ljava/io/InputStream;
.source "DecompressedInputStream.java"


# instance fields
.field public a:Lk4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk4/b<",
            "*>;"
        }
    .end annotation
.end field

.field public b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lk4/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lk4/c;->b:[B

    iput-object p1, p0, Lk4/c;->a:Lk4/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/PushbackInputStream;I)V
    .registers 4

    iget-object v0, p0, Lk4/c;->a:Lk4/b;

    invoke-virtual {v0, p1, p2}, Lk4/b;->a(Ljava/io/PushbackInputStream;I)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lk4/c;->a:Lk4/b;

    invoke-virtual {v0}, Lk4/b;->close()V

    return-void
.end method

.method public e(Ljava/io/PushbackInputStream;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public read()I
    .registers 3

    iget-object v0, p0, Lk4/c;->b:[B

    invoke-virtual {p0, v0}, Lk4/c;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lk4/c;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk4/c;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lk4/c;->a:Lk4/b;

    invoke-virtual {v0, p1, p2, p3}, Lk4/b;->read([BII)I

    move-result p1

    return p1
.end method
