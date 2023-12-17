.class public Lcom/android/fileexplorer/pad/PadFragmentUtil;
.super Ljava/lang/Object;
.source "PadFragmentUtil.java"


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

.method public static getMoveBundle(Ljava/lang/String;Ljava/lang/String;ZZZZ)Landroid/os/Bundle;
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "inner_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "copyOrMove"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p5, :cond_1f

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFolder()Ljava/lang/String;

    move-result-object p5

    const-string v1, "current_directory"

    invoke-virtual {v0, v1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string p5, "title"

    invoke-virtual {v0, p5, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "pick_button_name"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "pick_router"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "pick_mi_drive"

    invoke-virtual {v0, p0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "pick_mtp"

    invoke-virtual {v0, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static handleActionBarExpandState(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-le v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static jumpToDetailFragment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "current_directory"

    invoke-static {v0, p0}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    const-class v2, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3, p0}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->topFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const-string p2, "name"

    const-string v1, "click_action_bar"

    const/4 v2, 0x1

    sparse-switch p0, :sswitch_data_52

    return v0

    :sswitch_22
    invoke-static {p1}, Lcom/android/cloud/util/CloudHelper;->visitPicToPdfPage(Landroid/content/Context;)V

    return v2

    :sswitch_26
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->startMiDrop(Landroid/content/Context;)V

    return v2

    :sswitch_2a
    invoke-static {p1}, Lcom/android/cloud/util/CloudHelper;->visitManageCloudData(Landroid/content/Context;)V

    return v2

    :sswitch_2e
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->enterStorage(Landroid/app/Activity;)V

    return v2

    :sswitch_32
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->startSettings(Landroid/app/Activity;)V

    return v2

    :sswitch_36
    invoke-static {p1}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDrive(Landroid/content/Context;)V

    const-string p0, "cloud"

    invoke-static {v1, p2, p0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :sswitch_3f
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->startFTP(Landroid/app/Activity;)V

    const-string p0, "ftp"

    invoke-static {v1, p2, p0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :sswitch_48
    invoke-static {p1}, Lcom/android/cloud/util/CloudHelper;->visitRecycleBinSite(Landroid/content/Context;)V

    return v2

    :sswitch_4c
    const-string p0, "00003"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    return v2

    :sswitch_data_52
    .sparse-switch
        0x7f0a00e9 -> :sswitch_4c
        0x7f0a00f4 -> :sswitch_48
        0x7f0a01e9 -> :sswitch_3f
        0x7f0a01ea -> :sswitch_36
        0x7f0a01ed -> :sswitch_32
        0x7f0a01ef -> :sswitch_2e
        0x7f0a024f -> :sswitch_2a
        0x7f0a0265 -> :sswitch_26
        0x7f0a0317 -> :sswitch_22
    .end sparse-switch
.end method

.method public static setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;ZZ)V

    return-void
.end method

.method public static setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;ZZ)V
    .registers 9

    if-eqz p0, :cond_73

    if-nez p1, :cond_5

    goto :goto_73

    :cond_5
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f042db5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f032dc1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f032df4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d0020

    invoke-virtual {v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    const p1, 0x7f032d3f

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_62

    if-eqz p2, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    :goto_5e
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_65

    :cond_62
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_65
    const p0, 0x7f032de2

    invoke-static {p0}, Lnp/NPFog;->d(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_73
    :goto_73
    return-void
.end method

.method public static setAppActionbar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V
    .registers 8

    if-eqz p0, :cond_89

    if-nez p1, :cond_6

    goto/16 :goto_89

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042db6

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    const v1, 0x7f032d3f

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f032e58

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f032cfc

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4a

    const/4 p2, 0x0

    goto :goto_4b

    :cond_4a
    move p2, v4

    :goto_4b
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0023

    invoke-virtual {p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f032dc1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f032df4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    const v0, 0x7f032de2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->handleActionBarExpandState(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;)V

    :cond_89
    :goto_89
    return-void
.end method
