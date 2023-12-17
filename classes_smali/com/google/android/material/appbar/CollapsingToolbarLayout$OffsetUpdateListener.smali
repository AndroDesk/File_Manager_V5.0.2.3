.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 11

    .line 1
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 3
    iput p2, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 5
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lm0/r0;

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_e

    .line 10
    invoke-virtual {p1}, Lm0/r0;->e()I

    .line 13
    move-result p1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move p1, v0

    .line 16
    :goto_f
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v1

    .line 22
    move v2, v0

    .line 23
    :goto_16
    if-ge v2, v1, :cond_4f

    .line 25
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 27
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 37
    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 40
    move-result-object v5

    .line 41
    iget v6, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 43
    const/4 v7, 0x1

    .line 44
    if-eq v6, v7, :cond_3e

    .line 46
    const/4 v3, 0x2

    .line 47
    if-eq v6, v3, :cond_31

    .line 49
    goto :goto_4c

    .line 50
    :cond_31
    neg-int v3, p2

    .line 51
    int-to-float v3, v3

    .line 52
    iget v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 54
    mul-float/2addr v3, v4

    .line 55
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 58
    move-result v3

    .line 59
    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 62
    goto :goto_4c

    .line 63
    :cond_3e
    neg-int v4, p2

    .line 64
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 66
    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    .line 69
    move-result v3

    .line 70
    invoke-static {v4, v0, v3}, La/b;->q(III)I

    .line 73
    move-result v3

    .line 74
    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 77
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_16

    .line 80
    :cond_4f
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 85
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 87
    iget-object v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 89
    if-eqz v1, :cond_61

    .line 91
    if-lez p1, :cond_61

    .line 93
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 95
    invoke-static {v0}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 98
    :cond_61
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 103
    move-result v0

    .line 104
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 106
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 108
    invoke-static {v1}, Lm0/g0$d;->d(Landroid/view/View;)I

    .line 111
    move-result v1

    .line 112
    sub-int/2addr v0, v1

    .line 113
    sub-int/2addr v0, p1

    .line 114
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 116
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 118
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 121
    move-result p2

    .line 122
    int-to-float p2, p2

    .line 123
    int-to-float v0, v0

    .line 124
    div-float/2addr p2, v0

    .line 125
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 128
    return-void
.end method
