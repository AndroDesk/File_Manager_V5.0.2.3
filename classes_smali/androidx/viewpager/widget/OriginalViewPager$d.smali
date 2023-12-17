.class public final Landroidx/viewpager/widget/OriginalViewPager$d;
.super Ljava/lang/Object;
.source "OriginalViewPager.java"

# interfaces
.implements Lm0/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/OriginalViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Landroidx/viewpager/widget/OriginalViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/OriginalViewPager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->b:Landroidx/viewpager/widget/OriginalViewPager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->a:Landroid/graphics/Rect;

    .line 13
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 8

    .line 1
    invoke-static {p1, p2}, Lm0/g0;->h(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 7
    invoke-virtual {p2}, Lm0/r0$k;->m()Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_d

    .line 13
    return-object p1

    .line 14
    :cond_d
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->a:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p1}, Lm0/r0;->c()I

    .line 19
    move-result v0

    .line 20
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 22
    invoke-virtual {p1}, Lm0/r0;->e()I

    .line 25
    move-result v0

    .line 26
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 28
    invoke-virtual {p1}, Lm0/r0;->d()I

    .line 31
    move-result v0

    .line 32
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 34
    invoke-virtual {p1}, Lm0/r0;->b()I

    .line 37
    move-result v0

    .line 38
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 40
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->b:Landroidx/viewpager/widget/OriginalViewPager;

    .line 43
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result v1

    .line 47
    :goto_2e
    if-ge v0, v1, :cond_6d

    .line 49
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->b:Landroidx/viewpager/widget/OriginalViewPager;

    .line 51
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, p1}, Lm0/g0;->b(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lm0/r0;->c()I

    .line 62
    move-result v3

    .line 63
    iget v4, p2, Landroid/graphics/Rect;->left:I

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 68
    move-result v3

    .line 69
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 71
    invoke-virtual {v2}, Lm0/r0;->e()I

    .line 74
    move-result v3

    .line 75
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 80
    move-result v3

    .line 81
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 83
    invoke-virtual {v2}, Lm0/r0;->d()I

    .line 86
    move-result v3

    .line 87
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 89
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 92
    move-result v3

    .line 93
    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 95
    invoke-virtual {v2}, Lm0/r0;->b()I

    .line 98
    move-result v2

    .line 99
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 104
    move-result v2

    .line 105
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 109
    goto :goto_2e

    .line 110
    :cond_6d
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 112
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 114
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 116
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 118
    invoke-virtual {p1, v0, v1, v2, p2}, Lm0/r0;->g(IIII)Lm0/r0;

    .line 121
    move-result-object p1

    .line 122
    return-object p1
.end method
