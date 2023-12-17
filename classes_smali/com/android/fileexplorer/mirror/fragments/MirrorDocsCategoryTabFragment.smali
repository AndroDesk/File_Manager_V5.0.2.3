.class public Lcom/android/fileexplorer/mirror/fragments/MirrorDocsCategoryTabFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;
.source "MirrorDocsCategoryTabFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public exitActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_9
    if-ge v3, v2, :cond_1b

    .line 12
    aget-object v4, v1, v3

    .line 14
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v4

    .line 18
    invoke-static {v4}, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;->newInstance(I)Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;

    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_9

    .line 28
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

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->initView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mRootView:Landroid/view/View;

    .line 6
    const v1, 0x7f0a03f3

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 20
    return-void
.end method

.method public isEditMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onDeActiveEmptyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDeActiveEmptyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onDeActiveEmptyView()V

    .line 11
    :cond_a
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    packed-switch v0, :pswitch_data_2a

    .line 9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :pswitch_d  #0x7f0a0263
    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    .line 18
    goto :goto_29

    .line 19
    :pswitch_12  #0x7f0a0262
    const/4 p1, 0x4

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    .line 23
    goto :goto_29

    .line 24
    :pswitch_17  #0x7f0a0261
    const/4 p1, 0x3

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    .line 28
    goto :goto_29

    .line 29
    :pswitch_1c  #0x7f0a0260
    const/4 p1, 0x5

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    .line 33
    goto :goto_29

    .line 34
    :pswitch_21  #0x7f0a025f
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    .line 37
    goto :goto_29

    .line 38
    :pswitch_25  #0x7f0a025e
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->setCurrentFragment(I)V

    .line 42
    :goto_29
    return v1

    .line 43
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

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->reverseEmptyViewState()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->reverseEmptyViewState()V

    .line 11
    :cond_a
    return-void
.end method
