.class public Lcom/miui/maml/component/MamlSurface;
.super Ljava/lang/Object;
.source "MamlSurface.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;
    }
.end annotation


# static fields
.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlSurface"


# instance fields
.field private final mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFinished:Z

.field private mIsSuperWallpaper:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/miui/maml/component/MamlSurface$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlSurface$1;-><init>(Lcom/miui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/component/MamlSurface;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/component/MamlSurface;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/component/MamlSurface;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;Z)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/component/MamlSurface$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlSurface$1;-><init>(Lcom/miui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/component/MamlSurface;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/miui/maml/component/MamlSurface;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method private finish()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlSurface;->mFinished:Z

    .line 3
    if-nez v0, :cond_2c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlSurface;->mFinished:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 11
    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    if-eqz v1, :cond_2c

    .line 15
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 18
    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 20
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 23
    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 25
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/miui/maml/data/Variables;->reset()V

    .line 32
    iget-object v1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 34
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 40
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    .line 43
    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 45
    :cond_2c
    return-void
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p4, v0, :cond_17

    .line 4
    const/4 p3, 0x2

    .line 5
    if-eq p4, p3, :cond_11

    .line 7
    const/4 p1, 0x3

    .line 8
    if-eq p4, p1, :cond_b

    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Lcom/miui/maml/util/FolderResourceLoader;

    .line 14
    invoke-direct {p1, p2}, Lcom/miui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance p3, Lcom/miui/maml/util/AssetsResourceLoader;

    .line 20
    invoke-direct {p3, p1, p2}, Lcom/miui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-object p3

    .line 24
    :cond_17
    new-instance p1, Lcom/miui/maml/util/ZipResourceLoader;

    .line 26
    invoke-direct {p1, p2, p3}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object p1
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;Z)V
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 7
    iput-object p3, p0, Lcom/miui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 9
    iput-boolean p4, p0, Lcom/miui/maml/component/MamlSurface;->mIsSuperWallpaper:Z

    .line 11
    if-eqz p2, :cond_4e

    .line 13
    new-instance p3, Lcom/miui/maml/ResourceManager;

    .line 15
    invoke-direct {p3, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 18
    new-instance p2, Lcom/miui/maml/ScreenElementRoot;

    .line 20
    new-instance p4, Lcom/miui/maml/ScreenContext;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p4, p1, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 29
    invoke-direct {p2, p4}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 32
    invoke-virtual {p2, p0}, Lcom/miui/maml/ScreenElementRoot;->setMamlSurface(Lcom/miui/maml/component/MamlSurface;)V

    .line 35
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_4e

    .line 41
    iput-object p2, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 43
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 45
    invoke-virtual {p2, p1}, Lcom/miui/maml/ScreenElementRoot;->setMamlSurfaceOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 48
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 50
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 53
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 55
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 58
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 60
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 63
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 65
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->isTransparentSurface()Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_4e

    .line 71
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 73
    if-eqz p1, :cond_4e

    .line 75
    const/4 p2, -0x2

    .line 76
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 79
    :cond_4e
    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 6

    .line 1
    const-string v0, "unlockCanvasAndPost exception."

    .line 3
    const-string v1, "MamlSurface"

    .line 5
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    if-eqz v2, :cond_7b

    .line 9
    iget-object v3, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 11
    if-eqz v3, :cond_7b

    .line 13
    const/4 v3, 0x0

    .line 14
    :try_start_d
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->isUseHardwareCanvas()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1a

    .line 20
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 22
    invoke-static {v2}, Landroidx/appcompat/widget/x;->g(Landroid/view/SurfaceHolder;)Landroid/graphics/Canvas;

    .line 25
    move-result-object v2

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 29
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    .line 32
    move-result-object v2

    .line 33
    :goto_20
    move-object v3, v2

    .line 34
    if-nez v3, :cond_35

    .line 36
    const-string v2, ":( fail to lock canvas."

    .line 38
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_28} :catch_56
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_28} :catch_48
    .catchall {:try_start_d .. :try_end_28} :catchall_46

    .line 41
    if-eqz v3, :cond_34

    .line 43
    :try_start_2a
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 45
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_30

    .line 48
    goto :goto_34

    .line 49
    :catch_30
    move-exception v2

    .line 50
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_34
    :goto_34
    return-void

    .line 54
    :cond_35
    const/4 v2, 0x0

    .line 55
    :try_start_36
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 57
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 62
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_56
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_40} :catch_48
    .catchall {:try_start_36 .. :try_end_40} :catchall_46

    .line 65
    :try_start_40
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 67
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_64

    .line 70
    goto :goto_68

    .line 71
    :catchall_46
    move-exception v2

    .line 72
    goto :goto_6e

    .line 73
    :catch_48
    move-exception v2

    .line 74
    :try_start_49
    const-string v4, "render oom error."

    .line 76
    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    .line 79
    if-eqz v3, :cond_68

    .line 81
    :try_start_50
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 83
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_64

    .line 86
    goto :goto_68

    .line 87
    :catch_56
    move-exception v2

    .line 88
    :try_start_57
    const-string v4, "render exception."

    .line 90
    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_46

    .line 93
    if-eqz v3, :cond_68

    .line 95
    :try_start_5e
    iget-object v2, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 97
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_64

    .line 100
    goto :goto_68

    .line 101
    :catch_64
    move-exception v2

    .line 102
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 107
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->doneRender()V

    .line 110
    goto :goto_7b

    .line 111
    :goto_6e
    if-eqz v3, :cond_7a

    .line 113
    :try_start_70
    iget-object v4, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 115
    invoke-interface {v4, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_76

    .line 118
    goto :goto_7a

    .line 119
    :catch_76
    move-exception v3

    .line 120
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :cond_7a
    :goto_7a
    throw v2

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method

.method public doneRender()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->doneRender()V

    .line 8
    :cond_7
    return-void
.end method

.method public finalize()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/component/MamlSurface;->finish()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ne v0, v1, :cond_f

    .line 7
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_getInstance_with_engine(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/SurfaceControl;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3
    return-object v0
.end method

.method public getVariables()Lcom/miui/maml/data/Variables;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public isIsSuperWallpaper()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlSurface;->mIsSuperWallpaper:Z

    .line 3
    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    const-string v0, "MamlSurface"

    .line 3
    const-string v1, "onDestroy"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/component/MamlSurface;->finish()V

    .line 11
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    const-string v0, "MamlSurface"

    .line 3
    const-string v1, "onPause"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 15
    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    const-string v0, "MamlSurface"

    .line 3
    const-string v1, "onResume"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 15
    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public requestUpdate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 8
    :cond_7
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz p1, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    .line 9
    :cond_8
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setConfig(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/component/MamlSurface$OnExternCommandListener;)V
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_a

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    move-object p1, v0

    .line 11
    :goto_a
    iput-object p1, p0, Lcom/miui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlSurface;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    .line 8
    :cond_7
    return-void
.end method
