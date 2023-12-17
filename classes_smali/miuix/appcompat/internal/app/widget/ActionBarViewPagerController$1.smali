.class Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Landroidx/appcompat/app/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V
    .registers 3

    return-void
.end method

.method public onTabSelected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_b
    if-ge v0, p2, :cond_30

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 16
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getTabAt(I)Landroidx/appcompat/app/a$d;

    .line 23
    move-result-object v1

    .line 24
    if-ne v1, p1, :cond_2d

    .line 26
    instance-of p2, p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 28
    if-eqz p2, :cond_22

    .line 30
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    .line 32
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mWithAnim:Z

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x1

    .line 36
    :goto_23
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 38
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/viewpager/widget/ViewPager;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_b

    .line 49
    :cond_30
    :goto_30
    return-void
.end method

.method public onTabUnselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V
    .registers 3

    return-void
.end method
