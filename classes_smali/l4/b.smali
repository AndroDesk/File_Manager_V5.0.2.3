.class public abstract Ll4/b;
.super Ljava/io/OutputStream;
.source "CipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg4/d;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field public a:Ll4/j;

.field public b:Lg4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V
    .registers 5

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Ll4/b;->a:Ll4/j;

    invoke-virtual {p0, p2, p3, p4}, Ll4/b;->e(Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lg4/d;

    move-result-object p1

    iput-object p1, p0, Ll4/b;->b:Lg4/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Ll4/b;->a:Ll4/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll4/j;->c:Z

    return-void
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Ll4/b;->a:Ll4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public abstract e(Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lg4/d;
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Ll4/b;->a:Ll4/j;

    invoke-virtual {v0, p1}, Ll4/j;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 5

    iget-object v0, p0, Ll4/b;->a:Ll4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ll4/j;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Ll4/b;->b:Lg4/d;

    invoke-interface {v0, p2, p1, p3}, Lg4/d;->a(I[BI)I

    iget-object v0, p0, Ll4/b;->a:Ll4/j;

    invoke-virtual {v0, p1, p2, p3}, Ll4/j;->write([BII)V

    return-void
.end method
