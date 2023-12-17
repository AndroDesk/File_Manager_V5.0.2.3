.class public interface abstract Lcom/cleanmaster/sdk/ISysFixedFileCallback;
.super Ljava/lang/Object;
.source "ISysFixedFileCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ISysFixedFileCallback$Stub;,
        Lcom/cleanmaster/sdk/ISysFixedFileCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.ISysFixedFileCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onFindSysFixedFileItem(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onScanItem(Ljava/lang/String;I)Z
.end method

.method public abstract onStartScan(I)V
.end method

.method public abstract onSysFixedFileScanFinish()V
.end method
