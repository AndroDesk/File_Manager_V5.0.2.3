.class public Lcom/android/fileexplorer/util/GuideUtil;
.super Ljava/lang/Object;
.source "GuideUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfShowGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyShowGuide()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1a

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_1a

    .line 14
    :cond_d
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_17

    .line 20
    invoke-static {p0}, Lcom/android/fileexplorer/util/GuideUtil;->showStaticGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    invoke-static {p0}, Lcom/android/fileexplorer/util/GuideUtil;->showAnimGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method

.method private static showAnimGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    .line 8
    const/high16 v2, 0x7f100000

    .line 10
    const v3, 0x7f1101d6

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;-><init>(IIZ)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog;

    .line 22
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/view/GuideDialog;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 25
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/GuideDialog;->show()V

    .line 28
    return-void
.end method

.method private static showStaticGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    .line 8
    const v2, 0x7f0801d3

    .line 11
    const v3, 0x7f1101d6

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;-><init>(IIZ)V

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    .line 23
    const v2, 0x7f0801d4

    .line 26
    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;-><init>(IIZ)V

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog;

    .line 34
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/view/GuideDialog;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 37
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/GuideDialog;->show()V

    .line 40
    return-void
.end method
