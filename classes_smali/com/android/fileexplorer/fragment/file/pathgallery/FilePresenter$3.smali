.class Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;
.super Ljava/lang/Object;
.source "FilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

.field public final synthetic val$parentCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->val$parentCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->val$parentCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;->onComplete(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    iget p1, p1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    iget p1, p1, Lcom/android/fileexplorer/model/PathSegment;->top:I

    if-eqz p1, :cond_29

    new-instance p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;)V

    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3802(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)Ljava/lang/String;

    :cond_45
    return-void
.end method
