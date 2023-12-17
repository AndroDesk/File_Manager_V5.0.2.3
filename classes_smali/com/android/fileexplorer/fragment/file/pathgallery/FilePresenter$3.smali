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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->val$parentCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->val$parentCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;->onComplete(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_29

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    .line 19
    move-result-object p1

    .line 20
    iget p1, p1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    .line 22
    if-eqz p1, :cond_29

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 26
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;

    .line 29
    move-result-object p1

    .line 30
    iget p1, p1, Lcom/android/fileexplorer/model/PathSegment;->top:I

    .line 32
    if-eqz p1, :cond_29

    .line 34
    new-instance p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;

    .line 36
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3$1;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;)V

    .line 39
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;)V

    .line 42
    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 44
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_45

    .line 54
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 56
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 65
    const-string v0, ""

    .line 67
    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$3802(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    :cond_45
    return-void
.end method
