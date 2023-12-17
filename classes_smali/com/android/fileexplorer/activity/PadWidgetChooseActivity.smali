.class public Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;
.super Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;
.source "PadWidgetChooseActivity.java"


# static fields
.field public static final FRAGMENT_TAG_CONTENT:Ljava/lang/String; = "Content"

.field private static final TAG:Ljava/lang/String; = "PadWidgetChooseActivity"


# instance fields
.field private flag_permission:I

.field private homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

.field private mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

.field private mFixedSpace:I

.field private mFragmentContainer:Landroid/view/View;

.field private mLargeScreenMode:Z

.field private mMiuiWidgetScreenBound:Landroid/os/Parcelable;

.field private mPageHeight:I

.field private mPageWidth:I

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;-><init>()V

    return-void
.end method

.method private computeEditLocation()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    instance-of v1, v0, Landroid/graphics/Rect;

    if-eqz v1, :cond_c7

    check-cast v0, Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealHeight(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    const-string v5, " miui widget screen bound is "

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v7, v5, v6

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v2, v2, 0x2

    if-le v7, v2, :cond_40

    iget v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFixedSpace:I

    sub-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageWidth:I

    sub-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->left:I

    goto :goto_45

    :cond_40
    iget v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFixedSpace:I

    add-int/2addr v6, v2

    iput v6, v1, Landroid/graphics/Rect;->left:I

    :goto_45
    invoke-static {p0}, Lcom/android/fileexplorer/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageHeight:I

    add-int v7, v5, v6

    if-gt v7, v3, :cond_55

    sub-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->top:I

    goto :goto_62

    :cond_55
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v6, :cond_60

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_62

    :cond_60
    iput v2, v1, Landroid/graphics/Rect;->top:I

    :goto_62
    const v0, 0x7f032fae

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_c0

    iget v3, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const-string v1, " leftMargin "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " topMargin "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rightMargin "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bottomMargin "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c7
    return-void
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 4

    const p1, 0x7f032de9

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->rootView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->rootView:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$1;-><init>(Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f032939

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFragmentContainer:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$2;-><init>(Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFragmentContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707fd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFixedSpace:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707ff

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageWidth:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageHeight:I

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->showFloatFragment()V

    return-void
.end method

.method private requestPermission(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->flag_permission:I

    :cond_e
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->flag_permission:I

    if-ne v1, v2, :cond_1a

    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_3f

    :cond_1a
    const/4 v1, 0x1

    if-ne v1, v2, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x72

    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_3f

    :cond_2a
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_3f

    :cond_34
    if-nez p1, :cond_3f

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private setBundle()V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "isEdit"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "is_edit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_26
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private setPageOrientation()V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    const-string v1, "setPageOrientation: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenSizeDp(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    if-le v1, v0, :cond_19

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1c

    :cond_19
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1c
    return-void
.end method

.method private showFloatFragment()V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->computeEditLocation()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->rootView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/fileexplorer/util/UIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->rootView:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Content"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :cond_2c
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->setBundle()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    const v2, 0x7f0a04af

    iget-object v3, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    return-void
.end method


# virtual methods
.method public getAnchorView()Landroid/view/View;
    .registers 2

    const v0, 0x7f032d1b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ignoreParentResponsiveLayout()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLargeScreenMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x80

    if-eq p1, p3, :cond_8

    goto :goto_3e

    :cond_8
    const/4 p1, -0x3

    if-eq p2, p1, :cond_32

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2a

    if-eqz p2, :cond_26

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1b

    const/4 p1, 0x2

    if-eq p2, p1, :cond_17

    goto :goto_3e

    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_3e

    :cond_1b
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    goto :goto_3e

    :cond_26
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_3e

    :cond_2a
    sget-object p1, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    const-string p2, "miss config"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    move-result p1

    if-nez p1, :cond_3e

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    sget-object v0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    const-string v1, "screenSize:"

    invoke-static {v1, p1, v0}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    :goto_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "miuiWidgetScreenBound"

    const/4 v1, 0x0

    const-string v2, "isLargeScreenMode"

    if-eqz p1, :cond_1d

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    goto :goto_4d

    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4d

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    sget-object v0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    const-string v1, "largeScreenMode:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->setPageOrientation()V

    const v0, 0x7f042c0d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->requestPermission(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    invoke-direct {p1}, Lcom/android/fileexplorer/widget/HomeKeyReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    const-string v1, "isLargeScreenMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    const-string v1, "miuiWidgetScreenBound"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onStart()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;->setPadWidgetActivity(Z)V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onStop()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;->setPadWidgetActivity(Z)V

    return-void
.end method
