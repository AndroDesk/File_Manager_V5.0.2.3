.class public Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;
.super Ljava/lang/Object;
.source "UpdateWidgetHelper.java"


# static fields
.field public static updateDelegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field public static final widgetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->updateDelegateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoUpdateWidget(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    sget-object v2, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v1}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->getAllWidgetIds(Ljava/util/HashSet;)[I

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->update(Landroid/content/Context;[I)V

    goto :goto_a

    :cond_26
    return-void
.end method

.method public static createDelegate(Landroid/content/Context;[I)Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;
    .registers 5

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_16

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_13

    iget p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    goto :goto_17

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, -0x1

    :goto_17
    sget-object p1, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->updateDelegateMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    sget-object p1, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->updateDelegateMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetUpdateDelegate(I)Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    sget-object p1, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->updateDelegateMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;

    return-object p0
.end method

.method public static getAllWidgetIds(Ljava/util/HashSet;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [I

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    move v0, v3

    goto :goto_10

    :cond_26
    return-object v1
.end method

.method private static renderUi(Landroid/content/Context;[ILcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;Landroid/appwidget/AppWidgetManager;)V
    .registers 4

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public static tryAddWidgets(Ljava/lang/Class;[I)V
    .registers 6

    sget-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    array-length v0, p1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_28

    aget v2, p1, v1

    sget-object v3, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_28
    return-void
.end method

.method public static tryRemoveWidgets(Ljava/lang/Class;)V
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static update(Landroid/content/Context;[I)V
    .registers 4

    if-eqz p1, :cond_11

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_11

    :cond_6
    invoke-static {p0, p1}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->createDelegate(Landroid/content/Context;[I)Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;

    move-result-object v0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->renderUi(Landroid/content/Context;[ILcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;Landroid/appwidget/AppWidgetManager;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public static widgetUpdateDelegate(I)Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;
    .registers 1

    new-instance p0, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;

    invoke-direct {p0}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;-><init>()V

    return-object p0
.end method
