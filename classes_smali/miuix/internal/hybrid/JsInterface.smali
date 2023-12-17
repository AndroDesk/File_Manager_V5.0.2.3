.class public Lmiuix/internal/hybrid/JsInterface;
.super Ljava/lang/Object;
.source "JsInterface.java"


# static fields
.field public static final INTERFACE_NAME:Ljava/lang/String; = "MiuiJsBridge"


# instance fields
.field private mManager:Lmiuix/internal/hybrid/HybridManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/hybrid/HybridManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/JsInterface;->mManager:Lmiuix/internal/hybrid/HybridManager;

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/JsInterface;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/HybridManager;->config(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hybrid"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "config response is "

    invoke-static {v1, p1, v0}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-object p1
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/JsInterface;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/internal/hybrid/HybridManager;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "hybrid"

    const/4 p3, 0x3

    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_14

    const-string p3, "blocking response is "

    invoke-static {p3, p1, p2}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-object p1
.end method

.method public lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/JsInterface;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/internal/hybrid/HybridManager;->lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "hybrid"

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "lookup response is "

    invoke-static {v0, p1, p2}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-object p1
.end method
