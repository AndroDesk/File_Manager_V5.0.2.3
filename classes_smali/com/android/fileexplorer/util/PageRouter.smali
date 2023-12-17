.class public Lcom/android/fileexplorer/util/PageRouter;
.super Ljava/lang/Object;
.source "PageRouter.java"


# static fields
.field public static final EXTRA_BUNDLE:Ljava/lang/String; = "extra_bundle"

.field public static final EXTRA_TITLE_RES_ID:Ljava/lang/String; = "extra_title"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "extra_type"

.field public static final PAGE_APK:I = 0x5

.field public static final PAGE_APP:I = 0x9

.field public static final PAGE_DOC:I = 0x3

.field public static final PAGE_FAV:I = 0xa

.field public static final PAGE_MORE_CATEGORY:I = 0x7

.field public static final PAGE_MUSIC:I = 0x2

.field public static final PAGE_PICTURE:I = 0x0

.field public static final PAGE_RECORDER:I = 0xb

.field public static final PAGE_SETTINGS:I = 0x8

.field public static final PAGE_TRANSFER:I = 0x6

.field public static final PAGE_VIDEO:I = 0x1

.field public static final PAGE_XSPACE:I = 0xc

.field public static final PAGE_ZIP:I = 0x4

.field public static final RECORDER_APP:Ljava/lang/String; = "com.android.soundrecorder"

.field public static final RECORDER_APP_PAGE:Ljava/lang/String; = "com.android.soundrecorder.RecordPreviewActivity"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getActivityFromView(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 1
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    instance-of v0, p0, Landroid/app/Activity;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    check-cast p0, Landroid/app/Activity;

    .line 11
    return-object p0

    .line 12
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public static navigate2HomeFile(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/fileexplorer/event/PadNavigationEvent;

    .line 7
    const-string v1, "home_file"

    .line 9
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/event/PadNavigationEvent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static navigate2Recent(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static route(Landroid/content/Context;I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/util/PageRouter;->route(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static route(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 3

    packed-switch p1, :pswitch_data_22

    goto :goto_1c

    .line 2
    :pswitch_4  #0xc
    invoke-static {p0}, Lcom/android/fileexplorer/util/PageRouter;->routeToXspace(Landroid/content/Context;)V

    goto :goto_1c

    .line 3
    :pswitch_8  #0xb
    invoke-static {p0}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;)V

    goto :goto_1b

    .line 4
    :pswitch_c  #0x8
    const-class p1, Lcom/android/fileexplorer/activity/SettingActivity;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1b

    .line 5
    :pswitch_12  #0x7
    const-class p1, Lcom/android/fileexplorer/activity/MoreCategoryActivity;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1b

    .line 6
    :pswitch_18  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x9, 0xa
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;ILandroid/os/Bundle;)V

    :goto_1b
    return-void

    .line 7
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

    .line 1
    const/16 v0, 0x3eb

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eqz p1, :cond_34

    .line 7
    if-eq p1, v1, :cond_2d

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq p1, v3, :cond_26

    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq p1, v3, :cond_21

    .line 15
    const/4 v3, 0x4

    .line 16
    if-eq p1, v3, :cond_1c

    .line 18
    const/4 v0, 0x5

    .line 19
    if-eq p1, v0, :cond_17

    .line 21
    const/4 p1, 0x0

    .line 22
    :goto_15
    move v0, v2

    .line 23
    goto :goto_3a

    .line 24
    :cond_17
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;

    .line 27
    move-result-object p1

    .line 28
    goto :goto_15

    .line 29
    :cond_1c
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;

    .line 32
    move-result-object p1

    .line 33
    goto :goto_3a

    .line 34
    :cond_21
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    .line 37
    move-result-object p1

    .line 38
    goto :goto_3a

    .line 39
    :cond_26
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    .line 42
    move-result-object p1

    .line 43
    const/16 v0, 0x3ee

    .line 45
    goto :goto_3a

    .line 46
    :cond_2d
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    .line 49
    move-result-object p1

    .line 50
    const/16 v0, 0x3ed

    .line 52
    goto :goto_3a

    .line 53
    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;

    .line 56
    move-result-object p1

    .line 57
    const/16 v0, 0x3ec

    .line 59
    :goto_3a
    if-eqz p1, :cond_62

    .line 61
    new-instance v2, Landroid/os/Bundle;

    .line 63
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 73
    move-result-object v3

    .line 74
    sget-object v4, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 76
    if-ne v3, v4, :cond_4e

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    const/4 v1, 0x0

    .line 80
    :goto_4f
    const-string v3, "bundle_key_istobackstack"

    .line 82
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 88
    move-result-object v1

    .line 89
    new-instance v3, Lcom/android/fileexplorer/util/PageRouter$1;

    .line 91
    invoke-direct {v3, p0, v0, p1, v2}, Lcom/android/fileexplorer/util/PageRouter$1;-><init>(Landroidx/fragment/app/Fragment;ILcom/android/fileexplorer/fragment/BaseFragment;Landroid/os/Bundle;)V

    .line 94
    const-wide/16 p0, 0xc8

    .line 96
    invoke-virtual {v1, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    :cond_62
    return-void
.end method

.method public static routeToMiDrive(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDrive(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static routeToRecorder(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/PageRouter;->start(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static routeToXspace(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/PageRouter;->getActivityFromView(Landroid/content/Context;)Landroid/app/Activity;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->getXSpaceStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private static start(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.RecordPreviewActivity"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1a
    return-void
.end method

.method private static start(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/CategoryDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_type"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_13

    const-string p1, "extra_bundle"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :cond_13
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1c

    const/high16 p1, 0x10000000

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
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

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_e

    const/high16 p1, 0x10000000

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    :cond_e
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    if-eqz p1, :cond_19

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string p1, "global.pad.intent.action.setting"

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_19
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
