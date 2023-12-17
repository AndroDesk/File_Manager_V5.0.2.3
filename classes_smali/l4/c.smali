.class public abstract Ll4/c;
.super Ljava/io/OutputStream;
.source "CompressedOutputStream.java"


# instance fields
.field public a:Ll4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    iput-object p1, p0, Ll4/c;->a:Ll4/b;

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll4/c;->a:Ll4/b;

    .line 3
    invoke-virtual {v0}, Ll4/b;->a()V

    .line 6
    return-void
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll4/c;->a:Ll4/b;

    .line 3
    invoke-virtual {v0}, Ll4/b;->close()V

    .line 6
    return-void
.end method

.method public write(I)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Ll4/c;->write([B)V

    return-void
.end method

.method public write([B)V
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll4/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 3
    iget-object v0, p0, Ll4/c;->a:Ll4/b;

    invoke-virtual {v0, p1, p2, p3}, Ll4/b;->write([BII)V

    return-void
.end method
