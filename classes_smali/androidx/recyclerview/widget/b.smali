.class public final Landroidx/recyclerview/widget/b;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/b$b;,
        Landroidx/recyclerview/widget/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/b$b;

.field public final b:Landroidx/recyclerview/widget/b$a;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 6
    new-instance p1, Landroidx/recyclerview/widget/b$a;

    .line 8
    invoke-direct {p1}, Landroidx/recyclerview/widget/b$a;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IZ)V
    .registers 5

    .line 1
    if-gez p2, :cond_b

    .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 5
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    .line 10
    move-result p2

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/b;->f(I)I

    .line 15
    move-result p2

    .line 16
    :goto_f
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 18
    invoke-virtual {v0, p2, p3}, Landroidx/recyclerview/widget/b$a;->e(IZ)V

    .line 21
    if-eqz p3, :cond_19

    .line 23
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->i(Landroid/view/View;)V

    .line 26
    :cond_19
    iget-object p3, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 28
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 30
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 35
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public final b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 7

    .line 1
    if-gez p2, :cond_b

    .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 5
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    .line 10
    move-result p2

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/b;->f(I)I

    .line 15
    move-result p2

    .line 16
    :goto_f
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 18
    invoke-virtual {v0, p2, p4}, Landroidx/recyclerview/widget/b$a;->e(IZ)V

    .line 21
    if-eqz p4, :cond_19

    .line 23
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->i(Landroid/view/View;)V

    .line 26
    :cond_19
    iget-object p4, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 28
    check-cast p4, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 30
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_4f

    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4c

    .line 45
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_33

    .line 51
    goto :goto_4c

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string p3, "Called attach on a child which is not detached: "

    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    iget-object p3, p4, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    invoke-static {p3, p2}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1

    .line 77
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearTmpDetachFlag()V

    .line 80
    :cond_4f
    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    invoke-static {p4, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method

.method public final c(I)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->f(I)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b$a;->f(I)Z

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 14
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_46

    .line 22
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_46

    .line 28
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_41

    .line 34
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_28

    .line 40
    goto :goto_41

    .line 41
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v3, "called detach on an already detached child "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    invoke-static {v0, v2}, La/a;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1

    .line 66
    :cond_41
    :goto_41
    const/16 v2, 0x100

    .line 68
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 71
    :cond_46
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 76
    return-void
.end method

.method public final d(I)Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->f(I)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final e()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final f(I)I
    .registers 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 7
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    .line 12
    move-result v1

    .line 13
    move v2, p1

    .line 14
    :goto_d
    if-ge v2, v1, :cond_29

    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 18
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b$a;->b(I)I

    .line 21
    move-result v3

    .line 22
    sub-int v3, v2, v3

    .line 24
    sub-int v3, p1, v3

    .line 26
    if-nez v3, :cond_27

    .line 28
    :goto_1b
    iget-object p1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 30
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_26

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_1b

    .line 39
    :cond_26
    return v2

    .line 40
    :cond_27
    add-int/2addr v2, v3

    .line 41
    goto :goto_d

    .line 42
    :cond_29
    return v0
.end method

.method public final g(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final h()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final i(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_17

    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 24
    :cond_17
    return-void
.end method

.method public final j(Landroid/view/View;)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    const/4 v0, -0x1

    .line 12
    if-ne p1, v0, :cond_e

    .line 14
    return v0

    .line 15
    :cond_e
    iget-object v1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 17
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_17

    .line 23
    return v0

    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 26
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b$a;->b(I)I

    .line 29
    move-result v0

    .line 30
    sub-int/2addr p1, v0

    .line 31
    return p1
.end method

.method public final k(Landroid/view/View;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final l(I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b;->f(I)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 20
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/b$a;->f(I)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1c

    .line 26
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->m(Landroid/view/View;)V

    .line 29
    :cond_1c
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 31
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 33
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->b(I)V

    .line 36
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    .line 11
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1a

    .line 22
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/b$a;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", hidden list:"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
