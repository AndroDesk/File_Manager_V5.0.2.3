.class Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;
.super Ljava/lang/Object;
.source "HomeFilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->performLoadStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundComplete(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V
    .registers 5

    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$100(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-static {v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    :cond_21
    invoke-static {v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_2a
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2d
    return-void
.end method

.method public bridge synthetic onBackgroundComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->onBackgroundComplete(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V

    return-void
.end method

.method public onComplete(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    iget v1, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->device:I

    iget-object v2, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    iget-boolean v3, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->forceMainSpace:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;ILcom/android/fileexplorer/model/StorageInfo;Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$300(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$400(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showDisconnectStorage()V

    goto :goto_62

    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$500(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$800(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$600(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$700(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)I

    move-result v2

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->extraPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->initUI(Lcom/android/fileexplorer/model/StorageInfo;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5d

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$900(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;->updateCategories(Ljava/util/List;)V

    :cond_5d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onUpdateUI()V

    :cond_62
    :goto_62
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;->onComplete(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V

    return-void
.end method
