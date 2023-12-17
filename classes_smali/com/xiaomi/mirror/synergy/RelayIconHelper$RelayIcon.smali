.class public Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelayIcon"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final description:Ljava/lang/String;

.field public final isSupportHandoff:Z

.field public final packageName:Ljava/lang/String;

.field public final remoteDeviceId:Ljava/lang/String;

.field public final remoteDeviceName:Ljava/lang/String;

.field public final remoteDeviceType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    iput p5, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceType:I

    iput-object p6, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDeviceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDeviceType()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceType:I

    return v0
.end method

.method public isSupportHandoff()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    return v0
.end method
