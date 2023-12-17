.class public Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;
.super Ljava/lang/Object;
.source "MirrorHoverMaskInfo.java"


# instance fields
.field private canHover:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover:Z

    .line 6
    return-void
.end method


# virtual methods
.method public canHover()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover:Z

    .line 3
    return v0
.end method

.method public setHover(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover:Z

    .line 3
    return-void
.end method
