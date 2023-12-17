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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/OriginalViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->b:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 8

    invoke-static {p1, p2}, Lm0/g0;->h(Landroid/view/View;Lm0/r0;)Lm0/r0;

    move-result-object p1

    iget-object p2, p1, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {p2}, Lm0/r0$k;->m()Z

    move-result p2

    if-eqz p2, :cond_d

    return-object p1

    :cond_d
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lm0/r0;->c()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lm0/r0;->e()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lm0/r0;->d()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lm0/r0;->b()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->b:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2e
    if-ge v0, v1, :cond_6d

    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager$d;->b:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lm0/g0;->b(Landroid/view/View;Lm0/r0;)Lm0/r0;

    move-result-object v2

    invoke-virtual {v2}, Lm0/r0;->c()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lm0/r0;->e()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lm0/r0;->d()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lm0/r0;->b()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_6d
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Lm0/r0;->g(IIII)Lm0/r0;

    move-result-object p1

    return-object p1
.end method
