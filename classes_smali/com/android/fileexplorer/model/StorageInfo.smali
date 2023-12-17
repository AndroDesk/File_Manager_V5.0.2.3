.class public Lcom/android/fileexplorer/model/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"


# instance fields
.field private description:Ljava/lang/String;

.field private isMiDrive:Z

.field private maintenanceMode:Z

.field private path:Ljava/lang/String;

.field private primary:Z

.field private sd:Z

.field private state:Ljava/lang/String;

.field private usb:Z

.field private uuid:Ljava/lang/String;

.field private visible:Z

.field private xspace:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/model/StorageInfo;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/model/StorageInfo;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->description:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->state:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isMaintenanceMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->maintenanceMode:Z

    return v0
.end method

.method public isMiDrive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive:Z

    return v0
.end method

.method public isMounted()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->state:Ljava/lang/String;

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->primary:Z

    return v0
.end method

.method public isSd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->sd:Z

    return v0
.end method

.method public isUsb()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->usb:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->visible:Z

    return v0
.end method

.method public isXspace()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/StorageInfo;->xspace:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setMaintenanceMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->maintenanceMode:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->primary:Z

    return-void
.end method

.method public setSd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->sd:Z

    return-void
.end method

.method public setUsb(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->usb:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->visible:Z

    return-void
.end method

.method public setXspace(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/StorageInfo;->xspace:Z

    return-void
.end method
