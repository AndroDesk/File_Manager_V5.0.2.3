.class public final Ls1/n$e;
.super Ljava/util/AbstractCollection;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/n;


# direct methods
.method public constructor <init>(Ls1/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ls1/n$e;->a:Ls1/n;

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/n$e;->a:Ls1/n;

    .line 3
    invoke-virtual {v0}, Ls1/n;->clear()V

    .line 6
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ls1/n$e;->a:Ls1/n;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/n$e;->a:Ls1/n;

    .line 3
    iget v0, v0, Ls1/n;->c:I

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/n$e;->a:Ls1/n;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Ls1/n$d;

    .line 8
    invoke-direct {v1, v0}, Ls1/n$d;-><init>(Ls1/n;)V

    .line 11
    return-object v1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/n$e;->a:Ls1/n;

    .line 3
    iget v0, v0, Ls1/n;->c:I

    .line 5
    return v0
.end method
