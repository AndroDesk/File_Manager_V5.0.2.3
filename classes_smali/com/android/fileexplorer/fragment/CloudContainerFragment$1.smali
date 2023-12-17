.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;
.super Ljava/lang/Object;
.source "CloudContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$200(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "先同步一下"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v5, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v6, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v8, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide v11, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lcom/micloud/midrive/infos/FileDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getInstance()Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

    move-result-object v8

    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v11, v1

    invoke-virtual/range {v8 .. v13}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->addTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/TransferFileBaseInfo;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    iget-object v1, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$400(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    if-eqz v1, :cond_11b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v4, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v7, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-wide v10, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/micloud/midrive/infos/FileDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getInstance()Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

    move-result-object v7

    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v10, v1

    invoke-virtual/range {v7 .. v12}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->addTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/TransferFileBaseInfo;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    :cond_11b
    return-void
.end method
