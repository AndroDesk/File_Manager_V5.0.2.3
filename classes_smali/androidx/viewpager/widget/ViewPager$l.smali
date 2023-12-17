.class public final Landroidx/viewpager/widget/ViewPager$l;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$l;->a:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$l;->a:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 6
    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$l;->a:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 6
    return-void
.end method
