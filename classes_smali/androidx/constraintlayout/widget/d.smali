.class public final Landroidx/constraintlayout/widget/d;
.super Landroid/view/ViewGroup;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/d$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/widget/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidx/constraintlayout/widget/d$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/d$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/c;
    .registers 10

    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/c;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/c;

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_93

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/d$a;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    iget-boolean v6, v0, Landroidx/constraintlayout/widget/c;->d:Z

    if-eqz v6, :cond_3a

    const/4 v6, -0x1

    if-eq v5, v6, :cond_32

    goto :goto_3a

    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    :goto_3a
    iget-object v6, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    iget-object v6, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v8}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    iget-object v6, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/c$a;

    if-nez v6, :cond_63

    goto :goto_90

    :cond_63
    instance-of v7, v3, Landroidx/constraintlayout/widget/b;

    if-eqz v7, :cond_8d

    check-cast v3, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v6, v5, v4}, Landroidx/constraintlayout/widget/c$a;->d(ILandroidx/constraintlayout/widget/d$a;)V

    instance-of v7, v3, Landroidx/constraintlayout/widget/a;

    if-eqz v7, :cond_8d

    iget-object v7, v6, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    const/4 v8, 0x1

    iput v8, v7, Landroidx/constraintlayout/widget/c$b;->i0:I

    check-cast v3, Landroidx/constraintlayout/widget/a;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/a;->getType()I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/c$b;->g0:I

    iget-object v7, v6, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/b;->getReferencedIds()[I

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/widget/c$b;->j0:[I

    iget-object v7, v6, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/a;->getMargin()I

    move-result v3

    iput v3, v7, Landroidx/constraintlayout/widget/c$b;->h0:I

    :cond_8d
    invoke-virtual {v6, v5, v4}, Landroidx/constraintlayout/widget/c$a;->d(ILandroidx/constraintlayout/widget/d$a;)V

    :goto_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_93
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/c;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    return-void
.end method
