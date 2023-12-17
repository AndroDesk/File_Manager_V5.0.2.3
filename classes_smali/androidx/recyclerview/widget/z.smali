.class public final Landroidx/recyclerview/widget/z;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/z$a;,
        Landroidx/recyclerview/widget/z$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Landroidx/recyclerview/widget/z$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/z$a;

    if-nez v0, :cond_13

    invoke-static {}, Landroidx/recyclerview/widget/z$a;->a()Landroidx/recyclerview/widget/z$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iput-object p2, v0, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    iget p1, v0, Landroidx/recyclerview/widget/z$a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroidx/recyclerview/widget/z$a;->a:I

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$b0;I)Landroidx/recyclerview/widget/RecyclerView$l$c;
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_a

    return-object v0

    :cond_a
    iget-object v1, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    invoke-virtual {v1, p1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/z$a;

    if-eqz v1, :cond_48

    iget v2, v1, Landroidx/recyclerview/widget/z$a;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_48

    not-int v3, p2

    and-int/2addr v2, v3

    iput v2, v1, Landroidx/recyclerview/widget/z$a;->a:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_24

    iget-object p2, v1, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    goto :goto_2a

    :cond_24
    const/16 v3, 0x8

    if-ne p2, v3, :cond_40

    iget-object p2, v1, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    :goto_2a
    and-int/lit8 v2, v2, 0xc

    if-nez v2, :cond_3f

    iget-object v2, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    invoke-virtual {v2, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v1, Landroidx/recyclerview/widget/z$a;->a:I

    iput-object v0, v1, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    iput-object v0, v1, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    sget-object p1, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    invoke-virtual {p1, v1}, Lt/c;->release(Ljava/lang/Object;)Z

    :cond_3f
    return-object p2

    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    return-object v0
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/z$a;

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget v0, p1, Landroidx/recyclerview/widget/z$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroidx/recyclerview/widget/z$a;->a:I

    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 8

    iget-object v0, p0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    invoke-virtual {v0}, Landroidx/collection/d;->h()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_24

    iget-object v2, p0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    invoke-virtual {v2, v0}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_21

    iget-object v2, p0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    iget-object v3, v2, Landroidx/collection/d;->c:[Ljava/lang/Object;

    aget-object v4, v3, v0

    sget-object v5, Landroidx/collection/d;->e:Ljava/lang/Object;

    if-eq v4, v5, :cond_24

    aput-object v5, v3, v0

    iput-boolean v1, v2, Landroidx/collection/d;->a:Z

    goto :goto_24

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/z$a;

    if-eqz p1, :cond_3b

    const/4 v0, 0x0

    iput v0, p1, Landroidx/recyclerview/widget/z$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    iput-object v0, p1, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    sget-object v0, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    invoke-virtual {v0, p1}, Lt/c;->release(Ljava/lang/Object;)Z

    :cond_3b
    return-void
.end method
