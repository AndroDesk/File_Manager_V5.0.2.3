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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$4000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$4100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$4200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_36

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->shouldShowVolumeSwitchPopup()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;->this$0:Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->access$4300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->showVolumeHintPopup()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->increaseShowVolumeSwitchPopupCount()V

    :cond_36
    return-void
.end method
