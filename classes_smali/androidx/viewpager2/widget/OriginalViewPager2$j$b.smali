.class public final Landroidx/viewpager2/widget/OriginalViewPager2$j$b;
.super Ljava/lang/Object;
.source "OriginalViewPager2.java"

# interfaces
.implements Ln0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/OriginalViewPager2$j;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2$j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j$b;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;Ln0/g$a;)Z
    .registers 5

    .line 1
    check-cast p1, Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j$b;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j;

    .line 5
    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    sub-int/2addr p1, v0

    .line 11
    iget-object v1, p2, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 13
    invoke-virtual {v1}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_17

    .line 19
    iget-object p2, p2, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 21
    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItemInternal(IZ)V

    .line 24
    :cond_17
    return v0
.end method
