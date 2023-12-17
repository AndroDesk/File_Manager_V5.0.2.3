.class public Lmiuix/internal/hybrid/provider/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# static fields
.field private static final META_DATA_KEY:Ljava/lang/String; = "com.miui.sdk.hybrid.webview"

.field private static sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider(Landroid/content/Context;)Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;
    .registers 4

    .line 1
    sget-object p0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    sget-object v0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 6
    if-eqz v0, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;

    .line 12
    invoke-direct {v0}, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;-><init>()V

    .line 15
    sput-object v0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 17
    const-string v0, "hybrid"

    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_31

    .line 26
    const-string v0, "hybrid"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v2, "loaded provider:"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    sget-object v2, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_31
    sget-object v0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 52
    monitor-exit p0

    .line 53
    return-object v0

    .line 54
    :catchall_35
    move-exception v0

    .line 55
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    .line 56
    throw v0
.end method
