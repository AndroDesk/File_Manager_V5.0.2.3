.class Lcom/miui/maml/elements/video/NormalVideoView;
.super Lcom/miui/maml/elements/video/BaseVideoView;
.source "NormalVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public addSurfaceHolderCallback()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 7
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 10
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_83

    .line 6
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 8
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 14
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 17
    move-result v1

    .line 18
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 20
    if-lez v2, :cond_7f

    .line 22
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 24
    if-lez v2, :cond_7f

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 29
    move-result v0

    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 33
    move-result p1

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 37
    move-result v1

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 41
    move-result p2

    .line 42
    const/high16 v2, 0x40000000  # 2.0f

    .line 44
    if-ne v0, v2, :cond_46

    .line 46
    if-ne v1, v2, :cond_46

    .line 48
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 50
    mul-int v1, v0, p2

    .line 52
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 54
    mul-int v3, p1, v2

    .line 56
    if-ge v1, v3, :cond_3c

    .line 58
    mul-int/2addr v0, p2

    .line 59
    div-int/2addr v0, v2

    .line 60
    goto :goto_67

    .line 61
    :cond_3c
    mul-int v1, v0, p2

    .line 63
    mul-int v3, p1, v2

    .line 65
    if-le v1, v3, :cond_64

    .line 67
    mul-int/2addr v2, p1

    .line 68
    div-int v1, v2, v0

    .line 70
    goto :goto_56

    .line 71
    :cond_46
    const/high16 v3, -0x80000000

    .line 73
    if-ne v0, v2, :cond_58

    .line 75
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 77
    mul-int/2addr v0, p1

    .line 78
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 80
    div-int/2addr v0, v2

    .line 81
    if-ne v1, v3, :cond_55

    .line 83
    if-le v0, p2, :cond_55

    .line 85
    goto :goto_64

    .line 86
    :cond_55
    move v1, v0

    .line 87
    :goto_56
    move v0, p1

    .line 88
    goto :goto_7f

    .line 89
    :cond_58
    if-ne v1, v2, :cond_69

    .line 91
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 93
    mul-int/2addr v1, p2

    .line 94
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 96
    div-int/2addr v1, v2

    .line 97
    if-ne v0, v3, :cond_66

    .line 99
    if-le v1, p1, :cond_66

    .line 101
    :cond_64
    :goto_64
    move v0, p1

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    move v0, v1

    .line 104
    :goto_67
    move v1, p2

    .line 105
    goto :goto_7f

    .line 106
    :cond_69
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 108
    iget v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 110
    if-ne v1, v3, :cond_75

    .line 112
    if-le v4, p2, :cond_75

    .line 114
    mul-int v1, p2, v2

    .line 116
    div-int/2addr v1, v4

    .line 117
    goto :goto_77

    .line 118
    :cond_75
    move v1, v2

    .line 119
    move p2, v4

    .line 120
    :goto_77
    if-ne v0, v3, :cond_66

    .line 122
    if-le v1, p1, :cond_66

    .line 124
    mul-int/2addr v4, p1

    .line 125
    div-int v1, v4, v2

    .line 127
    goto :goto_56

    .line 128
    :cond_7f
    :goto_7f
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 131
    goto :goto_86

    .line 132
    :cond_83
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 135
    :goto_86
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 7
    return-void
.end method

.method public onSurfaceDestroyed()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 4
    return-void
.end method

.method public setFormat(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 8
    return-void
.end method

.method public updateVideoSize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    return-void
.end method
