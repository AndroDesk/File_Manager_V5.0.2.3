.class public interface abstract Lcom/cleanmaster/sdk/ICacheCallback;
.super Ljava/lang/Object;
.source "ICacheCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ICacheCallback$Stub;,
        Lcom/cleanmaster/sdk/ICacheCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.ICacheCallback"


# virtual methods
.method public abstract onCacheScanFinish()V
.end method

.method public abstract onFindCacheItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
