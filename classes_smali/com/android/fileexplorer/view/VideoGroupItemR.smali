.class public Lcom/android/fileexplorer/view/VideoGroupItemR;
.super Landroid/widget/LinearLayout;
.source "VideoGroupItemR.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoGroupItemR"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private mMoreVideoView:Landroid/widget/ImageView;

.field private mVideoGroupItem:Lcom/android/fileexplorer/view/VideoGroupItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/VideoGroupItemR;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/VideoGroupItemR;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZ)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "bindViewForRV needJump = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoGroupItemR"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mMoreVideoView:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    move v1, v2

    goto :goto_22

    :cond_20
    const/16 v1, 0x8

    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mVideoGroupItem:Lcom/android/fileexplorer/view/VideoGroupItem;

    iget-boolean v8, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/fileexplorer/view/VideoGroupItem;->bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZ)V

    iget-boolean p1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    if-eqz p1, :cond_37

    const v2, 0x7f0806bf

    :cond_37
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public getIcon()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mVideoGroupItem:Lcom/android/fileexplorer/view/VideoGroupItem;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/VideoGroupItem;->getImage()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032911

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/VideoGroupItem;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mVideoGroupItem:Lcom/android/fileexplorer/view/VideoGroupItem;

    const v0, 0x7f032f39

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mMoreVideoView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->detector:Landroid/view/GestureDetector;

    return-void
.end method
