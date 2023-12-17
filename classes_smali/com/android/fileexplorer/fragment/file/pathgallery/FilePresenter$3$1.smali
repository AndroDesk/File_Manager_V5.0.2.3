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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    iget-object v1, v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v1

    iget v1, v1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;->this$1:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    iget-object v2, v2, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v2

    iget v2, v2, Lcom/android/fileexplorer/model/PathSegment;->top:I

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->scrollToPositionWithOffset(II)V

    return-void
.end method
