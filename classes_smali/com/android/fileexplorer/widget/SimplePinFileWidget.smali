.class public Lcom/android/fileexplorer/widget/SimplePinFileWidget;
.super Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;
.source "SimplePinFileWidget.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 4
    const-string p1, "onDisabled"

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->dropAllData()V

    .line 12
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 4
    invoke-static {p1, p3}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->update(Landroid/content/Context;[I)V

    .line 7
    return-void
.end method
