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

.field private static final TAB_MORE:I

.field private static final TAB_RECENT:I

.field public static final TAG:Ljava/lang/String; = "PhoneMainFragment"

.field private static sortByApp:Z


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->TAB_MORE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->TAB_RECENT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isInitActionBar:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->initActionBar()V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/PhoneMainFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->updateDisplayModeView()V

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

    const-class v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPageNameFromPos(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "recent"

    if-eqz v0, :cond_f

    return-object v1

    :cond_f
    const-class v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p1, "home_file"

    return-object p1

    :cond_1e
    const-class v0, Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "cloud"

    return-object p1

    :cond_2d
    return-object v1
.end method

.method private getPageType(Ljava/lang/String;)I
    .registers 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_94

    :goto_11
    move p1, v7

    goto/16 :goto_78

    :sswitch_14
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_11

    :cond_1d
    const/16 p1, 0x8

    goto/16 :goto_78

    :sswitch_21
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_11

    :cond_2a
    const/4 p1, 0x7

    goto :goto_78

    :sswitch_2c
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_11

    :cond_35
    const/4 p1, 0x6

    goto :goto_78

    :sswitch_37
    const-string v0, "cloud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_11

    :cond_40
    move p1, v1

    goto :goto_78

    :sswitch_42
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_11

    :cond_4b
    move p1, v2

    goto :goto_78

    :sswitch_4d
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_11

    :cond_56
    move p1, v3

    goto :goto_78

    :sswitch_58
    const-string v0, "apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_11

    :cond_61
    move p1, v4

    goto :goto_78

    :sswitch_63
    const-string v0, "picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_11

    :cond_6c
    move p1, v5

    goto :goto_78

    :sswitch_6e
    const-string v0, "recent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_11

    :cond_77
    move p1, v6

    :goto_78
    packed-switch p1, :pswitch_data_ba

    return v7

    :pswitch_7c  #0x8
    return v5

    :pswitch_7d  #0x7
    iput v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    invoke-direct {p0, v5}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    return v7

    :pswitch_83  #0x6
    return v4

    :pswitch_84  #0x5
    iput v4, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    return v7

    :pswitch_8a  #0x4
    return v2

    :pswitch_8b  #0x3
    return v3

    :pswitch_8c  #0x2
    return v1

    :pswitch_8d  #0x1
    return v6

    :pswitch_8e  #0x0
    iput v6, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    invoke-direct {p0, v6}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    return v7

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

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_11

    const/16 v2, 0x8

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setupCreateFolderView()V

    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setupDisplayModeView()V

    :cond_23
    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isActionMode:Z

    if-nez p1, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setViewPageCanDrag(Z)V

    return-void
.end method

.method private handleMenu(Landroid/view/Menu;)V
    .registers 7

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    if-ltz v0, :cond_c

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    aget-object v0, v1, v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_f2

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setEnable([IZLandroid/view/Menu;)V

    const v1, 0x7f0a01ea

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a01e9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a0265

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a00e9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a01ef

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a024f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result v3

    if-eqz v3, :cond_74

    move v3, v4

    goto :goto_75

    :cond_74
    move v3, v2

    :goto_75
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a00f4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result v3

    if-eqz v3, :cond_8d

    move v3, v4

    goto :goto_8e

    :cond_8d
    move v3, v2

    :goto_8e
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a0317

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a03ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v1, 0x7f0a01eb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v3, 0x7f0a01ec

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    const v3, 0x7f0a047d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    if-nez v0, :cond_c6

    return-void

    :cond_c6
    sget-object v2, Lcom/android/fileexplorer/fragment/PhoneMainFragment$6;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v4, :cond_e6

    const/4 v1, 0x2

    if-eq v2, v1, :cond_e2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_de

    const/4 v1, 0x4

    if-eq v2, v1, :cond_da

    goto :goto_f0

    :cond_da
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    goto :goto_f0

    :cond_de
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    goto :goto_f0

    :cond_e2
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    goto :goto_f0

    :cond_e6
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    :goto_f0
    return-void

    nop

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

    const v0, 0x7f0a03ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    if-eqz p1, :cond_36

    const v0, 0x7f0a03b8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-ne v3, p2, :cond_20

    move v3, v1

    goto :goto_21

    :cond_20
    move v3, v2

    :goto_21
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_24
    const v0, 0x7f0a03b9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_36

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eq v0, p2, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_36
    return-void
.end method

.method private hideRedPoint()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mActionBarMoreView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initActionBar()V
    .registers 9

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isInitActionBar:Z

    const v2, 0x7f110075

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setTitle(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    const v6, 0x7f0801e4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v6

    const v7, 0x7f182e2a

    invoke-static {v7}, Lnp/NPFog;->d(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/fileexplorer/fragment/b;

    invoke-direct {v6, p0, v3}, Lcom/android/fileexplorer/fragment/b;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    const v6, 0x7f080213

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v6

    const v7, 0x7f182f66

    invoke-static {v7}, Lnp/NPFog;->d(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/fileexplorer/fragment/b;

    invoke-direct {v4, p0, v1}, Lcom/android/fileexplorer/fragment/b;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDisplayModeIcon()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Lcom/android/fileexplorer/util/DebounceHelper;->Companion:Lcom/android/fileexplorer/util/DebounceHelper$Companion;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    const-wide/16 v4, 0x1f4

    new-instance v6, Lcom/android/fileexplorer/fragment/b;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Lcom/android/fileexplorer/fragment/b;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;I)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    const v3, 0x7f182c5d

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->updateDisplayModeView()V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->hideRedPoint()V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->initTab(Lmiuix/appcompat/app/ActionBar;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->checkIfNeedShowRedPoint()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setBottomTabMenuForHomeItem()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    return-void
.end method

.method private initTab(Lmiuix/appcompat/app/ActionBar;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    new-instance p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->getHomeTab()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 p1, 0x0

    :goto_13
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v1, v0

    if-ge p1, v1, :cond_32

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FragmentFactory;->newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lmiuix/appcompat/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->addFragment(Ljava/lang/String;ILjava/lang/Class;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_32
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$3;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    return-void
.end method

.method private isCloudFragment()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isHomeFragment()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRecFragment()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;)V
    .registers 4

    const-string p1, "click_search"

    const-string v0, "name"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    if-nez p1, :cond_13

    const-string p1, "最近tab页"

    goto :goto_1b

    :cond_13
    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    const-string p1, "手机tab页"

    goto :goto_1b

    :cond_19
    const-string p1, "云盘tab页"

    :goto_1b
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickSearch(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initActionBar$2(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz p1, :cond_d

    instance-of v0, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onNewFolder()V

    :cond_d
    return-void
.end method

.method private synthetic lambda$initActionBar$3(Landroid/view/View;)V
    .registers 3

    const-string p1, "PhoneMainFragment"

    const-string v0, "click112: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, ""

    :goto_15
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    if-nez p1, :cond_1f

    const-string p1, "最近tab页"

    goto :goto_27

    :cond_1f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    const-string p1, "手机tab页"

    goto :goto_27

    :cond_25
    const-string p1, "云盘tab页"

    :goto_27
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickDownload(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$initView$0(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->needHandleEvent(Landroid/view/DragEvent;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private synthetic lambda$prepareImmersionMenu$4(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->setClickStorage()V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    const-string p1, "PhoneMainFragment"

    const-string p2, "onClick: more open menu."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->hideRedPoint()V

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/PhoneMainFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/PhoneMainFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private prepareImmersionMenu(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const v0, 0x7f032f3b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->hideRedPoint()V

    if-nez v0, :cond_14

    return-void

    :cond_14
    new-instance v1, Lcom/android/fileexplorer/adapter/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBottomTabMenuForHomeItem()V
    .registers 4

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v0, :cond_2b

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getBottomTabMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a01c9

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f182eae

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v1, 0x7f0800cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2b
    return-void
.end method

.method private setMenuVisibleWrapper(Landroid/view/MenuItem;Z)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method private setViewPageCanDrag(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/viewpager/widget/ViewPager;->setDraggable(Z)V

    :cond_7
    return-void
.end method

.method private setupCreateFolderView()V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    const/16 v2, 0x8

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    if-eq v1, v0, :cond_23

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1d

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_23

    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2f

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2f

    :cond_2a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2f
    return-void
.end method

.method private setupDisplayModeView()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->updateDisplayModeView()V

    return-void
.end method

.method private startFileActivity(Landroid/content/Intent;)V
    .registers 7

    const-class v0, Lcom/android/fileexplorer/activity/FileActivity;

    const-string v1, "current_directory"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "inner_call"

    const/4 v4, 0x0

    if-nez v2, :cond_30

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_65

    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "pick_router"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_65
    :goto_65
    return-void
.end method

.method private switchTab(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private updateDisplayModeView()V
    .registers 3

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isRecFragment()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_31

    :cond_12
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isCloudFragment()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDataInited()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2b

    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_31

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_31
    return-void
.end method

.method private updatePos()V
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    new-array v0, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v3

    goto :goto_23

    :cond_14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v2

    :goto_23
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    move-result v0

    if-eqz v0, :cond_2c

    move v2, v3

    :cond_2c
    sput v2, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    return-void
.end method


# virtual methods
.method public checkIfNeedShowRedPoint()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mActionBarMoreView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyClickStorage()Z

    move-result v1

    if-nez v1, :cond_f

    const v1, 0x7f0801e3

    goto :goto_12

    :cond_f
    const v1, 0x7f0801e2

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_b
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    goto :goto_6

    :cond_11
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    goto :goto_6

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

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/16 v0, 0x3e8

    return v0

    :cond_b
    const/16 v0, 0x3ea

    return v0

    :cond_e
    const/16 v0, 0x3e9

    return v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    const-string v4, "/deeplink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getPageType(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3f

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PageRouter;->routeStorageSkipRequest(Landroidx/fragment/app/Fragment;I)V

    return-void

    :cond_3f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    const-string v0, "shortcut"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "extraTabIndex"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    goto/16 :goto_f4

    :cond_67
    const-string v3, "miui.intent.action.FORCE_TOUCH_CLEAN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "00003"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_f4

    :cond_7a
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_f4

    :cond_87
    const-string v3, "com.android.fileexplorer.shortcut.START_PHONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0xc8

    if-eqz v3, :cond_a3

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$4;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    goto :goto_f4

    :cond_a3
    const-string v3, "com.android.fileexplorer.shortcut.START_DOC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$5;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f4

    :cond_b8
    const-string v3, "com.android.fileexplorer.search.DOC_PAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;I)V

    goto :goto_f4

    :cond_c9
    const-string v3, "com.android.fileexplorer.export.VIEW_HOME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    const-string v0, "extraTabName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_eb

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getPageType(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_f4

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/PageRouter;->routeStorageSkipRequest(Landroidx/fragment/app/Fragment;I)V

    goto :goto_f4

    :cond_eb
    iput v2, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->switchTab(I)V

    goto :goto_f4

    :cond_f1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->startFileActivity(Landroid/content/Intent;)V

    :cond_f4
    :goto_f4
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f032ced

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f032933

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_24
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mRootView:Landroid/view/View;

    new-instance v0, Lcom/android/fileexplorer/fragment/c;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/c;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public onActionBarChange(Lcom/android/fileexplorer/event/ActionBarChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    return-void
.end method

.method public onActionModeChange(Lcom/android/fileexplorer/event/ActionModeChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/ActionModeChangeEvent;->isActionMode:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->isActionMode:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNavicatBarHeight:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    move p1, v0

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mReCreateFlag:Z

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->registerContentFragment(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance p1, Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    iget-object v0, p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->newIntent:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/fragment/PhoneMainFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$1;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->initPhonMainFragment:Landroidx/lifecycle/q;

    new-instance v0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;-><init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    :cond_16
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyView()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->onDestroyView()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->unRegisterContentFragment()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->clearOnPageChangeListeners()V

    return-void
.end method

.method public onDirectoryDisplayChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDirectoryDisplayChanged(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onDirectoryDisplayChanged(Z)V

    :cond_10
    return-void
.end method

.method public onNavigationMenuSelected(Landroid/view/MenuItem;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationMenuSelected(Landroid/view/MenuItem;)V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNavigationMenuSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneMainFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content onNavigatorModeChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " getView "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneMainFragment"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_39

    sget-object p1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    if-eq p2, p1, :cond_32

    move p1, v0

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleActionBar(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    :cond_39
    sget-object p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/util/FragmentNavInfo;->getFragmentNavId()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_58

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p2

    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/EmptyFragmentNavInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/util/FragmentNavInfo;->getFragmentNavId()I

    move-result p1

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/fileexplorer/fragment/NavInfo/EmptyFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_58
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setBottomTabMenuForHomeItem()V

    iget p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    if-ne p1, v0, :cond_81

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6d

    const p1, 0x7f1101fe

    goto :goto_7a

    :cond_6d
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result p1

    if-eqz p1, :cond_77

    const p1, 0x7f110337

    goto :goto_7a

    :cond_77
    const p1, 0x7f110353

    :goto_7a
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/a;->setTitle(I)V

    :cond_81
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    const-string v0, "最近tab页"

    goto :goto_f

    :cond_8
    if-ne v0, v1, :cond_d

    const-string v0, "手机tab页"

    goto :goto_f

    :cond_d
    const-string v0, "云盘tab页"

    :goto_f
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_46

    const-string v0, "onImmersionMenuSelected: currentFragment = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneMainFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_46
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    invoke-static {p2}, Lcom/android/fileexplorer/responsive/ResponsiveStateManager;->updateCurrentState(I)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSearchView:Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCreateFolder:Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mActionBarMoreView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_2f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSavedInstanceEvent:Lcom/android/fileexplorer/event/PadContentChangeEvent;

    if-eqz v0, :cond_25

    const-string v0, "onSaveInstanceState: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSavedInstanceEvent:Lcom/android/fileexplorer/event/PadContentChangeEvent;

    iget-object v1, v1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mSavedInstanceEvent:Lcom/android/fileexplorer/event/PadContentChangeEvent;

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_2c

    :cond_25
    iget v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentIndex:I

    const-string v1, "mCurrentIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_2c
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    :cond_10
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortOrderChanged(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortOrderChanged(Z)V

    :cond_10
    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public onUpdateArguments(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "NAVIGATOR_FRAGMENT_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lmiuix/viewpager/widget/ViewPager;->isDraggable()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mAdapter:Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    if-eqz p1, :cond_3c

    instance-of v0, p1, Lmiuix/navigator/app/NavigatorContentChildFragment;

    if-eqz v0, :cond_3c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    check-cast p1, Lmiuix/navigator/app/NavigatorContentChildFragment;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    :cond_3c
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->initActionBar()V

    :cond_c
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewModeChanged(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onViewModeChanged(I)V

    :cond_10
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->setDisplayModeIcon()V

    sget-object v0, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getNavigationId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    goto :goto_20

    :cond_19
    const-string p1, "PhoneMainFragment"

    const-string v0, "mCurrentFragment is null :error msg "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->mDisplayModeView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getDisplayModeIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setEnable([IZLandroid/view/Menu;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_12

    aget v1, p1, v0

    invoke-interface {p3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public showBottomToast(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042db8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f032ced

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4e

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_40

    iget v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mNavicatBarHeight:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_40
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/view/ToastTextView;->show(Ljava/lang/String;ZJ)V

    :cond_4e
    return-void
.end method
