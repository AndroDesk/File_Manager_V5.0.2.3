.class public Lcom/android/fileexplorer/util/PageRouter;
.super Ljava/lang/Object;
.source "PageRouter.java"


# static fields
.field public static final EXTRA_BUNDLE:Ljava/lang/String; = "extra_bundle"

.field public static final EXTRA_TITLE_RES_ID:Ljava/lang/String; = "extra_title"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "extra_type"

.field public static final PAGE_APK:I

.field public static final PAGE_APP:I

.field public static final PAGE_DOC:I

.field public static final PAGE_FAV:I

.field public static final PAGE_MORE_CATEGORY:I

.field public static final PAGE_MUSIC:I

.field public static final PAGE_PICTURE:I

.field public static final PAGE_RECORDER:I

.field public static final PAGE_SETTINGS:I

.field public static final PAGE_TRANSFER:I

.field public static final PAGE_VIDEO:I

.field public static final PAGE_XSPACE:I

.field public static final PAGE_ZIP:I

.field public static final RECORDER_APP:Ljava/lang/String; = "com.android.soundrecorder"

.field public static final RECORDER_APP_PAGE:Ljava/lang/String; = "com.android.soundrecorder.RecordPreviewActivity"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_APK:I

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_APP:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_DOC:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_FAV:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_MORE_CATEGORY:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_MUSIC:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_PICTURE:I

    const v0, 0x92d9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_RECORDER:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_SETTINGS:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_TRANSFER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_VIDEO:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_XSPACE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/PageRouter;->PAGE_ZIP:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityFromView(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static navigate2HomeFile(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/fileexplorer/event/PadNavigationEvent;

    const-string v1, "home_file"

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/event/PadNavigationEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static navigate2Recent(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static route(Landroid/content/Context;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static route(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 3

    packed-switch p1, :pswitch_data_22

    goto :goto_1c

    :pswitch_4  #0xc
    invoke-static {p0}, Lcom/android/fileexplorer/util/PageRouter;->routeToXspace(Landroid/content/Context;)V

    goto :goto_1c

    :pswitch_8  #0xb
    invoke-static {p0}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;)V

    goto :goto_1b

    :pswitch_c  #0x8
    const-class p1, Lcom/android/fileexplorer/activity/SettingActivity;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1b

    :pswitch_12  #0x7
    const-class p1, Lcom/android/fileexplorer/activity/MoreCategoryActivity;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1b

    :pswitch_18  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x9, 0xa
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;ILandroid/os/Bundle;)V

    :goto_1b
    return-void

    :goto_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_18  #00000001
        :pswitch_18  #00000002
        :pswitch_18  #00000003
        :pswitch_18  #00000004
        :pswitch_18  #00000005
        :pswitch_18  #00000006
        :pswitch_12  #00000007
        :pswitch_c  #00000008
        :pswitch_18  #00000009
        :pswitch_18  #0000000a
        :pswitch_8  #0000000b
        :pswitch_4  #0000000c
    .end packed-switch
.end method

.method public static routeStorageSkipRequest(Landroidx/fragment/app/Fragment;I)V
    .registers 7

    const/16 v0, 0x3eb

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p1, :cond_34

    if-eq p1, v1, :cond_2d

    const/4 v3, 0x2

    if-eq p1, v3, :cond_26

    const/4 v3, 0x3

    if-eq p1, v3, :cond_21

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_17

    const/4 p1, 0x0

    :goto_15
    move v0, v2

    goto :goto_3a

    :cond_17
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;

    move-result-object p1

    goto :goto_15

    :cond_1c
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;

    move-result-object p1

    goto :goto_3a

    :cond_21
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    move-result-object p1

    goto :goto_3a

    :cond_26
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    move-result-object p1

    const/16 v0, 0x3ee

    goto :goto_3a

    :cond_2d
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    move-result-object p1

    const/16 v0, 0x3ed

    goto :goto_3a

    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;

    move-result-object p1

    const/16 v0, 0x3ec

    :goto_3a
    if-eqz p1, :cond_62

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v3

    sget-object v4, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    if-ne v3, v4, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    const-string v3, "bundle_key_istobackstack"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/fileexplorer/util/PageRouter$1;

    invoke-direct {v3, p0, v0, p1, v2}, Lcom/android/fileexplorer/util/PageRouter$1;-><init>(Landroidx/fragment/app/Fragment;ILcom/android/fileexplorer/fragment/BaseFragment;Landroid/os/Bundle;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v1, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_62
    return-void
.end method

.method public static routeToMiDrive(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDrive(Landroid/content/Context;)V

    return-void
.end method

.method public static routeToRecorder(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;)V

    return-void
.end method

.method public static routeToXspace(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/android/fileexplorer/util/PageRouter;->getActivityFromView(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static start(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.RecordPreviewActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1a
    return-void
.end method

.method private static start(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/CategoryDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_13

    const-string p1, "extra_bundle"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_13
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1c

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static start(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_e

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_e
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz p1, :cond_19

    new-instance v0, Landroid/content/Intent;

    const-string p1, "global.pad.intent.action.setting"

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
