.class public final Landroidx/viewpager2/widget/OriginalViewPager2$j$a;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2$j;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j$a;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;Ln0/g$a;)Z
    .registers 5

    check-cast p1, Landroidx/viewpager2/widget/OriginalViewPager2;

    iget-object p2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$j$a;->a:Landroidx/viewpager2/widget/OriginalViewPager2$j;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p2, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p2, p2, Landroidx/viewpager2/widget/OriginalViewPager2$j;->d:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItemInternal(IZ)V

    :cond_17
    return v0
.end method
