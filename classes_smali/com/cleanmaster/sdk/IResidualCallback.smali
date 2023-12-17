.class public interface abstract Lcom/cleanmaster/sdk/IResidualCallback;
.super Ljava/lang/Object;
.source "IResidualCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IResidualCallback$Stub;,
        Lcom/cleanmaster/sdk/IResidualCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.IResidualCallback"


# virtual methods
.method public abstract onFindResidualItem(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract onResidualScanFinish()V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method
