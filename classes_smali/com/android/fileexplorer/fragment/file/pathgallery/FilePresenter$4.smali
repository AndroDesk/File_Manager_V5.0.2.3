.class Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;
.super Ljava/lang/Object;
.source "FilePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->onUserVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$4000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$4100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_36

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$4200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-le v0, v1, :cond_36

    .line 32
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->shouldShowVolumeSwitchPopup()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_36

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    .line 40
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$4300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 46
    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->showVolumeHintPopup()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_36

    .line 52
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->increaseShowVolumeSwitchPopupCount()V

    .line 55
    :cond_36
    return-void
.end method
