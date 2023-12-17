.class public Lcom/micloud/midrive/infos/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"


# instance fields
.field private description:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private primary:Z

.field private sd:Z

.field private state:Ljava/lang/String;

.field private usb:Z

.field private uuid:Ljava/lang/String;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/StorageInfo;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/StorageInfo;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/StorageInfo;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->description:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->state:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isMounted()Z
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->state:Ljava/lang/String;

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->primary:Z

    return v0
.end method

.method public isSd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->sd:Z

    return v0
.end method

.method public isUsb()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->usb:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/infos/StorageInfo;->visible:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/StorageInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/StorageInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/StorageInfo;->primary:Z

    return-void
.end method

.method public setSd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/StorageInfo;->sd:Z

    return-void
.end method

.method public setUsb(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/StorageInfo;->usb:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/StorageInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/micloud/midrive/infos/StorageInfo;->visible:Z

    return-void
.end method
