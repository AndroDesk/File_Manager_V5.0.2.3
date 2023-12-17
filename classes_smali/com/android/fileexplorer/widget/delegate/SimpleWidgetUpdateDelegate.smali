.class public Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;
.super Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;
.source "SimpleWidgetUpdateDelegate.java"


# static fields
.field public static final APP_WIDGET_NUMS:I = 0x4

.field private static final EXTRA_FILE_NAME:Ljava/lang/String; = "extraFileName"

.field private static final EXTRA_TAB_NAME:Ljava/lang/String; = "extraTabName"

.field private static final PAD_SCHEME_WIDGET_EDIT_PAGE:Ljava/lang/String; = "pad_widget_edit_page"

.field public static final QUERY_PARAM_IS_EDIT:Ljava/lang/String; = "is_edit"

.field private static final SCHEME_WIDGET_EDIT_PAGE:Ljava/lang/String; = "widget_edit_page"

.field private static final TAG:Ljava/lang/String; = "SimpleWidgetUpdateDelegate"


# instance fields
.field private pageIndexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;-><init>()V

    .line 4
    const-string v0, "picture"

    .line 6
    const-string v1, "doc"

    .line 8
    const-string v2, "music"

    .line 10
    const-string v3, "video"

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->pageIndexs:[Ljava/lang/String;

    .line 18
    const-class v0, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->componentName:Ljava/lang/Class;

    .line 22
    return-void
.end method

.method private addPlaceHolderView(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p3, :cond_5

    .line 4
    if-ne p3, v0, :cond_1d

    .line 6
    :cond_5
    new-instance v1, Landroid/widget/RemoteViews;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    const v2, 0x7f0d0056

    .line 15
    invoke-direct {v1, p1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 18
    if-ne p3, v0, :cond_17

    .line 20
    const p1, 0x7f0a023d

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    const p1, 0x7f0a023c

    .line 27
    :goto_1a
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 30
    :cond_1d
    return-void
.end method

.method private createToMainPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.android.fileexplorer.export.START_OEPN_FILE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->TAG:Ljava/lang/String;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v3, "filePath: "

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-class v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 32
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    const-string v1, "extraFileName"

    .line 37
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const/high16 v1, 0x4000000

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-static {}, Lcom/android/fileexplorer/util/UIUtils;->isAboveAndroidS()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_35

    .line 51
    const/high16 v1, 0xa000000

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    const/high16 v1, 0x8000000

    .line 56
    :goto_37
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 59
    move-result p2

    .line 60
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method private static getWidgetEditPageUri(I)Landroid/net/Uri;
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string v0, "pad_widget_edit_page"

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, "widget_edit_page"

    .line 12
    :goto_b
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_14

    .line 18
    const-string v1, "PadWidgetChooseActivity"

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const-string v1, "WidgetChooseActivity"

    .line 23
    :goto_16
    new-instance v2, Landroid/net/Uri$Builder;

    .line 25
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 28
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 31
    move-result-object v0

    .line 32
    const-string v2, "com.android.fileexplorer"

    .line 34
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    move-result-object v0

    .line 38
    const-string v2, "activity"

    .line 40
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    const-string v1, "miuiWidgetId"

    .line 54
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    move-result-object p0

    .line 58
    const-string v0, "isEdit"

    .line 60
    const-string v1, "is_edit"

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method private initPinFileData()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/widget/bean/WidgetFileItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->obtainAndCheckWidgetList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x4

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_13
    if-ge v3, v2, :cond_46

    .line 22
    new-instance v4, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;

    .line 24
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 30
    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    invoke-static {v5}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    .line 41
    move-result v5

    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 48
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    .line 51
    move-result-object v6

    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 58
    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    .line 61
    move-result-object v7

    .line 62
    invoke-direct {v4, v5, v6, v7}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 70
    goto :goto_13

    .line 71
    :cond_46
    return-object v1
.end method

.method private realUpdateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p3

    .line 3
    if-ge v0, v1, :cond_e

    .line 5
    aget v1, p3, v0

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-direct {p0, p1, p2, v1}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->updateWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 12
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    return-void
.end method

.method private setupChooseFileButton(Landroid/content/Context;Landroid/widget/RemoteViews;IILandroid/appwidget/AppWidgetManager;I)V
    .registers 10

    .line 1
    sget-object v0, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "setupChooseFileButton: "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 25
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_27

    .line 34
    const-class v1, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;

    .line 36
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    goto :goto_2c

    .line 40
    :cond_27
    const-class v1, Lcom/android/fileexplorer/activity/WidgetChooseActivity;

    .line 42
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    :goto_2c
    const/high16 v1, 0x8000000

    .line 47
    invoke-static {}, Lcom/android/fileexplorer/util/UIUtils;->isAboveAndroidS()Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_36

    .line 53
    const/high16 v1, 0xa000000

    .line 55
    :cond_36
    invoke-static {p1, p4, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_61

    .line 68
    invoke-virtual {p5, p6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_61

    .line 74
    const/4 p4, 0x0

    .line 75
    const-string p5, "miuiLargeScreenDevice"

    .line 77
    invoke-virtual {p1, p5, p4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_61

    .line 83
    new-instance p1, Landroid/os/Bundle;

    .line 85
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string p4, "miuiWidgetId"

    .line 90
    invoke-virtual {p1, p4, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string p4, "supportLargeScreenEditPreviewMode"

    .line 95
    invoke-virtual {p2, p3, p4, p1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 98
    :cond_61
    return-void
.end method

.method private updateAppWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/util/UIUtils;->isMiuiWidgetSupported(Landroid/content/Context;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1e

    .line 11
    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->getWidgetEditPageUri(I)Landroid/net/Uri;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    const-string v3, "miuiEditUri"

    .line 25
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 31
    :cond_1e
    new-instance p3, Landroid/content/ComponentName;

    .line 33
    invoke-virtual {p0}, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->getComponentName()Ljava/lang/Class;

    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p3, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string p1, "this.getComponentName()"

    .line 42
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->getComponentName()Ljava/lang/Class;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    const-string v1, "UpdateWidgetHelper"

    .line 59
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0, p3, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 65
    return-void
.end method

.method private updateWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->getLayoutId()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->createRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->showList(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V

    .line 12
    invoke-direct {p0, p1, v0, p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->updateAppWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public bindItemView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/fileexplorer/widget/bean/WidgetFileItem;Landroid/appwidget/AppWidgetManager;I)V
    .registers 10

    .line 1
    const v0, 0x7f0a020c

    .line 4
    if-nez p3, :cond_a

    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10
    return-void

    .line 11
    :cond_a
    sget-object v1, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->TAG:Ljava/lang/String;

    .line 13
    const-string v2, "setItemData: "

    .line 15
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p3}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->getText()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const v1, 0x7f0a0210

    .line 36
    invoke-virtual {p3}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->getIconRes()I

    .line 39
    move-result v2

    .line 40
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 43
    const v1, 0x7f0a044f

    .line 46
    invoke-virtual {p3}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->getText()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p3}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->getFilePath()Ljava/lang/String;

    .line 56
    move-result-object p3

    .line 57
    invoke-direct {p0, p1, p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->createToMainPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 64
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_63

    .line 70
    invoke-virtual {p4, p5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_63

    .line 76
    const/4 p3, 0x0

    .line 77
    const-string p4, "miuiLargeScreenDevice"

    .line 79
    invoke-virtual {p1, p4, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_63

    .line 85
    new-instance p1, Landroid/os/Bundle;

    .line 87
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string p3, "miuiWidgetId"

    .line 92
    invoke-virtual {p1, p3, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string p3, "supportLargeScreenEditPreviewMode"

    .line 97
    invoke-virtual {p2, v0, p3, p1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 100
    :cond_63
    return-void
.end method

.method public createRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 10
    return-object v0
.end method

.method public getLayoutId()I
    .registers 2

    const v0, 0x7f0d01ca

    return v0
.end method

.method public onPermissionUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4

    return-void
.end method

.method public onPreUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4

    return-void
.end method

.method public onUnSupport(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->realUpdateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 4
    return-void
.end method

.method public showList(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V
    .registers 24

    .line 1
    move-object/from16 v2, p2

    .line 3
    const v0, 0x7f0a023c

    .line 6
    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 9
    const v1, 0x7f0a023d

    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->initPinFileData()Ljava/util/List;

    .line 18
    move-result-object v3

    .line 19
    const/16 v4, 0x8

    .line 21
    const v5, 0x7f0a0234

    .line 24
    const v6, 0x7f0a02df

    .line 27
    const/4 v7, 0x0

    .line 28
    if-eqz v3, :cond_8e

    .line 30
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 33
    move-result v8

    .line 34
    if-eqz v8, :cond_25

    .line 36
    goto/16 :goto_8e

    .line 38
    :cond_25
    invoke-virtual {v2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 41
    invoke-virtual {v2, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 44
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 47
    move-result v4

    .line 48
    sget-object v5, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->TAG:Ljava/lang/String;

    .line 50
    const-string v6, "dataSize: "

    .line 52
    invoke-static {v6, v4, v5}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    :goto_36
    const/4 v5, 0x4

    .line 56
    if-ge v7, v5, :cond_8b

    .line 58
    if-ge v7, v4, :cond_5b

    .line 60
    new-instance v5, Landroid/widget/RemoteViews;

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v6

    .line 66
    const v8, 0x7f0d0054

    .line 69
    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v6

    .line 76
    move-object v11, v6

    .line 77
    check-cast v11, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;

    .line 79
    move-object/from16 v8, p0

    .line 81
    move-object/from16 v9, p1

    .line 83
    move-object v10, v5

    .line 84
    move-object/from16 v12, p3

    .line 86
    move/from16 v13, p4

    .line 88
    invoke-virtual/range {v8 .. v13}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->bindItemView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/fileexplorer/widget/bean/WidgetFileItem;Landroid/appwidget/AppWidgetManager;I)V

    .line 91
    goto :goto_78

    .line 92
    :cond_5b
    new-instance v5, Landroid/widget/RemoteViews;

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 97
    move-result-object v6

    .line 98
    const v8, 0x7f0d0053

    .line 101
    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 104
    const v15, 0x7f0a020c

    .line 107
    add-int/lit8 v16, v7, 0x4

    .line 109
    move-object/from16 v12, p0

    .line 111
    move-object/from16 v13, p1

    .line 113
    move-object v14, v5

    .line 114
    move-object/from16 v17, p3

    .line 116
    move/from16 v18, p4

    .line 118
    invoke-direct/range {v12 .. v18}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->setupChooseFileButton(Landroid/content/Context;Landroid/widget/RemoteViews;IILandroid/appwidget/AppWidgetManager;I)V

    .line 121
    :goto_78
    const/4 v6, 0x1

    .line 122
    if-le v7, v6, :cond_7d

    .line 124
    move v6, v1

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move v6, v0

    .line 127
    :goto_7e
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 130
    move-object/from16 v8, p0

    .line 132
    move-object/from16 v9, p1

    .line 134
    invoke-direct {v8, v9, v2, v7}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->addPlaceHolderView(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 139
    goto :goto_36

    .line 140
    :cond_8b
    move-object/from16 v8, p0

    .line 142
    return-void

    .line 143
    :cond_8e
    :goto_8e
    move-object/from16 v8, p0

    .line 145
    move-object/from16 v9, p1

    .line 147
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 153
    const v3, 0x7f0a02df

    .line 156
    const/4 v4, 0x4

    .line 157
    move-object/from16 v0, p0

    .line 159
    move-object/from16 v1, p1

    .line 161
    move-object/from16 v2, p2

    .line 163
    move-object/from16 v5, p3

    .line 165
    move/from16 v6, p4

    .line 167
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->setupChooseFileButton(Landroid/content/Context;Landroid/widget/RemoteViews;IILandroid/appwidget/AppWidgetManager;I)V

    .line 170
    return-void
.end method
