.class Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;
.super Ljava/lang/Object;
.source "HomeFilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onBackgroundComplete(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->onBackgroundComplete(Ljava/util/List;)V

    return-void
.end method

.method public onBackgroundComplete(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1100(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_5c

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/fileexplorer/model/StorageFileInfo;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 8
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1300(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Landroid/content/Context;

    move-result-object v2

    .line 9
    invoke-static {v1, v0, v2}, Lcom/android/fileexplorer/util/CategoryUtil;->pareEntryEntity(Lcom/android/fileexplorer/model/StorageFileInfo;Lcom/android/fileexplorer/model/StorageInfo;Landroid/content/Context;)Lcom/android/fileexplorer/model/FileEntryEntity;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_21

    .line 12
    :cond_52
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_5c
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1400(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 3
    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1500(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1600(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1700(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showInvalidStorage()V

    goto :goto_3f

    .line 5
    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1800(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;->updateStorageVolumes(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->access$1900(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V

    :goto_3f
    return-void
.end method
