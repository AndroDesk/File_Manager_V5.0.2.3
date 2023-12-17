.class public interface abstract Lcom/cleanmaster/sdk/ISystemCacheCallback;
.super Ljava/lang/Object;
.source "ISystemCacheCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub;,
        Lcom/cleanmaster/sdk/ISystemCacheCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.ISystemCacheCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onCacheScanFinish()V
.end method

.method public abstract onFindCacheItem(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
