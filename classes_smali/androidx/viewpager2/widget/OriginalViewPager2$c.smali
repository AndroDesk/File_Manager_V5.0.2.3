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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$c;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .registers 3

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$c;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$c;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$c;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->requestFocus(I)Z

    :cond_15
    return-void
.end method
