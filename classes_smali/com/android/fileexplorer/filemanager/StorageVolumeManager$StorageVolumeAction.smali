.class public Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;
.super Ljava/lang/Object;
.source "StorageVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/filemanager/StorageVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageVolumeAction"
.end annotation


# instance fields
.field private actionId:I

.field private actionType:I

.field private destType:I

.field private distPath:Ljava/lang/String;

.field private fileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isOverwrite:Z

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->actionId:I

    .line 6
    return-void
.end method


# virtual methods
.method public getActionId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->actionId:I

    .line 3
    return v0
.end method

.method public getActionType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->actionType:I

    .line 3
    return v0
.end method

.method public getDestType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->destType:I

    .line 3
    return v0
.end method

.method public getDistPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->distPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-object v0
.end method

.method public getFileList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->fileList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->password:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->srcPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isOverwrite()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->isOverwrite:Z

    .line 3
    return v0
.end method

.method public setActionType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->actionType:I

    .line 3
    return-void
.end method

.method public setDestType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->destType:I

    .line 3
    return-void
.end method

.method public setDistPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->distPath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileInfo(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-void
.end method

.method public setFileList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->fileList:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->name:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setOverwrite(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->isOverwrite:Z

    .line 3
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->password:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->srcPath:Ljava/lang/String;

    .line 3
    return-void
.end method
