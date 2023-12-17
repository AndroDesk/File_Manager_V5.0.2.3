.class Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Landroidx/viewpager/widget/OriginalViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mStatus:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;)V

    .line 12
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->mStatus:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;

    .line 14
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_22

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 11
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_22

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;

    .line 31
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrollStateChanged(I)V

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 7

    .line 1
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->mStatus:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;

    .line 3
    invoke-virtual {p3, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->update(IF)V

    .line 6
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->mStatus:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;

    .line 8
    iget-boolean p3, p3, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    .line 10
    if-nez p3, :cond_6b

    .line 12
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 14
    invoke-static {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;

    .line 17
    move-result-object p3

    .line 18
    if-eqz p3, :cond_6b

    .line 20
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 22
    invoke-static {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 25
    move-result-object p3

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->mStatus:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;

    .line 28
    iget v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    .line 30
    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    .line 33
    move-result p3

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 36
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->mStatus:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;

    .line 42
    iget v1, v1, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    .line 44
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 50
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_51

    .line 60
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 62
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    .line 69
    move-result p1

    .line 70
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->mStatus:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;

    .line 72
    iget-boolean v1, v1, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    .line 74
    if-nez v1, :cond_51

    .line 76
    add-int/lit8 p1, p1, -0x1

    .line 78
    const/high16 v1, 0x3f800000  # 1.0f

    .line 80
    sub-float p2, v1, p2

    .line 82
    :cond_51
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 84
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v1

    .line 92
    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_6b

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;

    .line 104
    invoke-interface {v2, p1, p2, p3, v0}, Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    .line 107
    goto :goto_5b

    .line 108
    :cond_6b
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 13
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 22
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 28
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/viewpager/widget/ViewPager;

    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 34
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v3, p1, v4, v4}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v2, p1, v3}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 48
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;

    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_4f

    .line 54
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    .line 56
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 64
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4f

    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;

    .line 76
    invoke-interface {v1, v0}, Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;->onPageSelected(I)V

    .line 79
    goto :goto_3f

    .line 80
    :cond_4f
    return-void
.end method
