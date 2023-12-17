.class public final Lmiuix/androidbasewidget/widget/MarginPageTransformer;
.super Ljava/lang/Object;
.source "MarginPageTransformer.java"

# interfaces
.implements Landroidx/viewpager2/widget/OriginalViewPager2$k;


# instance fields
.field private final mMarginPx:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_8

    iput p1, p0, Lmiuix/androidbasewidget/widget/MarginPageTransformer;->mMarginPx:I

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Margin must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/OriginalViewPager2;
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_13

    instance-of p1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;

    if-eqz p1, :cond_13

    check-cast v0, Landroidx/viewpager2/widget/OriginalViewPager2;

    return-object v0

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected the page view to be managed by a ViewPager2 instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 5

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/MarginPageTransformer;->requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/OriginalViewPager2;

    move-result-object v0

    iget v1, p0, Lmiuix/androidbasewidget/widget/MarginPageTransformer;->mMarginPx:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getOrientation()I

    move-result p2

    if-nez p2, :cond_19

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_15

    neg-float v1, v1

    :cond_15
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1c

    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1c
    return-void
.end method