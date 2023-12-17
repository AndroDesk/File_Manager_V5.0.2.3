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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/y$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    new-instance p1, Landroidx/recyclerview/widget/y$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/y$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    return-void
.end method


# virtual methods
.method public final a(IIII)Landroid/view/View;
    .registers 13

    iget-object v0, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/y$b;->b()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/y$b;->c()I

    move-result v1

    if-le p2, p1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    const/4 v3, 0x0

    :goto_12
    if-eq p1, p2, :cond_4e

    iget-object v4, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/y$b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/y$b;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/y$b;->d(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    iput v0, v7, Landroidx/recyclerview/widget/y$a;->b:I

    iput v1, v7, Landroidx/recyclerview/widget/y$a;->c:I

    iput v5, v7, Landroidx/recyclerview/widget/y$a;->d:I

    iput v6, v7, Landroidx/recyclerview/widget/y$a;->e:I

    if-eqz p3, :cond_3d

    or-int/lit8 v5, p3, 0x0

    iput v5, v7, Landroidx/recyclerview/widget/y$a;->a:I

    invoke-virtual {v7}, Landroidx/recyclerview/widget/y$a;->a()Z

    move-result v5

    if-eqz v5, :cond_3d

    return-object v4

    :cond_3d
    if-eqz p4, :cond_4c

    iget-object v5, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    or-int/lit8 v6, p4, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/y$a;->a:I

    invoke-virtual {v5}, Landroidx/recyclerview/widget/y$a;->a()Z

    move-result v5

    if-eqz v5, :cond_4c

    move-object v3, v4

    :cond_4c
    add-int/2addr p1, v2

    goto :goto_12

    :cond_4e
    return-object v3
.end method

.method public final b(Landroid/view/View;)Z
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    iget-object v1, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/y$b;->b()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v2}, Landroidx/recyclerview/widget/y$b;->c()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/y$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/y;->a:Landroidx/recyclerview/widget/y$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/y$b;->d(Landroid/view/View;)I

    move-result p1

    iput v1, v0, Landroidx/recyclerview/widget/y$a;->b:I

    iput v2, v0, Landroidx/recyclerview/widget/y$a;->c:I

    iput v3, v0, Landroidx/recyclerview/widget/y$a;->d:I

    iput p1, v0, Landroidx/recyclerview/widget/y$a;->e:I

    iget-object p1, p0, Landroidx/recyclerview/widget/y;->b:Landroidx/recyclerview/widget/y$a;

    const/16 v0, 0x6003

    or-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroidx/recyclerview/widget/y$a;->a:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/y$a;->a()Z

    move-result p1

    return p1
.end method
