.class public final Ls1/n$d;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Ls1/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/n<",
            "TE;TK;TV;>.b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/n;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ls1/n$b;

    .line 6
    invoke-direct {v0, p1}, Ls1/n$b;-><init>(Ls1/n;)V

    .line 9
    iput-object v0, p0, Ls1/n$d;->a:Ls1/n$b;

    .line 11
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/n$d;->a:Ls1/n$b;

    .line 3
    invoke-virtual {v0}, Ls1/n$b;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/n$d;->a:Ls1/n$b;

    .line 3
    invoke-virtual {v0}, Ls1/n$b;->a()Ls1/n$a;

    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 9
    return-object v0
.end method

.method public final remove()V
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/n$d;->a:Ls1/n$b;

    .line 3
    invoke-virtual {v0}, Ls1/n$b;->remove()V

    .line 6
    return-void
.end method
