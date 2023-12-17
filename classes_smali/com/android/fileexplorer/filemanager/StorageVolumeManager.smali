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

    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    invoke-direct {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mInstance:Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mInstance:Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    return-object v0
.end method


# virtual methods
.method public cacheUri(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->setActionOpenExternalDocumentUri(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    goto :goto_37

    :catch_1a
    move-exception p1

    const-string p2, "cacheSDUri error: "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageVolumeManager"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110175

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :goto_37
    return-void
.end method

.method public clearActionCache()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iput-object v1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;

    :cond_a
    iput-object v1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    return-void
.end method

.method public doCacheAction()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;->execute(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;)V

    :cond_12
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    return-void
.end method

.method public getActionCache()Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    return-object v0
.end method

.method public setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mStorageVolumeActionCache:Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->mActionInterfaceWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
