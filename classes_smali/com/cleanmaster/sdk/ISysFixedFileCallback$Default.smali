.class public Lcom/cleanmaster/sdk/ISysFixedFileCallback$Default;
.super Ljava/lang/Object;
.source "ISysFixedFileCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/ISysFixedFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/ISysFixedFileCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onFindSysFixedFileItem(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    return-void
.end method

.method public onScanItem(Ljava/lang/String;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onStartScan(I)V
    .registers 2

    return-void
.end method

.method public onSysFixedFileScanFinish()V
    .registers 1

    return-void
.end method
