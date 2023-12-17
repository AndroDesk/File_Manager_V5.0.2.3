.class public Lcom/android/fileexplorer/widget/SimplePinFileWidget;
.super Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;
.source "SimplePinFileWidget.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const-string p1, "onDisabled"

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->dropAllData()V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/widget/BaseAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-static {p1, p3}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->update(Landroid/content/Context;[I)V

    return-void
.end method
