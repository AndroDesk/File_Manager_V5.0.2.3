.class Lcom/android/fileexplorer/PhoneMainActivityProxy;
.super Lcom/android/fileexplorer/BaseMainActivityProxy;
.source "PhoneMainActivityProxy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_FILE_NAME:Ljava/lang/String; = "extraFileName"

.field private static final EXTRA_TAB_INDEX:Ljava/lang/String; = "extraTabIndex"

.field private static final EXTRA_TAB_NAME:Ljava/lang/String; = "extraTabName"

.field private static final PAGE_LIMIT:I

.field private static final TAB_MORE:I = 0x6

.field private static final TAB_RECENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PhoneMainActivityProxy"


# instance fields
.field private mActionBarMoreView:Landroid/widget/ImageView;

.field public mCurrentFragment:Lmiuix/appcompat/app/Fragment;

.field private mCurrentIndex:I

.field private mDownloadView:Landroid/widget/ImageView;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mHandleScrollActionUp:Z

.field private mRootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

.field private mSearchView:Landroid/widget/ImageView;

.field private mSelectedDocPageMenuId:I

.field private mTouchPos:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    array-length v0, v0

    .line 4
    sput v0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->PAGE_LIMIT:I

    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/BaseMainActivityProxy;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mTouchPos:I

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mHandleScrollActionUp:Z

    .line 11
    const v0, 0x7f0a025e

    .line 14
    iput v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSelectedDocPageMenuId:I

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->lambda$initActionBar$3(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/PhoneMainActivityProxy;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->selectTab(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/PhoneMainActivityProxy;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mHandleScrollActionUp:Z

    .line 3
    return p1
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mTouchPos:I

    .line 3
    return p1
.end method

.method public static synthetic b(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->lambda$initActionBar$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->lambda$initView$0(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->lambda$initActionBar$1(Landroid/view/View;)V

    return-void
.end method

.method private getPageType(Ljava/lang/String;)I
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, -0x1

    .line 13
    sparse-switch v0, :sswitch_data_78

    .line 16
    :goto_f
    move p1, v5

    .line 17
    goto :goto_5d

    .line 18
    :sswitch_11
    const-string v0, "video"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1a

    .line 26
    goto :goto_f

    .line 27
    :cond_1a
    const/4 p1, 0x6

    .line 28
    goto :goto_5d

    .line 29
    :sswitch_1c
    const-string v0, "phone"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_25

    .line 37
    goto :goto_f

    .line 38
    :cond_25
    const/4 p1, 0x5

    .line 39
    goto :goto_5d

    .line 40
    :sswitch_27
    const-string v0, "music"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_30

    .line 48
    goto :goto_f

    .line 49
    :cond_30
    const/4 p1, 0x4

    .line 50
    goto :goto_5d

    .line 51
    :sswitch_32
    const-string v0, "cloud"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3b

    .line 59
    goto :goto_f

    .line 60
    :cond_3b
    move p1, v1

    .line 61
    goto :goto_5d

    .line 62
    :sswitch_3d
    const-string v0, "doc"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_46

    .line 70
    goto :goto_f

    .line 71
    :cond_46
    move p1, v2

    .line 72
    goto :goto_5d

    .line 73
    :sswitch_48
    const-string v0, "picture"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_51

    .line 81
    goto :goto_f

    .line 82
    :cond_51
    move p1, v3

    .line 83
    goto :goto_5d

    .line 84
    :sswitch_53
    const-string v0, "recent"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5c

    .line 92
    goto :goto_f

    .line 93
    :cond_5c
    move p1, v4

    .line 94
    :goto_5d
    packed-switch p1, :pswitch_data_96

    .line 97
    return v5

    .line 98
    :pswitch_61  #0x6
    return v3

    .line 99
    :pswitch_62  #0x5
    iput v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 101
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    .line 104
    return v5

    .line 105
    :pswitch_68  #0x4
    return v2

    .line 106
    :pswitch_69  #0x3
    iput v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 108
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    .line 111
    return v5

    .line 112
    :pswitch_6f  #0x2
    return v1

    .line 113
    :pswitch_70  #0x1
    return v4

    .line 114
    :pswitch_71  #0x0
    iput v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 116
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    .line 119
    return v5

    .line 120
    nop

    .line 121
    :sswitch_data_78
    .sparse-switch
        -0x37b9b9a5 -> :sswitch_53
        -0x226fa302 -> :sswitch_48
        0x18538 -> :sswitch_3d
        0x5a5de35 -> :sswitch_32
        0x636ee25 -> :sswitch_27
        0x65b3d6e -> :sswitch_1c
        0x6b0147b -> :sswitch_11
    .end sparse-switch

    .line 151
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_71  #00000000
        :pswitch_70  #00000001
        :pswitch_6f  #00000002
        :pswitch_69  #00000003
        :pswitch_68  #00000004
        :pswitch_62  #00000005
        :pswitch_61  #00000006
    .end packed-switch
.end method

.method private getParamsByPos(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1e

    const/4 p1, 0x0

    return-object p1

    :pswitch_5  #0x7
    const-string p1, "more"

    return-object p1

    :pswitch_8  #0x6
    const-string p1, "favorite"

    return-object p1

    :pswitch_b  #0x5
    const-string p1, "music"

    return-object p1

    :pswitch_e  #0x4
    const-string p1, "picture"

    return-object p1

    :pswitch_11  #0x3
    const-string p1, "video"

    return-object p1

    :pswitch_14  #0x2
    const-string p1, "doc"

    return-object p1

    :pswitch_17  #0x1
    const-string p1, "recent"

    return-object p1

    :pswitch_1a  #0x0
    const-string p1, "phone"

    return-object p1

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_17  #00000001
        :pswitch_14  #00000002
        :pswitch_11  #00000003
        :pswitch_e  #00000004
        :pswitch_b  #00000005
        :pswitch_8  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method

.method private handleMenu(Landroid/view/Menu;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

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
    const v1, 0x7f0a01ea

    .line 17
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 20
    move-result-object v1

    .line 21
    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 23
    const/4 v3, 0x1

    .line 24
    xor-int/2addr v2, v3

    .line 25
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 28
    const v1, 0x7f0a01e9

    .line 31
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    const v1, 0x7f0a00e9

    .line 41
    const v2, 0x7f0a03ad

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {p1, v1, v3, v2, v4}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 48
    const v1, 0x7f0a01ec

    .line 51
    const v2, 0x7f0a047d

    .line 54
    invoke-static {p1, v1, v4, v2, v4}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 57
    if-nez v0, :cond_3b

    .line 59
    return-void

    .line 60
    :cond_3b
    sget-object v1, Lcom/android/fileexplorer/PhoneMainActivityProxy$3;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 62
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 65
    move-result v2

    .line 66
    aget v1, v1, v2

    .line 68
    if-eq v1, v3, :cond_5b

    .line 70
    const/4 v2, 0x2

    .line 71
    if-eq v1, v2, :cond_57

    .line 73
    const/4 v2, 0x3

    .line 74
    if-eq v1, v2, :cond_53

    .line 76
    const/4 v2, 0x4

    .line 77
    if-eq v1, v2, :cond_4f

    .line 79
    goto :goto_5e

    .line 80
    :cond_4f
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 83
    goto :goto_5e

    .line 84
    :cond_53
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 87
    goto :goto_5e

    .line 88
    :cond_57
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 91
    goto :goto_5e

    .line 92
    :cond_5b
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 95
    :goto_5e
    return-void
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
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f0a03b8

    .line 15
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v1, p2, :cond_1a

    .line 25
    move v1, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v1, v3

    .line 28
    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 31
    const v0, 0x7f0a03b9

    .line 34
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 40
    if-eq v0, p2, :cond_2a

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v2, v3

    .line 44
    :goto_2b
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 47
    return-void
.end method

.method private hideRedPoint()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

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
    .registers 8

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 21
    new-instance v1, Landroid/widget/LinearLayout;

    .line 23
    iget-object v3, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 25
    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    iget-object v3, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v3

    .line 37
    const v4, 0x7f070058

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 43
    move-result v3

    .line 44
    new-instance v4, Landroid/widget/ImageView;

    .line 46
    iget-object v5, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 48
    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    .line 53
    const v5, 0x7f0801e4

    .line 56
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    .line 61
    iget-object v5, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 63
    const v6, 0x7f1103bc

    .line 66
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v4, v2, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    new-instance v4, Landroid/widget/ImageView;

    .line 80
    iget-object v5, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 82
    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    .line 87
    const v5, 0x7f08021a

    .line 90
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    .line 95
    iget-object v5, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 97
    const v6, 0x7f110067

    .line 100
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v4, v2, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    new-instance v3, Landroid/widget/ImageView;

    .line 114
    iget-object v4, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 116
    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 119
    iput-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    .line 121
    iget-object v4, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 123
    const v5, 0x7f11040c

    .line 126
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    .line 135
    const v4, 0x7f0801e2

    .line 138
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    .line 143
    new-instance v4, Lcom/android/fileexplorer/d;

    .line 145
    invoke-direct {v4, p0, v2}, Lcom/android/fileexplorer/d;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V

    .line 148
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    .line 153
    new-instance v4, Lcom/android/fileexplorer/d;

    .line 155
    const/4 v5, 0x1

    .line 156
    invoke-direct {v4, p0, v5}, Lcom/android/fileexplorer/d;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V

    .line 159
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    .line 164
    new-instance v4, Lcom/android/fileexplorer/e;

    .line 166
    invoke-direct {v4, p0, v1}, Lcom/android/fileexplorer/e;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/widget/LinearLayout;)V

    .line 169
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    .line 174
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    .line 184
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 193
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 196
    invoke-direct {p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->hideRedPoint()V

    .line 199
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->initTab(Lmiuix/appcompat/app/ActionBar;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->checkIfNeedShowRedPoint()V

    .line 205
    return-void
.end method

.method private initTab(Lmiuix/appcompat/app/ActionBar;)V
    .registers 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setNavigationMode(I)V

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    array-length v1, v1

    .line 9
    if-ge v0, v1, :cond_46

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/a;->newTab()Landroidx/appcompat/app/a$d;

    .line 14
    move-result-object v4

    .line 15
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB_NAMES:Ljava/util/HashMap;

    .line 17
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 19
    aget-object v2, v2, v0

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v4, v1}, Landroidx/appcompat/app/a$d;->setText(I)Landroidx/appcompat/app/a$d;

    .line 34
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 36
    aget-object v1, v1, v0

    .line 38
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FragmentFactory;->newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lmiuix/appcompat/app/Fragment;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    move-result-object v5

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    move-object v2, p1

    .line 57
    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 60
    new-instance v1, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;

    .line 62
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;)V

    .line 65
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 70
    goto :goto_5

    .line 71
    :cond_46
    iget p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->selectTab(I)V

    .line 76
    return-void
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
    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    .line 15
    return-void
.end method

.method private synthetic lambda$initActionBar$2(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/util/DownloadUtils;->startDownloadPage(Landroid/content/Context;)V

    .line 6
    return-void
.end method

.method private synthetic lambda$initActionBar$3(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->setClickStorage()V

    .line 4
    iget-object p2, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, p1, v0}, Lmiuix/appcompat/app/AppCompatActivity;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 10
    const-string p1, "PhoneMainActivityProxy"

    .line 12
    const-string p2, "onClick: more open menu."

    .line 14
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->hideRedPoint()V

    .line 20
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

.method private selectTab(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->getTabAt(I)Landroidx/appcompat/app/a$d;

    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->getTabAt(I)Landroidx/appcompat/app/a$d;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/appcompat/app/a$d;->select()V

    .line 24
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 32
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
    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 25
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    new-instance p1, Ljava/io/File;

    .line 33
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 45
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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
    iget-object v2, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 79
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    const-string v0, "pick_router"

    .line 84
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_65
    :goto_65
    return-void
.end method

.method private switchTab(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getTabCount()I

    .line 10
    move-result v0

    .line 11
    if-le v0, p1, :cond_19

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->getTabAt(I)Landroidx/appcompat/app/a$d;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->select()V

    .line 26
    :cond_19
    return-void
.end method


# virtual methods
.method public checkIfNeedShowRedPoint()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

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

.method public handleIntent(Landroid/content/Intent;)V
    .registers 7

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "android.intent.action.MAIN"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_2e

    .line 17
    const-string v0, "shortcut"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "1"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    const-string v0, "extraTabIndex"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_e4

    .line 36
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    .line 45
    goto/16 :goto_e4

    .line 47
    :cond_2e
    const-string v1, "miui.intent.action.FORCE_TOUCH_CLEAN"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3f

    .line 55
    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 57
    const-string v0, "00003"

    .line 59
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 62
    goto/16 :goto_e4

    .line 64
    :cond_3f
    const-string v1, "android.intent.action.SEARCH"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_4e

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 74
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    .line 77
    goto/16 :goto_e4

    .line 79
    :cond_4e
    const-string v1, "com.android.fileexplorer.shortcut.START_PHONE"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 85
    const/4 v3, 0x1

    .line 86
    if-eqz v1, :cond_5e

    .line 88
    iput v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 90
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    .line 93
    goto/16 :goto_e4

    .line 95
    :cond_5e
    const-string v1, "com.android.fileexplorer.shortcut.START_DOC"

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v1

    .line 101
    const/4 v4, 0x3

    .line 102
    if-eqz v1, :cond_76

    .line 104
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_e4

    .line 110
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1, v4}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;I)V

    .line 117
    goto/16 :goto_e4

    .line 119
    :cond_76
    const-string v1, "com.android.fileexplorer.search.DOC_PAGE"

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_86

    .line 127
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1, v4}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;I)V

    .line 134
    goto :goto_e4

    .line 135
    :cond_86
    const-string v1, "com.android.fileexplorer.export.VIEW_HOME"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_af

    .line 143
    const-string v0, "extraTabName"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_a9

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->getPageType(Ljava/lang/String;)I

    .line 158
    move-result p1

    .line 159
    const/4 v0, -0x1

    .line 160
    if-eq p1, v0, :cond_e4

    .line 162
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;I)V

    .line 169
    goto :goto_e4

    .line 170
    :cond_a9
    iput v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    .line 172
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    .line 175
    goto :goto_e4

    .line 176
    :cond_af
    const-string v1, "com.android.fileexplorer.export.START_OEPN_FILE"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_e1

    .line 184
    const-string v0, "extraFileName"

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_e4

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    move-result-object p1

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_e4

    .line 202
    new-instance v0, Lcom/android/fileexplorer/model/FileWithExt;

    .line 204
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 208
    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance p1, Ljava/util/ArrayList;

    .line 213
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 221
    const/4 v1, 0x0

    .line 222
    invoke-static {v0, p1, v2, v1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    .line 225
    goto :goto_e4

    .line 226
    :cond_e1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->startFileActivity(Landroid/content/Intent;)V

    .line 229
    :cond_e4
    :goto_e4
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->initActionBar()V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mRootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    .line 14
    new-instance v0, Lcom/android/fileexplorer/PhoneMainActivityProxy$1;

    .line 16
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy$1;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;)V

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mRootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    .line 24
    new-instance v0, Lcom/android/fileexplorer/f;

    .line 26
    invoke-direct {v0}, Lcom/android/fileexplorer/f;-><init>()V

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 32
    return-void
.end method

.method public onActionModeChange(Lcom/android/fileexplorer/event/ActionModeChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0e0005

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 17
    :cond_10
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-static {p1, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 12
    if-eqz v0, :cond_30

    .line 14
    const-string v0, "onImmersionMenuSelected: currentFragment = "

    .line 16
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "PhoneMainActivityProxy"

    .line 39
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 44
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 46
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 49
    :cond_30
    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleMenu(Landroid/view/Menu;)V

    .line 4
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/DownloadUtils;->isSupportDownloadPage(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    .line 11
    if-eqz v0, :cond_1a

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    .line 20
    if-eqz v0, :cond_1a

    .line 22
    const/16 v1, 0x8

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    .line 29
    if-eqz v0, :cond_25

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    .line 40
    if-eqz v0, :cond_30

    .line 42
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    .line 51
    if-eqz v0, :cond_3b

    .line 53
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 60
    :cond_3b
    return-void
.end method

.method public setupContentView()V
    .registers 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    const v1, 0x7f0d0080

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    const v1, 0x7f0a017b

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mRootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    .line 29
    return-void
.end method
