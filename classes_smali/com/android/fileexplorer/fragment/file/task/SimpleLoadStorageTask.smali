.class public Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;
.super Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;
.source "SimpleLoadStorageTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;

    const-string v0, "SimpleLoadStorageTask"

    sput-object v0, Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;-><init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;-><init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;
    .registers 4

    new-instance p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    invoke-direct {p1}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;-><init>()V

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->device:I

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;->TAG:Ljava/lang/String;

    const-string v1, "doInitStorage: mStorageInfo is null."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;

    if-eqz v0, :cond_22

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/task/GenericCallback;->onBackgroundComplete(Ljava/lang/Object;)V

    :cond_22
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    move-result-object p1

    return-object p1
.end method
