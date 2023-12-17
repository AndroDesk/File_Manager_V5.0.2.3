.class public Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;
.super Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;
.source "SimpleWidgetUpdateDelegate.java"


# static fields
.field public static final APP_WIDGET_NUMS:I

.field private static final EXTRA_FILE_NAME:Ljava/lang/String; = "extraFileName"

.field private static final EXTRA_TAB_NAME:Ljava/lang/String; = "extraTabName"

.field private static final PAD_SCHEME_WIDGET_EDIT_PAGE:Ljava/lang/String; = "pad_widget_edit_page"

.field public static final QUERY_PARAM_IS_EDIT:Ljava/lang/String; = "is_edit"

.field private static final SCHEME_WIDGET_EDIT_PAGE:Ljava/lang/String; = "widget_edit_page"

.field private static final TAG:Ljava/lang/String; = "SimpleWidgetUpdateDelegate"


# instance fields
.field private pageIndexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->APP_WIDGET_NUMS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;-><init>()V

    const-string v0, "picture"

    const-string v1, "doc"

    const-string v2, "music"

    const-string v3, "video"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->pageIndexs:[Ljava/lang/String;

    const-class v0, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    iput-object v0, p0, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->componentName:Ljava/lang/Class;

    return-void
.end method

.method private addPlaceHolderView(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .registers 7

    const/4 v0, 0x2

    if-eqz p3, :cond_5

    if-ne p3, v0, :cond_1d

    :cond_5
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0d0056

    invoke-direct {v1, p1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-ne p3, v0, :cond_17

    const p1, 0x7f0a023d

    goto :goto_1a

    :cond_17
    const p1, 0x7f0a023c

    :goto_1a
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_1d
    return-void
.end method

.method private createToMainPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fileexplorer.export.START_OEPN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extraFileName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/util/UIUtils;->isAboveAndroidS()Z

    move-result v1

    if-eqz v1, :cond_35

    const/high16 v1, 0xa000000

    goto :goto_37

    :cond_35
    const/high16 v1, 0x8000000

    :goto_37
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private static getWidgetEditPageUri(I)Landroid/net/Uri;
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "pad_widget_edit_page"

    goto :goto_b

    :cond_9
    const-string v0, "widget_edit_page"

    :goto_b
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "PadWidgetChooseActivity"

    goto :goto_16

    :cond_14
    const-string v1, "WidgetChooseActivity"

    :goto_16
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.android.fileexplorer"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "miuiWidgetId"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "isEdit"

    const-string v1, "is_edit"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

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

    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->obtainAndCheckWidgetList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_46

    new-instance v4, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {v7}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_46
    return-object v1
.end method

.method private realUpdateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_e

    aget v1, p3, v0

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, p2, v1}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->updateWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private setupChooseFileButton(Landroid/content/Context;Landroid/widget/RemoteViews;IILandroid/appwidget/AppWidgetManager;I)V
    .registers 10

    sget-object v0, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupChooseFileButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v1

    if-eqz v1, :cond_27

    const-class v1, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2c

    :cond_27
    const-class v1, Lcom/android/fileexplorer/activity/WidgetChooseActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_2c
    const/high16 v1, 0x8000000

    invoke-static {}, Lcom/android/fileexplorer/util/UIUtils;->isAboveAndroidS()Z

    move-result v2

    if-eqz v2, :cond_36

    const/high16 v1, 0xa000000

    :cond_36
    invoke-static {p1, p4, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-virtual {p5, p6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_61

    const/4 p4, 0x0

    const-string p5, "miuiLargeScreenDevice"

    invoke-virtual {p1, p5, p4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_61

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p4, "miuiWidgetId"

    invoke-virtual {p1, p4, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "supportLargeScreenEditPreviewMode"

    invoke-virtual {p2, p3, p4, p1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_61
    return-void
.end method

.method private updateAppWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .registers 8

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {p1}, Lcom/android/fileexplorer/util/UIUtils;->isMiuiWidgetSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->getWidgetEditPageUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miuiEditUri"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    :cond_1e
    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->getComponentName()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p3, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "this.getComponentName()"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->getComponentName()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UpdateWidgetHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p3, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private updateWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->createRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->showList(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->updateAppWidget(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    return-void
.end method


# virtual methods
.method public bindItemView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/fileexplorer/widget/bean/WidgetFileItem;Landroid/appwidget/AppWidgetManager;I)V
    .registers 10

    const v0, 0x7f0a020c

    if-nez p3, :cond_a

    const/4 p1, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void

    :cond_a
    sget-object v1, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->TAG:Ljava/lang/String;

    const-string v2, "setItemData: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a0210

    invoke-virtual {p3}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->getIconRes()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0a044f

    invoke-virtual {p3}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->createToMainPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    move-result p1

    if-eqz p1, :cond_63

    invoke-virtual {p4, p5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_63

    const/4 p3, 0x0

    const-string p4, "miuiLargeScreenDevice"

    invoke-virtual {p1, p4, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_63

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "miuiWidgetId"

    invoke-virtual {p1, p3, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "supportLargeScreenEditPreviewMode"

    invoke-virtual {p2, v0, p3, p1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_63
    return-void
.end method

.method public createRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->realUpdateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public showList(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V
    .registers 24

    move-object/from16 v2, p2

    const v0, 0x7f0a023c

    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v1, 0x7f0a023d

    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->initPinFileData()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x8

    const v5, 0x7f0a0234

    const v6, 0x7f0a02df

    const/4 v7, 0x0

    if-eqz v3, :cond_8e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_25

    goto/16 :goto_8e

    :cond_25
    invoke-virtual {v2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->TAG:Ljava/lang/String;

    const-string v6, "dataSize: "

    invoke-static {v6, v4, v5}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :goto_36
    const/4 v5, 0x4

    if-ge v7, v5, :cond_8b

    if-ge v7, v4, :cond_5b

    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0d0054

    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v5

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->bindItemView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/fileexplorer/widget/bean/WidgetFileItem;Landroid/appwidget/AppWidgetManager;I)V

    goto :goto_78

    :cond_5b
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0d0053

    invoke-direct {v5, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v15, 0x7f0a020c

    add-int/lit8 v16, v7, 0x4

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v5

    move-object/from16 v17, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->setupChooseFileButton(Landroid/content/Context;Landroid/widget/RemoteViews;IILandroid/appwidget/AppWidgetManager;I)V

    :goto_78
    const/4 v6, 0x1

    if-le v7, v6, :cond_7d

    move v6, v1

    goto :goto_7e

    :cond_7d
    move v6, v0

    :goto_7e
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct {v8, v9, v2, v7}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->addPlaceHolderView(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_8b
    move-object/from16 v8, p0

    return-void

    :cond_8e
    :goto_8e
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a02df

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;->setupChooseFileButton(Landroid/content/Context;Landroid/widget/RemoteViews;IILandroid/appwidget/AppWidgetManager;I)V

    return-void
.end method
