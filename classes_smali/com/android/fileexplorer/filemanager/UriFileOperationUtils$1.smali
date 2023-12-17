.class Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;
.super Ljava/lang/Object;
.source "UriFileOperationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$contentFile:Lcom/android/fileexplorer/model/ContentFile;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;->val$contentFile:Lcom/android/fileexplorer/model/ContentFile;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;->val$contentFile:Lcom/android/fileexplorer/model/ContentFile;

    .line 5
    iget-wide v1, v1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 10
    return-void
.end method
