.class Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;
.super Ljava/lang/Object;
.source "FilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

.field public final synthetic val$parentCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->val$parentCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackgroundComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->onBackgroundComplete(Ljava/util/List;)V

    return-void
.end method

.method public onBackgroundComplete(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1402(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Z)Z

    if-eqz p1, :cond_73

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3f

    :cond_34
    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_48

    :cond_3f
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_6c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1402(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Z)Z

    goto :goto_15

    :cond_73
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->showStorageRemoved()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2202(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {v0, v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2602(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageInfo;

    :cond_3c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v4}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$2900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    :cond_6a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_78

    move v1, v2

    :cond_78
    if-nez v1, :cond_85

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->dismissVolumePopHint()V

    :cond_85
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->setLastSelectedVolumePath()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->updateSwitchVolume(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;->val$parentCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/task/GenericCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method
