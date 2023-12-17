.class public Lcom/android/fileexplorer/fragment/PhoneMainFragment;
.super Lcom/android/fileexplorer/AppLayoutBaseFragment;
.source "PhoneMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter;,
        Lcom/android/fileexplorer/fragment/PhoneMainFragment$ViewPagerAdapter2;
    }
.end annotation


# static fields
.field private static final EXTRA_TAB_INDEX:Ljava/lang/String; = "extraTabIndex"

.field private static final EXTRA_TAB_NAME:Ljava/lang/String; = "extraTabName"

.field private static final TAB_MORE:I = 0x6

.field private static final TAB_RECENT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PhoneMainFragment"

.field private static sortByApp:Z = false


# instance fields
.field public isActionMode:Z

.field private isInitActionBar:Z

.field private mActionBarMoreView:Landroid/widget/ImageView;

.field private mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

.field private mCreateFolder:Landroid/widget/ImageView;

.field public mCurrentFragment:Lmiuix/appcompat/app/Fragment;

.field private mCurrentIndex:I

.field private mDisplayModeView:Landroid/widget/ImageView;

.field public mReCreateFlag:Z

.field private mRootView:Landroid/view/View;

.field private mSavedInstanceEvent:Lcom/android/fileexplorer/event/PadContentChangeEvent;

.field private mSearchView:Landroid/widget/ImageView;

.field private mViewPager:Lmiuix/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isInitActionBar:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->initActionBar()V

    .line 4
    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->updateDisplayModeView()V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->lambda$prepareImmersionMenu$4(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->lambda$initActionBar$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->lambda$initActionBar$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->lambda$initView$0(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->lambda$initActionBar$2(Landroid/view/View;)V

    return-void
.end method

.method public static getClassName()Ljava/lang/String;
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private getPageNameFromPos(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-class v0, Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const-string v1, "recent"

    .line 13
    if-eqz v0, :cond_f

    .line 15
    return-object v1

    .line 16
    :cond_f
    const-class v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    const-string p1, "home_file"

    .line 30
    return-object p1

    .line 31
    :cond_1e
    const-class v0, Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2d

    .line 43
    const-string p1, "cloud"

    .line 45
    return-object p1

    .line 46
    :cond_2d
    return-object v1
.end method

.method private getPageType(Ljava/lang/String;)I
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x5

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, -0x1

    .line 15
    sparse-switch v0, :sswitch_data_94

    .line 18
    :goto_11
    move p1, v7

    .line 19
    goto/16 :goto_78

    .line 21
    :sswitch_14
    const-string v0, "video"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1d

    .line 29
    goto :goto_11

    .line 30
    :cond_1d
    const/16 p1, 0x8

    .line 32
    goto/16 :goto_78

    .line 34
    :sswitch_21
    const-string v0, "phone"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2a

    .line 42
    goto :goto_11

    .line 43
    :cond_2a
    const/4 p1, 0x7

    .line 44
    goto :goto_78

    .line 45
    :sswitch_2c
    const-string v0, "music"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_35

    .line 53
    goto :goto_11

    .line 54
    :cond_35
    const/4 p1, 0x6

    .line 55
    goto :goto_78

    .line 56
    :sswitch_37
    const-string v0, "cloud"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_40

    .line 64
    goto :goto_11

    .line 65
    :cond_40
    move p1, v1

    .line 66
    goto :goto_78

    .line 67
    :sswitch_42
    const-string v0, "zip"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_4b

    .line 75
    goto :goto_11

    .line 76
    :cond_4b
    move p1, v2

    .line 77
    goto :goto_78

    .line 78
    :sswitch_4d
    const-string v0, "doc"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_56

    .line 86
    goto :goto_11

    .line 87
    :cond_56
    move p1, v3

    .line 88
    goto :goto_78

    .line 89
    :sswitch_58
    const-string v0, "apk"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_61

    .line 97
    goto :goto_11

    .line 98
    :cond_61
    move p1, v4

    .line 99
    goto :goto_78

    .line 100
    :sswitch_63
    const-string v0, "picture"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_6c

    .line 108
    goto :goto_11

    .line 109
    :cond_6c
    move p1, v5

    .line 110
    goto :goto_78

    .line 111
    :sswitch_6e
    const-string v0, "recent"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_77

    .line 119
    goto :goto_11

    .line 120
    :cond_77
    move p1, v6

    .line 121
    :goto_78
    packed-switch p1, :pswitch_data_ba

    .line 124
    return v7

    .line 125
    :pswitch_7c  #0x8
    return v5

    .line 126
    :pswitch_7d  #0x7
    iput v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 128
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    .line 131
    return v7

    .line 132
    :pswitch_83  #0x6
    return v4

    .line 133
    :pswitch_84  #0x5
    iput v4, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 135
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    .line 138
    return v7

    .line 139
    :pswitch_8a  #0x4
    return v2

    .line 140
    :pswitch_8b  #0x3
    return v3

    .line 141
    :pswitch_8c  #0x2
    return v1

    .line 142
    :pswitch_8d  #0x1
    return v6

    .line 143
    :pswitch_8e  #0x0
    iput v6, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 145
    invoke-direct {p0, v6}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    .line 148
    return v7

    .line 149
    :sswitch_data_94
    .sparse-switch
        -0x37b9b9a5 -> :sswitch_6e
        -0x226fa302 -> :sswitch_63
        0x17a1c -> :sswitch_58
        0x18538 -> :sswitch_4d
        0x1d721 -> :sswitch_42
        0x5a5de35 -> :sswitch_37
        0x636ee25 -> :sswitch_2c
        0x65b3d6e -> :sswitch_21
        0x6b0147b -> :sswitch_14
    .end sparse-switch

    .line 187
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_8e  #00000000
        :pswitch_8d  #00000001
        :pswitch_8c  #00000002
        :pswitch_8b  #00000003
        :pswitch_8a  #00000004
        :pswitch_84  #00000005
        :pswitch_83  #00000006
        :pswitch_7d  #00000007
        :pswitch_7c  #00000008
    .end packed-switch
.end method

.method private handleActionBar(Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_15

    .line 13
    if-eqz p1, :cond_11

    .line 15
    const/16 v2, 0x8

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v2, v1

    .line 19
    :goto_12
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setupCreateFolderView()V

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 31
    if-eqz v0, :cond_23

    .line 33
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setupDisplayModeView()V

    .line 36
    :cond_23
    if-nez p1, :cond_2a

    .line 38
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isActionMode:Z

    .line 40
    if-nez p1, :cond_2a

    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2a
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setViewPageCanDrag(Z)V

    .line 46
    return-void
.end method

.method private handleMenu(Landroid/view/Menu;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 3
    if-ltz v0, :cond_c

    .line 5
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 7
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_c

    .line 10
    aget-object v0, v1, v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x5

    .line 19
    new-array v2, v2, [I

    .line 21
    fill-array-data v2, :array_f2

    .line 24
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setEnable([IZLandroid/view/Menu;)V

    .line 27
    const v1, 0x7f0a01ea

    .line 30
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 38
    const v1, 0x7f0a01e9

    .line 41
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 44
    move-result-object v1

    .line 45
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x1

    .line 50
    xor-int/2addr v3, v4

    .line 51
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 54
    const v1, 0x7f0a0265

    .line 57
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 60
    move-result-object v1

    .line 61
    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 63
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 66
    const v1, 0x7f0a00e9

    .line 69
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 72
    move-result-object v1

    .line 73
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    .line 76
    move-result v3

    .line 77
    xor-int/2addr v3, v4

    .line 78
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 81
    const v1, 0x7f0a01ef

    .line 84
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 87
    move-result-object v1

    .line 88
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    .line 91
    move-result v3

    .line 92
    xor-int/2addr v3, v4

    .line 93
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 96
    const v1, 0x7f0a024f

    .line 99
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 102
    move-result-object v1

    .line 103
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_74

    .line 109
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_74

    .line 115
    move v3, v4

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v3, v2

    .line 118
    :goto_75
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 121
    const v1, 0x7f0a00f4

    .line 124
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 127
    move-result-object v1

    .line 128
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_8d

    .line 134
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_8d

    .line 140
    move v3, v4

    .line 141
    goto :goto_8e

    .line 142
    :cond_8d
    move v3, v2

    .line 143
    :goto_8e
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 146
    const v1, 0x7f0a0317

    .line 149
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 152
    move-result-object v1

    .line 153
    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 156
    const v1, 0x7f0a03ad

    .line 159
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 162
    move-result-object v1

    .line 163
    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 166
    const v1, 0x7f0a01eb

    .line 169
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 172
    move-result-object v3

    .line 173
    invoke-direct {p0, v3, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 176
    const v3, 0x7f0a01ec

    .line 179
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 182
    move-result-object v3

    .line 183
    invoke-direct {p0, v3, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 186
    const v3, 0x7f0a047d

    .line 189
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 192
    move-result-object v3

    .line 193
    invoke-direct {p0, v3, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 196
    if-nez v0, :cond_c6

    .line 198
    return-void

    .line 199
    :cond_c6
    sget-object v2, Lcom/android/fileexplorer/fragment/PhoneMainFragment$6;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 201
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 204
    move-result v3

    .line 205
    aget v2, v2, v3

    .line 207
    if-eq v2, v4, :cond_e6

    .line 209
    const/4 v1, 0x2

    .line 210
    if-eq v2, v1, :cond_e2

    .line 212
    const/4 v1, 0x3

    .line 213
    if-eq v2, v1, :cond_de

    .line 215
    const/4 v1, 0x4

    .line 216
    if-eq v2, v1, :cond_da

    .line 218
    goto :goto_f0

    .line 219
    :cond_da
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 222
    goto :goto_f0

    .line 223
    :cond_de
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 226
    goto :goto_f0

    .line 227
    :cond_e2
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 230
    goto :goto_f0

    .line 231
    :cond_e6
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 234
    move-result-object v1

    .line 235
    invoke-direct {p0, v1, v4}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 241
    :goto_f0
    return-void

    .line 242
    nop

    .line 243
    :array_f2
    .array-data 4
        0x7f0a01e9
        0x7f0a01ef
        0x7f0a00e9
        0x7f0a01ed
        0x7f0a0265
    .end array-data
.end method

.method private handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 7

    .line 1
    const v0, 0x7f0a03ad

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_36

    .line 10
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_36

    .line 16
    const v0, 0x7f0a03b8

    .line 19
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_24

    .line 27
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 29
    if-ne v3, p2, :cond_20

    .line 31
    move v3, v1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v3, v2

    .line 34
    :goto_21
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 37
    :cond_24
    const v0, 0x7f0a03b9

    .line 40
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_36

    .line 46
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 48
    if-eq v0, p2, :cond_32

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v1, v2

    .line 52
    :goto_33
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 55
    :cond_36
    return-void
.end method

.method private hideRedPoint()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mActionBarMoreView:Landroid/widget/ImageView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const v1, 0x7f0801e2

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    return-void
.end method

.method private initActionBar()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isInitActionBar:Z

    .line 11
    const v2, 0x7f110075

    .line 14
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 17
    new-instance v2, Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v4

    .line 38
    const v5, 0x7f070058

    .line 41
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 44
    move-result v4

    .line 45
    new-instance v5, Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 50
    move-result-object v6

    .line 51
    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    .line 56
    const v6, 0x7f0801e4

    .line 59
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 67
    move-result-object v6

    .line 68
    const v7, 0x7f1103bc

    .line 71
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v5, v3, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    .line 85
    new-instance v6, Lcom/android/fileexplorer/fragment/b;

    .line 87
    invoke-direct {v6, p0, v3}, Lcom/android/fileexplorer/fragment/b;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)V

    .line 90
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    new-instance v5, Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 103
    move-result-object v6

    .line 104
    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 107
    iput-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 109
    const v6, 0x7f080213

    .line 112
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 120
    move-result-object v6

    .line 121
    const v7, 0x7f1102f0

    .line 124
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 133
    invoke-virtual {v5, v3, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 138
    new-instance v4, Lcom/android/fileexplorer/fragment/b;

    .line 140
    invoke-direct {v4, p0, v1}, Lcom/android/fileexplorer/fragment/b;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)V

    .line 143
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 148
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    new-instance v1, Landroid/widget/ImageView;

    .line 153
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 156
    move-result-object v3

    .line 157
    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 160
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDisplayModeIcon()I

    .line 165
    move-result v3

    .line 166
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    sget-object v1, Lcom/android/fileexplorer/util/DebounceHelper;->Companion:Lcom/android/fileexplorer/util/DebounceHelper$Companion;

    .line 171
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 173
    const-wide/16 v4, 0x1f4

    .line 175
    new-instance v6, Lcom/android/fileexplorer/fragment/b;

    .line 177
    const/4 v7, 0x2

    .line 178
    invoke-direct {v6, p0, v7}, Lcom/android/fileexplorer/fragment/b;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)V

    .line 181
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 191
    const v3, 0x7f1101cb

    .line 194
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->updateDisplayModeView()V

    .line 204
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 207
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->hideRedPoint()V

    .line 210
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->initTab(Lmiuix/appcompat/app/ActionBar;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->checkIfNeedShowRedPoint()V

    .line 216
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setBottomTabMenuForHomeItem()V

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 222
    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 226
    move-result v0

    .line 227
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    .line 230
    return-void
.end method

.method private initTab(Lmiuix/appcompat/app/ActionBar;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {p1, v0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->getHomeTab()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_13
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 22
    array-length v1, v0

    .line 23
    if-ge p1, v1, :cond_32

    .line 25
    aget-object v0, v0, p1

    .line 27
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FragmentFactory;->newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lmiuix/appcompat/app/Fragment;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->addFragment(Ljava/lang/String;ILjava/lang/Class;)I

    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 50
    goto :goto_13

    .line 51
    :cond_32
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 55
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 60
    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;

    .line 62
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    .line 65
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)V

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 70
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 72
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    .line 75
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 77
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 86
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 88
    return-void
.end method

.method private isCloudFragment()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method private isHomeFragment()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method private isRecFragment()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;)V
    .registers 4

    .line 1
    const-string p1, "click_search"

    .line 3
    const-string v0, "name"

    .line 5
    const-string v1, ""

    .line 7
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    .line 13
    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 15
    if-nez p1, :cond_13

    .line 17
    const-string p1, "最近tab页"

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_19

    .line 23
    const-string p1, "手机tab页"

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const-string p1, "云盘tab页"

    .line 28
    :goto_1b
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickSearch(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private synthetic lambda$initActionBar$2(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 3
    if-eqz p1, :cond_d

    .line 5
    instance-of v0, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    check-cast p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onNewFolder()V

    .line 14
    :cond_d
    return-void
.end method

.method private synthetic lambda$initActionBar$3(Landroid/view/View;)V
    .registers 3

    .line 1
    const-string p1, "PhoneMainFragment"

    .line 3
    const-string v0, "click112: "

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_13

    .line 13
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const-string v0, ""

    .line 22
    :goto_15
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    .line 25
    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 27
    if-nez p1, :cond_1f

    .line 29
    const-string p1, "最近tab页"

    .line 31
    goto :goto_27

    .line 32
    :cond_1f
    const/4 v0, 0x1

    .line 33
    if-ne p1, v0, :cond_25

    .line 35
    const-string p1, "手机tab页"

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const-string p1, "云盘tab页"

    .line 40
    :goto_27
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickDownload(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private static synthetic lambda$initView$0(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->needHandleEvent(Landroid/view/DragEvent;)Z

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_e

    .line 8
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 11
    move-result p0

    .line 12
    if-ne p0, v0, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method private synthetic lambda$prepareImmersionMenu$4(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->setClickStorage()V

    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 8
    const-string p1, "PhoneMainFragment"

    .line 10
    const-string p2, "onClick: more open menu."

    .line 12
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->hideRedPoint()V

    .line 18
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/PhoneMainFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/PhoneMainFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private prepareImmersionMenu(Landroid/view/View;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const v0, 0x7f0a02ad

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->hideRedPoint()V

    .line 14
    if-nez v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v1, Lcom/android/fileexplorer/adapter/a;

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, v2, p0, p1}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method private setBottomTabMenuForHomeItem()V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-eqz v0, :cond_27

    .line 5
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getBottomTabMenu()Landroid/view/Menu;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0a01c9

    .line 16
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f110338

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 34
    const v1, 0x7f0800cc

    .line 37
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 40
    :cond_27
    return-void
.end method

.method private setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6
    :cond_5
    return-void
.end method

.method private setViewPageCanDrag(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/viewpager/widget/ViewPager;->setDraggable(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method private setupCreateFolderView()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 11
    const/16 v2, 0x8

    .line 13
    if-eqz v1, :cond_2a

    .line 15
    if-eqz v0, :cond_2a

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq v1, v0, :cond_23

    .line 20
    const/4 v0, 0x2

    .line 21
    if-ne v1, v0, :cond_1d

    .line 23
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_23

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    goto :goto_2f

    .line 36
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    goto :goto_2f

    .line 43
    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :goto_2f
    return-void
.end method

.method private setupDisplayModeView()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->updateDisplayModeView()V

    .line 4
    return-void
.end method

.method private startFileActivity(Landroid/content/Intent;)V
    .registers 7

    .line 1
    const-class v0, Lcom/android/fileexplorer/activity/FileActivity;

    .line 3
    const-string v1, "current_directory"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    const-string v3, "inner_call"

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v2, :cond_30

    .line 18
    new-instance v2, Landroid/content/Intent;

    .line 20
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    new-instance p1, Ljava/io/File;

    .line 35
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 48
    goto :goto_65

    .line 49
    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_65

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_65

    .line 69
    new-instance v1, Landroid/content/Intent;

    .line 71
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    const-string v0, "pick_router"

    .line 86
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_65
    :goto_65
    return-void
.end method

.method private switchTab(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    .line 6
    return-void
.end method

.method private updateDisplayModeView()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isRecFragment()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_12

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    goto :goto_31

    .line 19
    :cond_12
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2b

    .line 25
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_25

    .line 31
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_25

    .line 37
    goto :goto_2b

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    goto :goto_31

    .line 44
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_31
    return-void
.end method

.method private updatePos()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_14

    .line 10
    new-array v0, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    aput-object v4, v0, v1

    .line 16
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 18
    aput-object v1, v0, v3

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 24
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 26
    aput-object v4, v0, v1

    .line 28
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 30
    aput-object v1, v0, v3

    .line 32
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 34
    aput-object v1, v0, v2

    .line 36
    :goto_23
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2c

    .line 44
    move v2, v3

    .line 45
    :cond_2c
    sput v2, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    .line 47
    return-void
.end method


# virtual methods
.method public checkIfNeedShowRedPoint()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mActionBarMoreView:Landroid/widget/ImageView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyClickStorage()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_f

    .line 12
    const v1, 0x7f0801e3

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    const v1, 0x7f0801e2

    .line 19
    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    return-void
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 3
    if-nez v0, :cond_b

    .line 5
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 7
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_11

    .line 15
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 17
    goto :goto_6

    .line 18
    :cond_11
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 20
    goto :goto_6

    .line 21
    :goto_14
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0080

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "PhoneMainFragment"

    return-object v0
.end method

.method public getNavigationId()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_e

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_b

    .line 9
    const/16 v0, 0x3e8

    .line 11
    return v0

    .line 12
    :cond_b
    const/16 v0, 0x3ea

    .line 14
    return v0

    .line 15
    :cond_e
    const/16 v0, 0x3e9

    .line 17
    return v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 8

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_3f

    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_3f

    .line 22
    const-string v4, "/deeplink"

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3f

    .line 30
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v3, "="

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    aget-object v0, v0, v2

    .line 42
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getPageType(Ljava/lang/String;)I

    .line 57
    move-result v0

    .line 58
    if-eq v0, v1, :cond_3f

    .line 60
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PageRouter;->routeStorageSkipRequest(Landroidx/fragment/app/Fragment;I)V

    .line 63
    return-void

    .line 64
    :cond_3f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    const-string v3, "android.intent.action.MAIN"

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_67

    .line 76
    const-string v0, "shortcut"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    const-string v1, "1"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    const-string v0, "extraTabIndex"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_f4

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 99
    move-result p1

    .line 100
    iput p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 102
    goto/16 :goto_f4

    .line 104
    :cond_67
    const-string v3, "miui.intent.action.FORCE_TOUCH_CLEAN"

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_7a

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 115
    move-result-object p1

    .line 116
    const-string v0, "00003"

    .line 118
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 121
    goto/16 :goto_f4

    .line 123
    :cond_7a
    const-string v3, "android.intent.action.SEARCH"

    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_87

    .line 131
    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    .line 134
    goto/16 :goto_f4

    .line 136
    :cond_87
    const-string v3, "com.android.fileexplorer.shortcut.START_PHONE"

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v3

    .line 142
    const-wide/16 v4, 0xc8

    .line 144
    if-eqz v3, :cond_a3

    .line 146
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 149
    move-result-object p1

    .line 150
    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$4;

    .line 152
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$4;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    .line 155
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 160
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    .line 163
    goto :goto_f4

    .line 164
    :cond_a3
    const-string v3, "com.android.fileexplorer.shortcut.START_DOC"

    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_b8

    .line 172
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 175
    move-result-object p1

    .line 176
    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$5;

    .line 178
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$5;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    .line 181
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    goto :goto_f4

    .line 185
    :cond_b8
    const-string v3, "com.android.fileexplorer.search.DOC_PAGE"

    .line 187
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_c9

    .line 193
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 196
    move-result-object p1

    .line 197
    const/4 v0, 0x3

    .line 198
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;I)V

    .line 201
    goto :goto_f4

    .line 202
    :cond_c9
    const-string v3, "com.android.fileexplorer.export.VIEW_HOME"

    .line 204
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_f1

    .line 210
    const-string v0, "extraTabName"

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_eb

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 225
    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getPageType(Ljava/lang/String;)I

    .line 229
    move-result p1

    .line 230
    if-eq p1, v1, :cond_f4

    .line 232
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/PageRouter;->routeStorageSkipRequest(Landroidx/fragment/app/Fragment;I)V

    .line 235
    goto :goto_f4

    .line 236
    :cond_eb
    iput v2, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 238
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    .line 241
    goto :goto_f4

    .line 242
    :cond_f1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->startFileActivity(Landroid/content/Intent;)V

    .line 245
    :cond_f4
    :goto_f4
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    const v0, 0x7f0a017b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mRootView:Landroid/view/View;

    .line 10
    const v0, 0x7f0a04a5

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lmiuix/viewpager/widget/ViewPager;

    .line 19
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 21
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 23
    if-eqz v0, :cond_1c

    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mRootView:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/android/fileexplorer/fragment/c;

    .line 33
    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/c;-><init>()V

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 39
    return-void
.end method

.method public onActionBarChange(Lcom/android/fileexplorer/event/ActionBarChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 8
    move-result p1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    .line 12
    return-void
.end method

.method public onActionModeChange(Lcom/android/fileexplorer/event/ActionModeChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/ActionModeChangeEvent;->isActionMode:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isActionMode:Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    .line 16
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNavicatBarHeight:I

    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const v0, 0x7f12011f

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p1, :cond_e

    .line 13
    move p1, v0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mReCreateFlag:Z

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->registerContentFragment(Landroidx/fragment/app/Fragment;)V

    .line 28
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    .line 31
    new-instance p1, Landroidx/lifecycle/c0;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 40
    const-class v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 42
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 48
    iget-object v0, p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->newIntent:Landroidx/lifecycle/q;

    .line 50
    new-instance v1, Lcom/android/fileexplorer/fragment/PhoneMainFragment$1;

    .line 52
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$1;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    .line 55
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 58
    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->initPhonMainFragment:Landroidx/lifecycle/q;

    .line 60
    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;

    .line 62
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    .line 65
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_16

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0e0009

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_16
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public onDestroyView()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->onDestroyView()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->unRegisterContentFragment()V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 19
    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->clearOnPageChangeListeners()V

    .line 22
    return-void
.end method

.method public onDirectoryDisplayChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDirectoryDisplayChanged(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 10
    if-eqz v1, :cond_10

    .line 12
    check-cast v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 14
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onDirectoryDisplayChanged(Z)V

    .line 17
    :cond_10
    return-void
.end method

.method public onNavigationMenuSelected(Landroid/view/MenuItem;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationMenuSelected(Landroid/view/MenuItem;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v1, "onNavigationMenuSelected: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "PhoneMainFragment"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    .line 4
    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v0, "content onNavigatorModeChanged "

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, " getView "

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "PhoneMainFragment"

    .line 35
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x1

    .line 43
    if-eqz p1, :cond_39

    .line 45
    sget-object p1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 47
    if-eq p2, p1, :cond_32

    .line 49
    move p1, v0

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    const/4 p1, 0x0

    .line 52
    :goto_33
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    .line 55
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 58
    :cond_39
    sget-object p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 60
    invoke-virtual {p1}, Lcom/android/fileexplorer/util/FragmentNavInfo;->getFragmentNavId()I

    .line 63
    move-result p2

    .line 64
    const/4 v1, -0x1

    .line 65
    if-eq p2, v1, :cond_58

    .line 67
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 70
    move-result-object p2

    .line 71
    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/EmptyFragmentNavInfo;

    .line 73
    invoke-virtual {p1}, Lcom/android/fileexplorer/util/FragmentNavInfo;->getFragmentNavId()I

    .line 76
    move-result p1

    .line 77
    const/4 v2, 0x0

    .line 78
    new-instance v3, Landroid/os/Bundle;

    .line 80
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 83
    invoke-direct {v1, p1, v2, v3}, Lcom/android/fileexplorer/fragment/NavInfo/EmptyFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p2, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 89
    :cond_58
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setBottomTabMenuForHomeItem()V

    .line 92
    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 94
    if-ne p1, v0, :cond_81

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6d

    .line 106
    const p1, 0x7f1101fe

    .line 109
    goto :goto_7a

    .line 110
    :cond_6d
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_77

    .line 116
    const p1, 0x7f110337

    .line 119
    goto :goto_7a

    .line 120
    :cond_77
    const p1, 0x7f110353

    .line 123
    :goto_7a
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 130
    :cond_81
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_8

    .line 6
    const-string v0, "最近tab页"

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    if-ne v0, v1, :cond_d

    .line 11
    const-string v0, "手机tab页"

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const-string v0, "云盘tab页"

    .line 16
    :goto_f
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {p1, v2, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    return v1

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 32
    if-eqz v0, :cond_46

    .line 34
    const-string v0, "onImmersionMenuSelected: currentFragment = "

    .line 36
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string v1, "PhoneMainFragment"

    .line 59
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 64
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_46
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 74
    move-result p1

    .line 75
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleMenu(Landroid/view/Menu;)V

    .line 4
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    invoke-static {p2}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->updateCurrentState(I)V

    .line 7
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->onResume()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    .line 17
    if-eqz v0, :cond_19

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    .line 28
    if-eqz v0, :cond_24

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mActionBarMoreView:Landroid/widget/ImageView;

    .line 39
    if-eqz v0, :cond_2f

    .line 41
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 48
    :cond_2f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSavedInstanceEvent:Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 6
    if-eqz v0, :cond_25

    .line 8
    const-string v0, "onSaveInstanceState: "

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSavedInstanceEvent:Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 16
    iget-object v1, v1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "PhoneMainFragment"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSavedInstanceEvent:Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 32
    const-string v1, "event"

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 37
    goto :goto_2c

    .line 38
    :cond_25
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    .line 40
    const-string v1, "mCurrentIndex"

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    :goto_2c
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 10
    if-eqz v1, :cond_10

    .line 12
    check-cast v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 14
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 17
    :cond_10
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortOrderChanged(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 10
    if-eqz v1, :cond_10

    .line 12
    check-cast v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 14
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortOrderChanged(Z)V

    .line 17
    :cond_10
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onStop()V

    .line 4
    return-void
.end method

.method public onUpdateArguments(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 6
    if-eqz v0, :cond_3c

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 10
    if-eqz v1, :cond_3c

    .line 12
    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    .line 15
    move-result v0

    .line 16
    const-string v1, "NAVIGATOR_FRAGMENT_ID_KEY"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 21
    move-result p1

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 24
    invoke-virtual {v0}, Lmiuix/viewpager/widget/ViewPager;->isDraggable()Z

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 35
    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(I)Landroidx/fragment/app/Fragment;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 45
    if-eqz p1, :cond_3c

    .line 47
    instance-of v0, p1, Lmiuix/navigator/app/NavigatorContentChildFragment;

    .line 49
    if-eqz v0, :cond_3c

    .line 51
    new-instance v0, Landroid/os/Bundle;

    .line 53
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    check-cast p1, Lmiuix/navigator/app/NavigatorContentChildFragment;

    .line 58
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    .line 61
    :cond_3c
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_c

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->initActionBar()V

    .line 13
    :cond_c
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewModeChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 10
    if-eqz v1, :cond_10

    .line 12
    check-cast v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 14
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onViewModeChanged(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_11

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setDisplayModeIcon()V

    .line 9
    sget-object v0, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getNavigationId()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 20
    if-eqz v0, :cond_19

    .line 22
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    const-string p1, "PhoneMainFragment"

    .line 28
    const-string v0, "mCurrentFragment is null :error msg "

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_20
    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDisplayModeIcon()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    return-void
.end method

.method public setEnable([IZLandroid/view/Menu;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_12

    .line 5
    aget v1, p1, v0

    .line 7
    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 16
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_12
    return-void
.end method

.method public showBottomToast(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d002e

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v1

    .line 23
    const v2, 0x7f0a017b

    .line 26
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 32
    if-eqz v1, :cond_46

    .line 34
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    const/4 v3, -0x1

    .line 37
    const/4 v4, -0x2

    .line 38
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_38

    .line 51
    iget v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNavicatBarHeight:I

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 57
    :cond_38
    const/16 v3, 0xc

    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const/4 v1, 0x1

    .line 66
    const-wide/16 v2, 0xbb8

    .line 68
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/view/ToastTextView;->show(Ljava/lang/String;ZJ)V

    .line 71
    :cond_46
    return-void
.end method
