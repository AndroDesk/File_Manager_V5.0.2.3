.class public abstract Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BaseAppWidgetProvider.java"


# static fields
.field public static final MIUI_APPWIDGET_UPDATE:Ljava/lang/String; = "miui.appwidget.action.APPWIDGET_UPDATE"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->TAG:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    return-void
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->tryRemoveWidgets(Ljava/lang/Class;)V

    .line 8
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 11
    const-string p1, "onDeleted"

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 4
    const-string p1, "onDisabled"

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 4
    const-string p1, "onEnabled"

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public onIdRemap(Landroid/content/Context;[I[ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    const-string p1, "onIdRemap"

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    const-string v0, "onReceive:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "miui.appwidget.action.APPWIDGET_UPDATE"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2e

    .line 33
    const-string v0, "appWidgetIds"

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    :goto_31
    return-void
.end method

.method public onRestored(Landroid/content/Context;[I[I)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    .line 4
    const-string v0, "onRestored"

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->onIdRemap(Landroid/content/Context;[I[ILandroid/os/Bundle;)V

    .line 13
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p3}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->tryAddWidgets(Ljava/lang/Class;[I)V

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 11
    const-string p1, "onUpdate"

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 16
    return-void
.end method
