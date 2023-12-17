.class public final Landroidx/viewpager2/widget/OriginalViewPager2$c;
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
.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$c;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$c;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 6
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$c;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_15

    .line 14
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$c;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 16
    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 22
    :cond_15
    return-void
.end method
