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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider(Landroid/content/Context;)Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;
    .registers 4

    sget-object p0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    if-eqz v0, :cond_9

    monitor-exit p0

    return-object v0

    :cond_9
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;

    invoke-direct {v0}, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;-><init>()V

    sput-object v0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    const-string v0, "hybrid"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "hybrid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    sget-object v0, Lmiuix/internal/hybrid/provider/WebViewFactory;->sProviderInstance:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    monitor-exit p0

    return-object v0

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v0
.end method
