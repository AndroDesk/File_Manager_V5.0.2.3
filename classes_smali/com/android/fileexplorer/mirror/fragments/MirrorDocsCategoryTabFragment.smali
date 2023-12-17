.class public Lcom/android/fileexplorer/mirror/fragments/MirrorDocsCategoryTabFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;
.source "MirrorDocsCategoryTabFragment.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v4}, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;->newInstance(I)Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method public getLayoutResId()I
    .registers 2

    const v0, 0x7f0d0083

    return v0
.end method

.method public initView()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->initView()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e65

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onDeActiveEmptyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDeActiveEmptyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDeActiveEmptyView()V

    :cond_a
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2a

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_d  #0x7f0a0263
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_12  #0x7f0a0262
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_17  #0x7f0a0261
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_1c  #0x7f0a0260
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_21  #0x7f0a025f
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    goto :goto_29

    :pswitch_25  #0x7f0a025e
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    :goto_29
    return v1

    :pswitch_data_2a
    .packed-switch 0x7f0a025e
        :pswitch_25  #7f0a025e
        :pswitch_21  #7f0a025f
        :pswitch_1c  #7f0a0260
        :pswitch_17  #7f0a0261
        :pswitch_12  #7f0a0262
        :pswitch_d  #7f0a0263
    .end packed-switch
.end method

.method public reverseEmptyViewState()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->reverseEmptyViewState()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->reverseEmptyViewState()V

    :cond_a
    return-void
.end method
