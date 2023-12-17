.class public Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "PadGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;,
        Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mPageCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTvJump:Landroid/widget/TextView;

.field private mTvNext:Landroid/widget/TextView;

.field private mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

.field private mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mPageCache:Landroid/util/SparseArray;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    .line 14
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/util/SparseArray;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mPageCache:Landroid/util/SparseArray;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mTvJump:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mTvNext:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method private getImageParam()Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    const-wide v2, 0x3feccccccccccccdL  # 0.9

    .line 11
    mul-double/2addr v0, v2

    .line 12
    double-to-int v0, v0

    .line 13
    const/16 v1, 0x37a

    .line 15
    if-ge v0, v1, :cond_14

    .line 17
    mul-int/lit16 v2, v0, 0x22c

    .line 19
    div-int/2addr v2, v1

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    const/16 v2, 0x22c

    .line 23
    move v0, v1

    .line 24
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v3, "width:"

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, ";height:"

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    const-string v3, "getImageParam"

    .line 51
    invoke-static {v3, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    return-object v1
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d007c

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    const v0, 0x7f0a04a6

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    .line 12
    const v0, 0x7f0a0462

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mTvJump:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v0, 0x7f0a0465

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 35
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mTvNext:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    new-instance p1, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x3

    .line 47
    invoke-direct {p1, p0, v0, v1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;-><init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;Landroid/content/Context;I)V

    .line 50
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    .line 54
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;-><init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$1;)V

    .line 60
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 63
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;->setScrollEnabled(Z)V

    .line 69
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    .line 73
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    .line 76
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    if-eqz p1, :cond_e

    .line 6
    const/4 v0, 0x0

    .line 7
    const-string v1, "current_position"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    .line 15
    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0462

    .line 8
    if-eq p1, v0, :cond_33

    .line 10
    const v0, 0x7f0a0465

    .line 13
    if-eq p1, v0, :cond_f

    .line 15
    goto :goto_3f

    .line 16
    :cond_f
    iget p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    .line 20
    invoke-virtual {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->getCount()I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    if-ne p1, v0, :cond_28

    .line 28
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lcom/android/fileexplorer/event/PadGuidFinishEvent;

    .line 34
    invoke-direct {v0}, Lcom/android/fileexplorer/event/PadGuidFinishEvent;-><init>()V

    .line 37
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 40
    goto :goto_3f

    .line 41
    :cond_28
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    .line 43
    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    .line 45
    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    .line 48
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 51
    goto :goto_3f

    .line 52
    :cond_33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Lcom/android/fileexplorer/event/PadGuidFinishEvent;

    .line 58
    invoke-direct {v0}, Lcom/android/fileexplorer/event/PadGuidFinishEvent;-><init>()V

    .line 61
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 64
    :goto_3f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    .line 6
    const-string v1, "current_position"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method
