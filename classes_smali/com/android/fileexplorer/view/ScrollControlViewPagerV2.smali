.class public Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;
.super Landroidx/viewpager/widget/ViewPager;
.source "ScrollControlViewPagerV2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollControlViewPager"


# instance fields
.field private isScrollEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;->isScrollEnabled:Z

    new-instance p2, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000  # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p2, p1, v0}, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x15e

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/pad/fragment/ViewPagerScroller;->setDuration(I)V

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;->setScroller(Landroid/widget/Scroller;)V

    return-void
.end method

.method private canScroll()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;->isScrollEnabled:Z

    return v0
.end method

.method private setScroller(Landroid/widget/Scroller;)V
    .registers 4

    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    return-void
.end method


# virtual methods
.method public canScroll(Landroid/view/View;ZIII)Z
    .registers 6

    if-eq p1, p0, :cond_23

    const-string p2, "canScroll isScrollEnabled = "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;->isScrollEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",v = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrollControlViewPager"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;->isScrollEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_23
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result p1

    return p1
.end method

.method public setScrollEnabled(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScrollEnabled isScrollEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollControlViewPager"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;->isScrollEnabled:Z

    return-void
.end method
