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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$a;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$a;->a:Landroidx/viewpager2/widget/OriginalViewPager2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/f;

    iput-boolean v1, v0, Landroidx/viewpager2/widget/f;->l:Z

    return-void
.end method
