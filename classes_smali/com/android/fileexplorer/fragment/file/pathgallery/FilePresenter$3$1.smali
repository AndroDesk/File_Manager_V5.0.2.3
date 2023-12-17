.class Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;
.super Ljava/lang/Object;
.source "FilePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    .line 14
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    .line 24
    iget-object v1, v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 26
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    .line 29
    move-result-object v1

    .line 30
    iget v1, v1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    .line 32
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    .line 34
    iget-object v2, v2, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 36
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    .line 39
    move-result-object v2

    .line 40
    iget v2, v2, Lcom/android/fileexplorer/model/PathSegment;->top:I

    .line 42
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->scrollToPositionWithOffset(II)V

    .line 45
    return-void
.end method
