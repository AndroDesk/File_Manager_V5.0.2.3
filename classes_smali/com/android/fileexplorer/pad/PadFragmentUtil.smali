.class public Lcom/android/fileexplorer/pad/PadFragmentUtil;
.super Ljava/lang/Object;
.source "PadFragmentUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMoveBundle(Ljava/lang/String;Ljava/lang/String;ZZZZ)Landroid/os/Bundle;
    .registers 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "inner_call"

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    const-string v1, "copyOrMove"

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    if-eqz p5, :cond_1f

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 22
    move-result-object p5

    .line 23
    invoke-virtual {p5}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFolder()Ljava/lang/String;

    .line 26
    move-result-object p5

    .line 27
    const-string v1, "current_directory"

    .line 29
    invoke-virtual {v0, v1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1f
    const-string p5, "title"

    .line 34
    invoke-virtual {v0, p5, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string p0, "pick_button_name"

    .line 39
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string p0, "pick_router"

    .line 44
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    const-string p0, "pick_mi_drive"

    .line 49
    invoke-virtual {v0, p0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string p0, "pick_mtp"

    .line 54
    invoke-virtual {v0, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
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

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 7
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 9
    if-le v0, p0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return p0
.end method

.method public static jumpToDetailFragment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "current_directory"

    .line 3
    invoke-static {v0, p0}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 13
    const-class v2, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v1, v2, p1, v3, p0}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 23
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z
    .registers 3

    const-string v0, ""

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2
    :cond_4
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->topFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_15
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const-string p2, "name"

    const-string v1, "click_action_bar"

    const/4 v2, 0x1

    sparse-switch p0, :sswitch_data_52

    return v0

    .line 5
    :sswitch_22
    invoke-static {p1}, Lcom/android/cloud/util/CloudHelper;->visitPicToPdfPage(Landroid/content/Context;)V

    return v2

    .line 6
    :sswitch_26
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->startMiDrop(Landroid/content/Context;)V

    return v2

    .line 7
    :sswitch_2a
    invoke-static {p1}, Lcom/android/cloud/util/CloudHelper;->visitManageCloudData(Landroid/content/Context;)V

    return v2

    .line 8
    :sswitch_2e
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->enterStorage(Landroid/app/Activity;)V

    return v2

    .line 9
    :sswitch_32
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->startSettings(Landroid/app/Activity;)V

    return v2

    .line 10
    :sswitch_36
    invoke-static {p1}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDrive(Landroid/content/Context;)V

    const-string p0, "cloud"

    .line 11
    invoke-static {v1, p2, p0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 12
    :sswitch_3f
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->startFTP(Landroid/app/Activity;)V

    const-string p0, "ftp"

    .line 13
    invoke-static {v1, p2, p0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 14
    :sswitch_48
    invoke-static {p1}, Lcom/android/cloud/util/CloudHelper;->visitRecycleBinSite(Landroid/content/Context;)V

    return v2

    :sswitch_4c
    const-string p0, "00003"

    .line 15
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

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;ZZ)V

    return-void
.end method

.method public static setActionBar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;ZZ)V
    .registers 9

    if-eqz p0, :cond_5f

    if-nez p1, :cond_5

    goto :goto_5f

    :cond_5
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0023

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a0057

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0062

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d0020

    invoke-virtual {v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    const p1, 0x7f0a00a9

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_52

    if-eqz p2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v2

    .line 11
    :goto_4e
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_55

    .line 12
    :cond_52
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_55
    const p0, 0x7f0a0074

    .line 13
    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public static setAppActionbar(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;Z)V
    .registers 8

    .line 1
    if-eqz p0, :cond_6c

    .line 3
    if-nez p1, :cond_5

    .line 5
    goto :goto_6c

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    .line 10
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0d0020

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 25
    const v1, 0x7f0a00a9

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    const v3, 0x7f0a03ce

    .line 35
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v3

    .line 39
    const/16 v4, 0x8

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    const v3, 0x7f0a016a

    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    if-eqz p2, :cond_39

    .line 56
    const/4 p2, 0x0

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move p2, v4

    .line 59
    :goto_3a
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    move-result-object p2

    .line 66
    const v0, 0x7f0d0023

    .line 69
    invoke-virtual {p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    move-result-object p2

    .line 73
    const v0, 0x7f0a0057

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const v0, 0x7f0a0062

    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 96
    const v0, 0x7f0a0074

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-static {p0, p1}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->handleActionBarExpandState(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;)V

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method
