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

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v0, v0

    sput v0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->PAGE_LIMIT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/BaseMainActivityProxy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    iput v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mTouchPos:I

    iput-boolean v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mHandleScrollActionUp:Z

    const v0, 0x7f0a025e

    iput v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSelectedDocPageMenuId:I

    iput-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->lambda$initActionBar$3(Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/PhoneMainActivityProxy;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->selectTab(I)V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/PhoneMainActivityProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mHandleScrollActionUp:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mTouchPos:I

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_78

    :goto_f
    move p1, v5

    goto :goto_5d

    :sswitch_11
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 p1, 0x6

    goto :goto_5d

    :sswitch_1c
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_f

    :cond_25
    const/4 p1, 0x5

    goto :goto_5d

    :sswitch_27
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_f

    :cond_30
    const/4 p1, 0x4

    goto :goto_5d

    :sswitch_32
    const-string v0, "cloud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_f

    :cond_3b
    move p1, v1

    goto :goto_5d

    :sswitch_3d
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_f

    :cond_46
    move p1, v2

    goto :goto_5d

    :sswitch_48
    const-string v0, "picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_f

    :cond_51
    move p1, v3

    goto :goto_5d

    :sswitch_53
    const-string v0, "recent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_f

    :cond_5c
    move p1, v4

    :goto_5d
    packed-switch p1, :pswitch_data_96

    return v5

    :pswitch_61  #0x6
    return v3

    :pswitch_62  #0x5
    iput v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    return v5

    :pswitch_68  #0x4
    return v2

    :pswitch_69  #0x3
    iput v2, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    return v5

    :pswitch_6f  #0x2
    return v1

    :pswitch_70  #0x1
    return v4

    :pswitch_71  #0x0
    iput v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    return v5

    nop

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

    iget v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    if-ltz v0, :cond_c

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    aget-object v0, v1, v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const v1, 0x7f0a01ea

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a01e9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a00e9

    const v2, 0x7f0a03ad

    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v2, v4}, La/a;->s(Landroid/view/Menu;IZIZ)V

    const v1, 0x7f0a01ec

    const v2, 0x7f0a047d

    invoke-static {p1, v1, v4, v2, v4}, La/a;->s(Landroid/view/Menu;IZIZ)V

    if-nez v0, :cond_3b

    return-void

    :cond_3b
    sget-object v1, Lcom/android/fileexplorer/PhoneMainActivityProxy$3;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_5b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_57

    const/4 v2, 0x3

    if-eq v1, v2, :cond_53

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4f

    goto :goto_5e

    :cond_4f
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    goto :goto_5e

    :cond_53
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    goto :goto_5e

    :cond_57
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    goto :goto_5e

    :cond_5b
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    :goto_5e
    return-void
.end method

.method private handleSecondaryMenu(Landroid/view/Menu;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 7

    const v0, 0x7f0a03ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    const v0, 0x7f0a03b8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p2, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a03b9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eq v0, p2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private hideRedPoint()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initActionBar()V
    .registers 8

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    const v5, 0x7f0801e4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v6, 0x7f182e2a

    invoke-static {v6}, Lnp/NPFog;->d(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    const v5, 0x7f08021a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v6, 0x7f182df1

    invoke-static {v6}, Lnp/NPFog;->d(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v5, 0x7f18299a

    invoke-static {v5}, Lnp/NPFog;->d(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    const v4, 0x7f0801e2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/fileexplorer/d;

    invoke-direct {v4, p0, v2}, Lcom/android/fileexplorer/d;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/fileexplorer/d;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/fileexplorer/d;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/fileexplorer/e;

    invoke-direct {v4, p0, v1}, Lcom/android/fileexplorer/e;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->hideRedPoint()V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->initTab(Lmiuix/appcompat/app/ActionBar;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->checkIfNeedShowRedPoint()V

    return-void
.end method

.method private initTab(Lmiuix/appcompat/app/ActionBar;)V
    .registers 10

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setNavigationMode(I)V

    const/4 v0, 0x0

    :goto_5
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v1, v1

    if-ge v0, v1, :cond_46

    invoke-virtual {p1}, Landroidx/appcompat/app/a;->newTab()Landroidx/appcompat/app/a$d;

    move-result-object v4

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB_NAMES:Ljava/util/HashMap;

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroidx/appcompat/app/a$d;->setText(I)Landroidx/appcompat/app/a$d;

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/fileexplorer/controller/FragmentFactory;->newInstance(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lmiuix/appcompat/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    new-instance v1, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy$2;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_46
    iget p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->selectTab(I)V

    return-void
.end method

.method private synthetic lambda$initActionBar$1(Landroid/view/View;)V
    .registers 4

    const-string p1, "click_search"

    const-string v0, "name"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private synthetic lambda$initActionBar$2(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/util/DownloadUtils;->startDownloadPage(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$initActionBar$3(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->setClickStorage()V

    iget-object p2, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lmiuix/appcompat/app/AppCompatActivity;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    const-string p1, "PhoneMainActivityProxy"

    const-string p2, "onClick: more open menu."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->hideRedPoint()V

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

.method private selectTab(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->getTabAt(I)Landroidx/appcompat/app/a$d;

    move-result-object v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->getTabAt(I)Landroidx/appcompat/app/a$d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/a$d;->select()V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    iput-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

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

    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    iget-object v2, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "pick_router"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_65
    :goto_65
    return-void
.end method

.method private switchTab(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getTabCount()I

    move-result v0

    if-le v0, p1, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->getTabAt(I)Landroidx/appcompat/app/a$d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->select()V

    :cond_19
    return-void
.end method


# virtual methods
.method public checkIfNeedShowRedPoint()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

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

.method public handleIntent(Landroid/content/Intent;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    const-string v0, "shortcut"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "extraTabIndex"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    goto/16 :goto_e4

    :cond_2e
    const-string v1, "miui.intent.action.FORCE_TOUCH_CLEAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const-string v0, "00003"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_e4

    :cond_3f
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_e4

    :cond_4e
    const-string v1, "com.android.fileexplorer.shortcut.START_PHONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5e

    iput v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    goto/16 :goto_e4

    :cond_5e
    const-string v1, "com.android.fileexplorer.shortcut.START_DOC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_76

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    if-eqz p1, :cond_e4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;I)V

    goto/16 :goto_e4

    :cond_76
    const-string v1, "com.android.fileexplorer.search.DOC_PAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;I)V

    goto :goto_e4

    :cond_86
    const-string v1, "com.android.fileexplorer.export.VIEW_HOME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    const-string v0, "extraTabName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->getPageType(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;I)V

    goto :goto_e4

    :cond_a9
    iput v3, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->switchTab(I)V

    goto :goto_e4

    :cond_af
    const-string v1, "com.android.fileexplorer.export.START_OEPN_FILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    const-string v0, "extraFileName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e4

    new-instance v0, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    goto :goto_e4

    :cond_e1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->startFileActivity(Landroid/content/Intent;)V

    :cond_e4
    :goto_e4
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->initActionBar()V

    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mRootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    new-instance v0, Lcom/android/fileexplorer/PhoneMainActivityProxy$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/PhoneMainActivityProxy$1;-><init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    iget-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mRootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    new-instance v0, Lcom/android/fileexplorer/f;

    invoke-direct {v0}, Lcom/android/fileexplorer/f;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

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

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_10
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_30

    const-string v0, "onImmersionMenuSelected: currentFragment = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneMainActivityProxy"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    :cond_30
    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/PhoneMainActivityProxy;->handleMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/util/DownloadUtils;->isSupportDownloadPage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mDownloadView:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mSearchView:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mActionBarMoreView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_3b
    return-void
.end method

.method public setupContentView()V
    .registers 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v1, 0x7f042d16

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/BaseMainActivityProxy;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const v1, 0x7f032ced

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mRootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    return-void
.end method
