.class public Lcom/android/fileexplorer/filemanager/StorageVolumeManager;
.super Ljava/lang/Object;
.source "StorageVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;,
        Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageVolumeManager"

.field private static mInstance:Lcom/android/fileexplorer/filemanager/StorageVolumeManager;


# instance fields
.field private mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mInstance:Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mInstance:Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 3
    return-object v0
.end method


# virtual methods
.method public cacheUri(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 7
    move-result-object p2

    .line 8
    if-nez p2, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 19
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->setActionOpenExternalDocumentUri(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    .line 26
    goto :goto_37

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    const-string p2, "cacheSDUri error: "

    .line 30
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "StorageVolumeManager"

    .line 47
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const p1, 0x7f110175

    .line 53
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 56
    :goto_37
    return-void
.end method

.method public clearActionCache()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 9
    iput-object v1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;

    .line 11
    :cond_a
    iput-object v1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    .line 13
    return-void
.end method

.method public doCacheAction()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    .line 16
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;->execute(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;)V

    .line 19
    :cond_12
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    .line 22
    return-void
.end method

.method public getActionCache()Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    .line 3
    return-object v0
.end method

.method public setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;

    .line 10
    return-void
.end method
