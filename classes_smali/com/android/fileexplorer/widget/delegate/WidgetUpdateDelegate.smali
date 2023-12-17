.class public abstract Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;
.super Ljava/lang/Object;
.source "WidgetUpdateDelegate.java"


# instance fields
.field public componentName:Ljava/lang/Class;

.field public final remoteViewsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field public remoteViewsService:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->remoteViewsMap:Ljava/util/Map;

    .line 11
    return-void
.end method


# virtual methods
.method public clearRemoteView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->remoteViewsMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public getComponentName()Ljava/lang/Class;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->componentName:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public getLayoutId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRemoteViewsService()Ljava/lang/Class;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/widget/delegate/WidgetUpdateDelegate;->remoteViewsService:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public abstract onPermissionUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end method

.method public abstract onPreUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end method

.method public abstract onUnSupport(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end method

.method public abstract onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end method
