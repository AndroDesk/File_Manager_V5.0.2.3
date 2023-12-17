.class public final Landroidx/viewpager2/widget/c;
.super Landroidx/viewpager2/widget/OriginalViewPager2$i;
.source "OriginalCompositeOnPageChangeCallback.java"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$i;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iput-object v0, p0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 19
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageScrollStateChanged(I)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_17

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void

    .line 24
    :catch_17
    move-exception p1

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    const-string v1, "Adding and removing callbacks during dispatch to callbacks is not supported"

    .line 29
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    throw v0
.end method

.method public final onPageScrolled(IFI)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 19
    invoke-virtual {v1, p1, p2, p3}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageScrolled(IFI)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_17

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void

    .line 24
    :catch_17
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 27
    const-string p3, "Adding and removing callbacks during dispatch to callbacks is not supported"

    .line 29
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    throw p2
.end method

.method public final onPageSelected(I)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/c;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 19
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageSelected(I)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_17

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void

    .line 24
    :catch_17
    move-exception p1

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    const-string v1, "Adding and removing callbacks during dispatch to callbacks is not supported"

    .line 29
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    throw v0
.end method
