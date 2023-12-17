.class Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;
.super Ljava/lang/Object;
.source "FilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->performLoadStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundComplete(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onBackgroundComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->onBackgroundComplete(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V

    return-void
.end method

.method public onComplete(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    iget v1, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->device:I

    iget-object v2, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    iget-boolean v3, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->forceMainSpace:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;ILcom/android/fileexplorer/model/StorageInfo;Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->extraPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$102(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->setUpUSB()V

    goto :goto_65

    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showDisconnectStorage()V

    goto :goto_65

    :cond_43
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->initUI(Lcom/android/fileexplorer/model/StorageInfo;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onUpdateUI()V

    :goto_65
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I

    move-result p1

    if-nez p1, :cond_7b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$1200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V

    :cond_7b
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;->onComplete(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V

    return-void
.end method
