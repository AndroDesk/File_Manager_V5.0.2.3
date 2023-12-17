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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->updateDelegateMap:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoUpdateWidget(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_26

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Class;

    .line 23
    sget-object v2, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/HashSet;

    .line 31
    invoke-static {v1}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->getAllWidgetIds(Ljava/util/HashSet;)[I

    .line 34
    move-result-object v1

    .line 35
    invoke-static {p0, v1}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->update(Landroid/content/Context;[I)V

    .line 38
    goto :goto_a

    .line 39
    :cond_26
    return-void
.end method

.method public static createDelegate(Landroid/content/Context;[I)Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 4
    move-result-object p0

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    if-ge v1, v0, :cond_16

    .line 9
    aget v2, p1, v1

    .line 11
    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_13

    .line 17
    iget p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    const/4 p0, -0x1

    .line 24
    :goto_17
    sget-object p1, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->updateDelegateMap:Ljava/util/Map;

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_30

    .line 36
    sget-object p1, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->updateDelegateMap:Ljava/util/Map;

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetUpdateDelegate(I)Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;

    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_30
    sget-object p1, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->updateDelegateMap:Ljava/util/Map;

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;

    .line 61
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_6

    .line 4
    new-array p0, v0, [I

    .line 6
    return-object p0

    .line 7
    :cond_6
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [I

    .line 13
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_26

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 29
    add-int/lit8 v3, v0, 0x1

    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v2

    .line 35
    aput v2, v1, v0

    .line 37
    move v0, v3

    .line 38
    goto :goto_10

    .line 39
    :cond_26
    return-object v1
.end method

.method private static renderUi(Landroid/content/Context;[ILcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;Landroid/appwidget/AppWidgetManager;)V
    .registers 4

    .line 1
    invoke-virtual {p2, p0, p3, p1}, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 4
    return-void
.end method

.method public static tryAddWidgets(Ljava/lang/Class;[I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_10

    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_10
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    if-ge v1, v0, :cond_28

    .line 21
    aget v2, p1, v1

    .line 23
    sget-object v3, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    .line 25
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/HashSet;

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_12

    .line 41
    :cond_28
    return-void
.end method

.method public static tryRemoveWidgets(Ljava/lang/Class;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->widgetMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static update(Landroid/content/Context;[I)V
    .registers 4

    .line 1
    if-eqz p1, :cond_11

    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_11

    .line 7
    :cond_6
    invoke-static {p0, p1}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->createDelegate(Landroid/content/Context;[I)Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0, p1, v0, v1}, Lcom/android/fileexplorer/widget/helper/UpdateWidgetHelper;->renderUi(Landroid/content/Context;[ILcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;Landroid/appwidget/AppWidgetManager;)V

    .line 18
    :cond_11
    :goto_11
    return-void
.end method

.method public static widgetUpdateDelegate(I)Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;
    .registers 1

    .line 1
    new-instance p0, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/widget/delegate/SimpleWidgetUpdateDelegate;-><init>()V

    .line 6
    return-object p0
.end method
