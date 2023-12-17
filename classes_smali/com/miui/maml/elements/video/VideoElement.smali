.class public Lcom/miui/maml/elements/video/VideoElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "VideoElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VideoElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Video"


# instance fields
.field private mSource:Lcom/miui/maml/util/MamlMediaDataSource;

.field private mView:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/video/VideoElement;->load()V

    .line 7
    return-void
.end method

.method private load()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getMamlSurface()Lcom/miui/maml/component/MamlSurface;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_31

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-ge v0, v1, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance v0, Lcom/miui/maml/elements/video/SurfaceVideoView;

    .line 20
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getMamlSurface()Lcom/miui/maml/component/MamlSurface;

    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/video/SurfaceVideoView;-><init>(Landroid/content/Context;Lcom/miui/maml/component/MamlSurface;)V

    .line 39
    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 41
    iget v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_40

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 49
    goto :goto_40

    .line 50
    :cond_31
    new-instance v0, Lcom/miui/maml/elements/video/NormalVideoView;

    .line 52
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 54
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/video/NormalVideoView;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 65
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 67
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->setName(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 74
    const/4 v1, -0x2

    .line 75
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->setFormat(I)V

    .line 78
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public config(ZILjava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "config: path "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " looping "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " scaleMode "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "VideoElement"

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 41
    if-nez v0, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 46
    if-eqz v0, :cond_39

    .line 48
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->getPath()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_4c

    .line 58
    :cond_39
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource;

    .line 60
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 63
    move-result-object v1

    .line 64
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 69
    move-result-object v2

    .line 70
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 72
    invoke-direct {v0, v1, v2, p3}, Lcom/miui/maml/util/MamlMediaDataSource;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Ljava/lang/String;)V

    .line 75
    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 77
    :cond_4c
    iget-object p3, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 79
    invoke-virtual {p3, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->setLooping(Z)V

    .line 82
    iget-object p1, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 84
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->setScaleMode(I)V

    .line 87
    iget-object p1, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 89
    iget-object p2, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 91
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->setVideoDataSource(Landroid/media/MediaDataSource;)V

    .line 94
    return-void
.end method

.method public doTick(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTick(J)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->doTick()V

    .line 11
    :cond_a
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->close()V

    .line 11
    :cond_a
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    return-object v0
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->init(Lcom/miui/maml/data/Variables;)V

    .line 15
    :cond_e
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/VideoElement;->stop()V

    .line 7
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    const-string v0, "VideoElement"

    .line 3
    const-string v1, "pause"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->pause()V

    .line 15
    :cond_e
    return-void
.end method

.method public play()V
    .registers 3

    .line 1
    const-string v0, "VideoElement"

    .line 3
    const-string v1, "play"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    .line 22
    :cond_15
    return-void
.end method

.method public seekTo(I)V
    .registers 4

    .line 1
    const-string v0, "seekTo "

    .line 3
    const-string v1, "VideoElement"

    .line 5
    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    .line 15
    :cond_e
    return-void
.end method

.method public setVolume(F)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setVolume "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VideoElement"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->setVolume(F)V

    .line 30
    :cond_1d
    return-void
.end method

.method public stop()V
    .registers 3

    .line 1
    const-string v0, "VideoElement"

    .line 3
    const-string v1, "stop"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->stopPlayback()V

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    .line 22
    :cond_15
    return-void
.end method

.method public updateView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    .line 7
    if-nez v1, :cond_10

    .line 9
    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    .line 11
    if-nez v1, :cond_10

    .line 13
    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    .line 15
    if-eqz v1, :cond_13

    .line 17
    :cond_10
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    .line 20
    :cond_13
    return-void
.end method
