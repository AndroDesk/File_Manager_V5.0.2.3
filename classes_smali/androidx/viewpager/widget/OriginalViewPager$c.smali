.class public final Landroidx/viewpager/widget/OriginalViewPager$c;
.super Ljava/lang/Object;
.source "OriginalViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/viewpager/widget/OriginalViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/OriginalViewPager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$c;->a:Landroidx/viewpager/widget/OriginalViewPager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager$c;->a:Landroidx/viewpager/widget/OriginalViewPager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 7
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager$c;->a:Landroidx/viewpager/widget/OriginalViewPager;

    .line 9
    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 12
    return-void
.end method
