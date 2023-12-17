.class public Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.super Lcom/android/fileexplorer/mirror/model/BaseItemInfo;
.source "MirrorBaseItemInfo.java"


# instance fields
.field public highLight:Z

.field public rename:Z

.field public selected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/BaseItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public isHighLight()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->highLight:Z

    return v0
.end method

.method public isRename()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->rename:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->selected:Z

    return v0
.end method

.method public setHighLight(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->highLight:Z

    return-void
.end method

.method public setRename(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->rename:Z

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;->selected:Z

    return-void
.end method
