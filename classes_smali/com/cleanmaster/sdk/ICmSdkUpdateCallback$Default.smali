.class public Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Default;
.super Ljava/lang/Object;
.source "ICmSdkUpdateCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;
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
.method public FinishUpdateCheck(IJLjava/lang/String;)V
    .registers 5

    return-void
.end method

.method public FinishUpdateData(I)V
    .registers 2

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
