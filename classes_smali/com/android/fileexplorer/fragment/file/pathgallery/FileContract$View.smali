.class public interface abstract Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;
.super Ljava/lang/Object;
.source "FileContract.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract changePath(Lcom/android/fileexplorer/model/PathSegment;)V
.end method

.method public abstract dismissVolumePopHint()V
.end method

.method public abstract exitActionMode()Z
.end method

.method public abstract getPrevPath()Lcom/android/fileexplorer/model/PathSegment;
.end method

.method public abstract initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V
.end method

.method public abstract scrollToPositionWithOffset(II)V
.end method

.method public abstract setUpUSB()V
.end method

.method public abstract showSpaceNotEnough()V
.end method

.method public abstract showStorageRemoved()Z
.end method

.method public abstract showVolumeHintPopup()Z
.end method

.method public abstract updatePopupVolumes(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract updateSwitchVolume(Z)V
.end method
