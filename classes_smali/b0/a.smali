.class public final Lb0/a;
.super Ljava/lang/Object;
.source "DirectedAcyclicGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lt/c;

.field public final b:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "TT;",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lt/c;

    .line 6
    const/16 v1, 0xa

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v1, v2}, Lt/c;-><init>(II)V

    .line 12
    iput-object v0, p0, Lb0/a;->a:Lt/c;

    .line 14
    new-instance v0, Landroidx/collection/f;

    .line 16
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 19
    iput-object v0, p0, Lb0/a;->b:Landroidx/collection/f;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v0, p0, Lb0/a;->c:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    iput-object v0, p0, Lb0/a;->d:Ljava/util/HashSet;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/HashSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_32

    .line 14
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lb0/a;->b:Landroidx/collection/f;

    .line 19
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 25
    if-eqz v0, :cond_2b

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v2

    .line 32
    :goto_1f
    if-ge v1, v2, :cond_2b

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0, v3, p2, p3}, Lb0/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_1f

    .line 44
    :cond_2b
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void

    .line 51
    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    const-string p2, "This graph contains cyclic dependencies"

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method
