.class public final Lmiuix/androidbasewidget/widget/MarginPageTransformer;
.super Ljava/lang/Object;
.source "MarginPageTransformer.java"

# interfaces
.implements Landroidx/viewpager2/widget/OriginalViewPager2$k;


# instance fields
.field private final mMarginPx:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-ltz p1, :cond_8

    .line 6
    iput p1, p0, Lmiuix/androidbasewidget/widget/MarginPageTransformer;->mMarginPx:I

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v0, "Margin must be non-negative"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method

.method private requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/OriginalViewPager2;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    if-eqz p1, :cond_13

    .line 13
    instance-of p1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 15
    if-eqz p1, :cond_13

    .line 17
    check-cast v0, Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    const-string v0, "Expected the page view to be managed by a ViewPager2 instance."

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/MarginPageTransformer;->requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lmiuix/androidbasewidget/widget/MarginPageTransformer;->mMarginPx:I

    .line 7
    int-to-float v1, v1

    .line 8
    mul-float/2addr v1, p2

    .line 9
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_19

    .line 15
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_15

    .line 21
    neg-float v1, v1

    .line 22
    :cond_15
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 29
    :goto_1c
    return-void
.end method
