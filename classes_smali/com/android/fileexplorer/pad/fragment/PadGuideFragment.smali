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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mPageCache:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mPageCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mTvJump:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mTvNext:Landroid/widget/TextView;

    return-object p0
.end method

.method private getImageParam()Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL  # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/16 v1, 0x37a

    if-ge v0, v1, :cond_14

    mul-int/lit16 v2, v0, 0x22c

    div-int/2addr v2, v1

    goto :goto_17

    :cond_14
    const/16 v2, 0x22c

    move v0, v1

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";height:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getImageParam"

    invoke-static {v3, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;-><init>()V

    if-eqz p0, :cond_a

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

    const v0, 0x7f032930

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    const v0, 0x7f0329f4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mTvJump:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0329f3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mTvNext:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;-><init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$OnViewPageChangeListener;-><init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;->setScrollEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    const-string v1, "current_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0462

    if-eq p1, v0, :cond_33

    const v0, 0x7f0a0465

    if-eq p1, v0, :cond_f

    goto :goto_3f

    :cond_f
    iget p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mViewPagerAdapter:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_28

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/PadGuidFinishEvent;

    invoke-direct {v0}, Lcom/android/fileexplorer/event/PadGuidFinishEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_28
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mVp:Lcom/android/fileexplorer/view/ScrollControlViewPagerV2;

    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3f

    :cond_33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/PadGuidFinishEvent;

    invoke-direct {v0}, Lcom/android/fileexplorer/event/PadGuidFinishEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_3f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->mCurrentPosition:I

    const-string v1, "current_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
