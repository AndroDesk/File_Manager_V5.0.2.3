.class public final Landroidx/viewpager2/widget/OriginalViewPager2$a;
.super Landroidx/viewpager2/widget/OriginalViewPager2$g;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
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
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$a;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$g;-><init>(I)V

    .line 7
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$a;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    .line 6
    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    .line 8
    iput-boolean v1, v0, Landroidx/viewpager2/widget/f;->l:Z

    .line 10
    return-void
.end method
