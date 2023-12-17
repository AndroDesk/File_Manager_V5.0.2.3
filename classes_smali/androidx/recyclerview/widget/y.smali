.class public final Landroidx/recyclerview/widget/y;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/y$b;,
        Landroidx/recyclerview/widget/y$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/y$b;

.field public b:Landroidx/recyclerview/widget/y$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/y$b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 6
    new-instance p1, Landroidx/recyclerview/widget/y$a;

    .line 8
    invoke-direct {p1}, Landroidx/recyclerview/widget/y$a;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(IIII)Landroid/view/View;
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 3
    invoke-interface {v0}, Landroidx/recyclerview/widget/y$b;->b()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 9
    invoke-interface {v1}, Landroidx/recyclerview/widget/y$b;->c()I

    .line 12
    move-result v1

    .line 13
    if-le p2, p1, :cond_10

    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v2, -0x1

    .line 18
    :goto_11
    const/4 v3, 0x0

    .line 19
    :goto_12
    if-eq p1, p2, :cond_4e

    .line 21
    iget-object v4, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 23
    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/y$b;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v4

    .line 27
    iget-object v5, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 29
    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/y$b;->a(Landroid/view/View;)I

    .line 32
    move-result v5

    .line 33
    iget-object v6, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 35
    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/y$b;->d(Landroid/view/View;)I

    .line 38
    move-result v6

    .line 39
    iget-object v7, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    .line 41
    iput v0, v7, Landroidx/recyclerview/widget/y$a;->b:I

    .line 43
    iput v1, v7, Landroidx/recyclerview/widget/y$a;->c:I

    .line 45
    iput v5, v7, Landroidx/recyclerview/widget/y$a;->d:I

    .line 47
    iput v6, v7, Landroidx/recyclerview/widget/y$a;->e:I

    .line 49
    if-eqz p3, :cond_3d

    .line 51
    or-int/lit8 v5, p3, 0x0

    .line 53
    iput v5, v7, Landroidx/recyclerview/widget/y$a;->a:I

    .line 55
    invoke-virtual {v7}, Landroidx/recyclerview/widget/y$a;->a()Z

    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3d

    .line 61
    return-object v4

    .line 62
    :cond_3d
    if-eqz p4, :cond_4c

    .line 64
    iget-object v5, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    .line 66
    or-int/lit8 v6, p4, 0x0

    .line 68
    iput v6, v5, Landroidx/recyclerview/widget/y$a;->a:I

    .line 70
    invoke-virtual {v5}, Landroidx/recyclerview/widget/y$a;->a()Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_4c

    .line 76
    move-object v3, v4

    .line 77
    :cond_4c
    add-int/2addr p1, v2

    .line 78
    goto :goto_12

    .line 79
    :cond_4e
    return-object v3
.end method

.method public final b(Landroid/view/View;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 5
    invoke-interface {v1}, Landroidx/recyclerview/widget/y$b;->b()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 11
    invoke-interface {v2}, Landroidx/recyclerview/widget/y$b;->c()I

    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 17
    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/y$b;->a(Landroid/view/View;)I

    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    .line 23
    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/y$b;->d(Landroid/view/View;)I

    .line 26
    move-result p1

    .line 27
    iput v1, v0, Landroidx/recyclerview/widget/y$a;->b:I

    .line 29
    iput v2, v0, Landroidx/recyclerview/widget/y$a;->c:I

    .line 31
    iput v3, v0, Landroidx/recyclerview/widget/y$a;->d:I

    .line 33
    iput p1, v0, Landroidx/recyclerview/widget/y$a;->e:I

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    .line 37
    const/16 v0, 0x6003

    .line 39
    or-int/lit8 v0, v0, 0x0

    .line 41
    iput v0, p1, Landroidx/recyclerview/widget/y$a;->a:I

    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/y$a;->a()Z

    .line 46
    move-result p1

    .line 47
    return p1
.end method
