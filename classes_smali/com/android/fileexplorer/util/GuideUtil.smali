.class public Lcom/android/fileexplorer/util/GuideUtil;
.super Ljava/lang/Object;
.source "GuideUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfShowGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyShowGuide()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    :cond_d
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/android/fileexplorer/util/GuideUtil;->showStaticGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V

    goto :goto_1a

    :cond_17
    invoke-static {p0}, Lcom/android/fileexplorer/util/GuideUtil;->showAnimGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private static showAnimGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    const/high16 v2, 0x7f100000

    const v3, 0x7f1101d6

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/view/GuideDialog;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/GuideDialog;->show()V

    return-void
.end method

.method private static showStaticGuide(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    const v2, 0x7f0801d3

    const v3, 0x7f1101d6

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    const v2, 0x7f0801d4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/view/GuideDialog;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/view/GuideDialog;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/view/GuideDialog;->show()V

    return-void
.end method
