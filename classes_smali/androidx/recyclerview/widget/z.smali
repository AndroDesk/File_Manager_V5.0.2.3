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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/f;

    .line 6
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 11
    new-instance v0, Landroidx/collection/d;

    .line 13
    invoke-direct {v0}, Landroidx/collection/d;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/z$a;

    .line 9
    if-nez v0, :cond_13

    .line 11
    invoke-static {}, Landroidx/recyclerview/widget/z$a;->a()Landroidx/recyclerview/widget/z$a;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 17
    invoke-virtual {v1, p1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_13
    iput-object p2, v0, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 22
    iget p1, v0, Landroidx/recyclerview/widget/z$a;->a:I

    .line 24
    or-int/lit8 p1, p1, 0x8

    .line 26
    iput p1, v0, Landroidx/recyclerview/widget/z$a;->a:I

    .line 28
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$b0;I)Landroidx/recyclerview/widget/RecyclerView$l$c;
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-gez p1, :cond_a

    .line 10
    return-object v0

    .line 11
    :cond_a
    iget-object v1, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 13
    invoke-virtual {v1, p1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/recyclerview/widget/z$a;

    .line 19
    if-eqz v1, :cond_48

    .line 21
    iget v2, v1, Landroidx/recyclerview/widget/z$a;->a:I

    .line 23
    and-int v3, v2, p2

    .line 25
    if-eqz v3, :cond_48

    .line 27
    not-int v3, p2

    .line 28
    and-int/2addr v2, v3

    .line 29
    iput v2, v1, Landroidx/recyclerview/widget/z$a;->a:I

    .line 31
    const/4 v3, 0x4

    .line 32
    if-ne p2, v3, :cond_24

    .line 34
    iget-object p2, v1, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    const/16 v3, 0x8

    .line 39
    if-ne p2, v3, :cond_40

    .line 41
    iget-object p2, v1, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 43
    :goto_2a
    and-int/lit8 v2, v2, 0xc

    .line 45
    if-nez v2, :cond_3f

    .line 47
    iget-object v2, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 49
    invoke-virtual {v2, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, v1, Landroidx/recyclerview/widget/z$a;->a:I

    .line 55
    iput-object v0, v1, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 57
    iput-object v0, v1, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 59
    sget-object p1, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    .line 61
    invoke-virtual {p1, v1}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 64
    :cond_3f
    return-object p2

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    const-string p2, "Must provide flag PRE or POST"

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    :cond_48
    return-object v0
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/recyclerview/widget/z$a;

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget v0, p1, Landroidx/recyclerview/widget/z$a;->a:I

    .line 14
    and-int/lit8 v0, v0, -0x2

    .line 16
    iput v0, p1, Landroidx/recyclerview/widget/z$a;->a:I

    .line 18
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/d;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_8
    if-ltz v0, :cond_24

    .line 11
    iget-object v2, p0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 13
    invoke-virtual {v2, v0}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    if-ne p1, v2, :cond_21

    .line 19
    iget-object v2, p0, Landroidx/recyclerview/widget/z;->b:Landroidx/collection/d;

    .line 21
    iget-object v3, v2, Landroidx/collection/d;->c:[Ljava/lang/Object;

    .line 23
    aget-object v4, v3, v0

    .line 25
    sget-object v5, Landroidx/collection/d;->e:Ljava/lang/Object;

    .line 27
    if-eq v4, v5, :cond_24

    .line 29
    aput-object v5, v3, v0

    .line 31
    iput-boolean v1, v2, Landroidx/collection/d;->a:Z

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    add-int/lit8 v0, v0, -0x1

    .line 36
    goto :goto_8

    .line 37
    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/recyclerview/widget/z;->a:Landroidx/collection/f;

    .line 39
    invoke-virtual {v0, p1}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroidx/recyclerview/widget/z$a;

    .line 45
    if-eqz p1, :cond_3b

    .line 47
    const/4 v0, 0x0

    .line 48
    iput v0, p1, Landroidx/recyclerview/widget/z$a;->a:I

    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p1, Landroidx/recyclerview/widget/z$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 53
    iput-object v0, p1, Landroidx/recyclerview/widget/z$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 55
    sget-object v0, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    .line 57
    invoke-virtual {v0, p1}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 60
    :cond_3b
    return-void
.end method
