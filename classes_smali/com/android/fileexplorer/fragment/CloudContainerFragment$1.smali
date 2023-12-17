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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 5
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$200(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 14
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_24

    .line 20
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 22
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v3, "先同步一下"

    .line 29
    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 36
    return-void

    .line 37
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 44
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 62
    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 65
    move-result-object v3

    .line 66
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 68
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    new-instance v1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 79
    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 81
    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 84
    move-result-object v3

    .line 85
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 87
    iget-object v5, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 89
    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 91
    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 94
    move-result-object v3

    .line 95
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 97
    iget-object v6, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 99
    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 101
    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 104
    move-result-object v3

    .line 105
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 107
    iget-object v8, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 113
    invoke-static {v3}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 116
    move-result-object v3

    .line 117
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 119
    iget-wide v11, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    move-result-wide v13

    .line 125
    const/4 v15, 0x0

    .line 126
    const/16 v16, 0x0

    .line 128
    const/16 v17, 0x0

    .line 130
    move-object v4, v1

    .line 131
    invoke-direct/range {v4 .. v17}, Lcom/micloud/midrive/infos/FileDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getInstance()Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

    .line 137
    move-result-object v8

    .line 138
    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 140
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v9

    .line 144
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 151
    move-result-object v10

    .line 152
    const/4 v12, 0x1

    .line 153
    const/4 v13, 0x0

    .line 154
    move-object v11, v1

    .line 155
    invoke-virtual/range {v8 .. v13}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->addTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/TransferFileBaseInfo;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 158
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 160
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$400(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_11b

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    iget-object v3, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 173
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 189
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 192
    move-result-object v2

    .line 193
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 195
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v6

    .line 204
    new-instance v1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 206
    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 208
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 211
    move-result-object v2

    .line 212
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 214
    iget-object v4, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 216
    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 218
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 221
    move-result-object v2

    .line 222
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 224
    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 226
    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 228
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 231
    move-result-object v2

    .line 232
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 234
    iget-object v7, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 236
    const/4 v8, 0x0

    .line 237
    const/4 v9, 0x0

    .line 238
    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 240
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$300(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 243
    move-result-object v2

    .line 244
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 246
    iget-wide v10, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 251
    move-result-wide v12

    .line 252
    const/4 v14, 0x0

    .line 253
    const/4 v15, 0x0

    .line 254
    const/16 v16, 0x0

    .line 256
    move-object v3, v1

    .line 257
    invoke-direct/range {v3 .. v16}, Lcom/micloud/midrive/infos/FileDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getInstance()Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

    .line 263
    move-result-object v7

    .line 264
    iget-object v2, v0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 266
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 269
    move-result-object v8

    .line 270
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v2}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 277
    move-result-object v9

    .line 278
    const/4 v11, 0x1

    .line 279
    const/4 v12, 0x0

    .line 280
    move-object v10, v1

    .line 281
    invoke-virtual/range {v7 .. v12}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->addTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/TransferFileBaseInfo;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 284
    :cond_11b
    return-void
.end method
