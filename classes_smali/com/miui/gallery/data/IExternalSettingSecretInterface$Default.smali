.class public Lcom/miui/gallery/data/IExternalSettingSecretInterface$Default;
.super Ljava/lang/Object;
.source "IExternalSettingSecretInterface.java"

# interfaces
.implements Lcom/miui/gallery/data/IExternalSettingSecretInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/IExternalSettingSecretInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
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

.method public onFinishSettingSecret([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public preSettingSecret([Ljava/lang/String;)V
    .registers 2

    return-void
.end method
