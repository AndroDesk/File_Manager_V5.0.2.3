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


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/d$a;

    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    .line 6
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/d$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/d$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/c;
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/c;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/constraintlayout/widget/c;

    .line 7
    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/c;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/c;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v1

    .line 21
    iget-object v2, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_1a
    if-ge v2, v1, :cond_93

    .line 29
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroidx/constraintlayout/widget/d$a;

    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 42
    move-result v5

    .line 43
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/c;->d:Z

    .line 45
    if-eqz v6, :cond_3a

    .line 47
    const/4 v6, -0x1

    .line 48
    if-eq v5, v6, :cond_32

    .line 50
    goto :goto_3a

    .line 51
    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    .line 53
    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0

    .line 59
    :cond_3a
    :goto_3a
    iget-object v6, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_54

    .line 71
    iget-object v6, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v7

    .line 77
    new-instance v8, Landroidx/constraintlayout/widget/c$a;

    .line 79
    invoke-direct {v8}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    .line 82
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_54
    iget-object v6, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Landroidx/constraintlayout/widget/c$a;

    .line 97
    if-nez v6, :cond_63

    .line 99
    goto :goto_90

    .line 100
    :cond_63
    instance-of v7, v3, Landroidx/constraintlayout/widget/b;

    .line 102
    if-eqz v7, :cond_8d

    .line 104
    check-cast v3, Landroidx/constraintlayout/widget/b;

    .line 106
    invoke-virtual {v6, v5, v4}, Landroidx/constraintlayout/widget/c$a;->d(ILandroidx/constraintlayout/widget/d$a;)V

    .line 109
    instance-of v7, v3, Landroidx/constraintlayout/widget/a;

    .line 111
    if-eqz v7, :cond_8d

    .line 113
    iget-object v7, v6, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 115
    const/4 v8, 0x1

    .line 116
    iput v8, v7, Landroidx/constraintlayout/widget/c$b;->i0:I

    .line 118
    check-cast v3, Landroidx/constraintlayout/widget/a;

    .line 120
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/a;->getType()I

    .line 123
    move-result v8

    .line 124
    iput v8, v7, Landroidx/constraintlayout/widget/c$b;->g0:I

    .line 126
    iget-object v7, v6, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 128
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/b;->getReferencedIds()[I

    .line 131
    move-result-object v8

    .line 132
    iput-object v8, v7, Landroidx/constraintlayout/widget/c$b;->j0:[I

    .line 134
    iget-object v7, v6, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    .line 136
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/a;->getMargin()I

    .line 139
    move-result v3

    .line 140
    iput v3, v7, Landroidx/constraintlayout/widget/c$b;->h0:I

    .line 142
    :cond_8d
    invoke-virtual {v6, v5, v4}, Landroidx/constraintlayout/widget/c$a;->d(ILandroidx/constraintlayout/widget/d$a;)V

    .line 145
    :goto_90
    add-int/lit8 v2, v2, 0x1

    .line 147
    goto :goto_1a

    .line 148
    :cond_93
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->a:Landroidx/constraintlayout/widget/c;

    .line 150
    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    return-void
.end method
