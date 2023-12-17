.class public Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;
.super Ljava/lang/Object;
.source "MirrorHoverMaskInfo.java"


# instance fields
.field private canHover:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover:Z

    return-void
.end method


# virtual methods
.method public canHover()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover:Z

    return v0
.end method

.method public setHover(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover:Z

    return-void
.end method
