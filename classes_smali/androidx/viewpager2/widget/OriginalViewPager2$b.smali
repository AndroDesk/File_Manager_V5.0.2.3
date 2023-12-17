.class public final Landroidx/viewpager2/widget/OriginalViewPager2$b;
.super Landroidx/viewpager2/widget/OriginalViewPager2$i;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$b;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .registers 2

    if-nez p1, :cond_7

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$b;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->updateCurrentItem()V

    :cond_7
    return-void
.end method

.method public final onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$b;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    if-eq v1, p1, :cond_d

    iput p1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    iget-object p1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->o()V

    :cond_d
    return-void
.end method
