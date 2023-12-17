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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/VideoGroupItemR;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/VideoGroupItemR;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZ)V
    .registers 14

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "bindViewForRV needJump = "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "VideoGroupItemR"

    .line 21
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mMoreVideoView:Landroid/widget/ImageView;

    .line 26
    iget-boolean v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_20

    .line 31
    move v1, v2

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    const/16 v1, 0x8

    .line 35
    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mVideoGroupItem:Lcom/android/fileexplorer/view/VideoGroupItem;

    .line 40
    iget-boolean v8, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    .line 42
    move-object v4, p1

    .line 43
    move v5, p2

    .line 44
    move v6, p3

    .line 45
    move v7, p4

    .line 46
    invoke-virtual/range {v3 .. v8}, Lcom/android/fileexplorer/view/VideoGroupItem;->bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZ)V

    .line 49
    iget-boolean p1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    .line 51
    if-eqz p1, :cond_37

    .line 53
    const v2, 0x7f0806bf

    .line 56
    :cond_37
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    return-void
.end method

.method public getIcon()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mVideoGroupItem:Lcom/android/fileexplorer/view/VideoGroupItem;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/VideoGroupItem;->getImage()Landroid/widget/ImageView;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0487

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/fileexplorer/view/VideoGroupItem;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mVideoGroupItem:Lcom/android/fileexplorer/view/VideoGroupItem;

    .line 15
    const v0, 0x7f0a02af

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->mMoreVideoView:Landroid/widget/ImageView;

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->detector:Landroid/view/GestureDetector;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItemR;->detector:Landroid/view/GestureDetector;

    .line 3
    return-void
.end method
