.class Lcom/android/fileexplorer/filemanager/StorageVolumeUtil$1;
.super Ljava/lang/Object;
.source "StorageVolumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->requestDocumentTreePermission(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    .line 8
    return-void
.end method
