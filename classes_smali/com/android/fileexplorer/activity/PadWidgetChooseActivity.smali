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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;-><init>()V

    .line 4
    return-void
.end method

.method private computeEditLocation()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    .line 3
    instance-of v1, v0, Landroid/graphics/Rect;

    .line 5
    if-eqz v1, :cond_c3

    .line 7
    check-cast v0, Landroid/graphics/Rect;

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    .line 11
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealWidth(Landroid/content/Context;)I

    .line 17
    move-result v2

    .line 18
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealHeight(Landroid/content/Context;)I

    .line 21
    move-result v3

    .line 22
    sget-object v4, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    .line 24
    const-string v5, " miui widget screen bound is "

    .line 26
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v5

    .line 30
    iget-object v6, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 44
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 46
    add-int v7, v5, v6

    .line 48
    div-int/lit8 v7, v7, 0x2

    .line 50
    div-int/lit8 v2, v2, 0x2

    .line 52
    if-le v7, v2, :cond_40

    .line 54
    iget v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFixedSpace:I

    .line 56
    sub-int/2addr v5, v2

    .line 57
    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 59
    iget v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageWidth:I

    .line 61
    sub-int/2addr v5, v2

    .line 62
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 64
    goto :goto_45

    .line 65
    :cond_40
    iget v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFixedSpace:I

    .line 67
    add-int/2addr v6, v2

    .line 68
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 70
    :goto_45
    invoke-static {p0}, Lcom/android/fileexplorer/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 73
    move-result v2

    .line 74
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 76
    iget v6, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageHeight:I

    .line 78
    add-int v7, v5, v6

    .line 80
    if-gt v7, v3, :cond_55

    .line 82
    sub-int/2addr v5, v2

    .line 83
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 85
    goto :goto_62

    .line 86
    :cond_55
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 88
    if-lt v0, v6, :cond_60

    .line 90
    sub-int/2addr v0, v2

    .line 91
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 93
    sub-int/2addr v0, v6

    .line 94
    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 96
    goto :goto_62

    .line 97
    :cond_60
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 99
    :goto_62
    const v0, 0x7f0a0238

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    move-result-object v2

    .line 110
    instance-of v3, v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    if-eqz v3, :cond_bc

    .line 114
    iget v3, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageWidth:I

    .line 116
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    iget v3, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageHeight:I

    .line 120
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    move-object v3, v2

    .line 123
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 127
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 129
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 131
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 133
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 135
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 137
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 139
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 141
    const-string v1, " leftMargin "

    .line 143
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    move-result-object v1

    .line 147
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 149
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v5, " topMargin "

    .line 154
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 159
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v5, " rightMargin "

    .line 164
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 169
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v5, " bottomMargin "

    .line 174
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 186
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_bc
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :cond_c3
    return-void
.end method

.method private onCreateImpl(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const p1, 0x7f0a007f

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->rootView:Landroid/view/View;

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->rootView:Landroid/view/View;

    .line 16
    new-instance v1, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$1;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$1;-><init>(Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;)V

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const p1, 0x7f0a04af

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFragmentContainer:Landroid/view/View;

    .line 33
    new-instance v1, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$2;

    .line 35
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$2;-><init>(Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFragmentContainer:Landroid/view/View;

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object p1

    .line 50
    const v0, 0x7f0707fd

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mFixedSpace:I

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object p1

    .line 63
    const v0, 0x7f0707ff

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageWidth:I

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object p1

    .line 76
    const v0, 0x7f0707fe

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mPageHeight:I

    .line 85
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->showFloatFragment()V

    .line 88
    return-void
.end method

.method private requestPermission(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_e

    .line 9
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/PermissionUtils;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    iput v1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->flag_permission:I

    .line 15
    :cond_e
    const/4 v1, -0x1

    .line 16
    iget v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->flag_permission:I

    .line 18
    if-ne v1, v2, :cond_1a

    .line 20
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->showPermissionRequiredDialog(Landroid/app/Activity;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 26
    goto :goto_3f

    .line 27
    :cond_1a
    const/4 v1, 0x1

    .line 28
    if-ne v1, v2, :cond_2a

    .line 30
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const/16 v0, 0x72

    .line 39
    invoke-static {p0, p1, v0}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 42
    goto :goto_3f

    .line 43
    :cond_2a
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_34

    .line 49
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 52
    goto :goto_3f

    .line 53
    :cond_34
    if-nez p1, :cond_3f

    .line 55
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3f

    .line 61
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method private setBundle()V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_26

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "isEdit"

    .line 26
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v3, "is_edit"

    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    :cond_26
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 41
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method private setPageOrientation()V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "setPageOrientation: "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenSizeDp(Landroid/content/Context;)[I

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    aget v1, v0, v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aget v0, v0, v2

    .line 18
    if-le v1, v0, :cond_19

    .line 20
    const/16 v0, 0xb

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 29
    :goto_1c
    return-void
.end method

.method private showFloatFragment()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->computeEditLocation()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->rootView:Landroid/view/View;

    .line 6
    invoke-static {p0}, Lcom/android/fileexplorer/util/UIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->rootView:Landroid/view/View;

    .line 16
    const v1, 0x106000d

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Content"

    .line 28
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 36
    if-nez v0, :cond_2c

    .line 38
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    .line 40
    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 45
    :cond_2c
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->setBundle()V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 55
    move-result-object v0

    .line 56
    const v2, 0x7f0a04af

    .line 59
    iget-object v3, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mCurrentFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 61
    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 67
    return-void
.end method


# virtual methods
.method public getAnchorView()Landroid/view/View;
    .registers 2

    .line 1
    const v0, 0x7f0a008d

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public ignoreParentResponsiveLayout()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLargeScreenMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    .line 3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/16 p3, 0x80

    .line 6
    if-eq p1, p3, :cond_8

    .line 8
    goto :goto_3e

    .line 9
    :cond_8
    const/4 p1, -0x3

    .line 10
    if-eq p2, p1, :cond_32

    .line 12
    const/4 p1, -0x1

    .line 13
    if-eq p2, p1, :cond_2a

    .line 15
    if-eqz p2, :cond_26

    .line 17
    const/4 p1, 0x1

    .line 18
    if-eq p2, p1, :cond_1b

    .line 20
    const/4 p1, 0x2

    .line 21
    if-eq p2, p1, :cond_17

    .line 23
    goto :goto_3e

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 27
    goto :goto_3e

    .line 28
    :cond_1b
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    .line 31
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V

    .line 38
    goto :goto_3e

    .line 39
    :cond_26
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 42
    goto :goto_3e

    .line 43
    :cond_2a
    sget-object p1, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    .line 45
    const-string p2, "miss config"

    .line 47
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_3e

    .line 51
    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivacySwitch()Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3e

    .line 57
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 60
    invoke-static {p0}, Lcom/android/fileexplorer/util/PrivacyUtil;->startNecessaryPermissionPage(Landroid/app/Activity;)Z

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 6
    and-int/lit8 p1, p1, 0xf

    .line 8
    sget-object v0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    .line 10
    const-string v1, "screenSize:"

    .line 12
    invoke-static {v1, p1, v0}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p1, v0, :cond_15

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    .line 25
    :goto_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x8000000

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 10
    const-string v0, "miuiWidgetScreenBound"

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "isLargeScreenMode"

    .line 15
    if-eqz p1, :cond_1d

    .line 17
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    move-result v1

    .line 21
    iput-boolean v1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    .line 29
    goto :goto_4d

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_4d

    .line 36
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    move-result v1

    .line 40
    iput-boolean v1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    .line 42
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    .line 48
    sget-object v0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->TAG:Ljava/lang/String;

    .line 50
    const-string v1, "largeScreenMode:"

    .line 52
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v1

    .line 56
    iget-boolean v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, " bound:"

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4d
    :goto_4d
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->setPageOrientation()V

    .line 84
    const v0, 0x7f0d019b

    .line 87
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 90
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->requestPermission(Landroid/os/Bundle;)V

    .line 93
    new-instance p1, Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    .line 95
    invoke-direct {p1}, Lcom/android/fileexplorer/widget/HomeKeyReceiver;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    .line 100
    new-instance p1, Landroid/content/IntentFilter;

    .line 102
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 104
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    .line 109
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->homeKeyReceiver:Lcom/android/fileexplorer/widget/HomeKeyReceiver;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mLargeScreenMode:Z

    .line 6
    const-string v1, "isLargeScreenMode"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->mMiuiWidgetScreenBound:Landroid/os/Parcelable;

    .line 13
    const-string v1, "miuiWidgetScreenBound"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onStart()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;->setPadWidgetActivity(Z)V

    .line 8
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onStop()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;->setPadWidgetActivity(Z)V

    .line 8
    return-void
.end method
