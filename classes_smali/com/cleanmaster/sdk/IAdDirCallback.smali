.class public interface abstract Lcom/cleanmaster/sdk/IAdDirCallback;
.super Ljava/lang/Object;
.source "IAdDirCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IAdDirCallback$Stub;,
        Lcom/cleanmaster/sdk/IAdDirCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.IAdDirCallback"


# virtual methods
.method public abstract onAdDirScanFinish()V
.end method

.method public abstract onFindAdDir(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
