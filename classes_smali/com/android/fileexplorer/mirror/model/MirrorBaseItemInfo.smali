.class public Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.super Lcom/android/fileexplorer/mirror/model/BaseItemInfo;
.source "MirrorBaseItemInfo.java"


# instance fields
.field public highLight:Z

.field public rename:Z

.field public selected:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/BaseItemInfo;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public isHighLight()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->highLight:Z

    .line 3
    return v0
.end method

.method public isRename()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->rename:Z

    .line 3
    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->selected:Z

    .line 3
    return v0
.end method

.method public setHighLight(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->highLight:Z

    .line 3
    return-void
.end method

.method public setRename(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->rename:Z

    .line 3
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->selected:Z

    .line 3
    return-void
.end method
