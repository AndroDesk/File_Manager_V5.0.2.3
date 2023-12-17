.class public Lcom/miui/maml/ScreenElementRoot;
.super Lcom/miui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lcom/miui/maml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;,
        Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;,
        Lcom/miui/maml/ScreenElementRoot$ExtraResource;,
        Lcom/miui/maml/ScreenElementRoot$InnerGroup;,
        Lcom/miui/maml/ScreenElementRoot$FramerateHelper;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field public static final CAPABILITY_ALL:I = -0x1

.field public static final CAPABILITY_CREATE_OBJ:I = 0x4

.field public static final CAPABILITY_VAR_PERSISTENCE:I = 0x2

.field public static final CAPABILITY_WEBSERVICE:I = 0x1

.field private static final DARK_MODE_COLOR:I = 0x19000000

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final EXTERNAL_COMMANDS_TAG_NAME:Ljava/lang/String; = "ExternalCommands"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final MAML_INTERNAL_VERSION:I = 0x6

.field private static final MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final RAW_DENSITY:Ljava/lang/String; = "__raw_density"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final SCALE_FACTOR:Ljava/lang/String; = "__scale_factor"

.field private static final THEMEMANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"

.field private static final VAR_MAML_VERSION:Ljava/lang/String; = "__maml_version"


# instance fields
.field public DEFAULT_FRAME_RATE:F

.field private mAccessibleElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowScreenRotation:Z

.field private mAnimationItems:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation$AnimationItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAutoDarkenWallpaper:Z

.field private mBlurWindow:Z

.field private mCacheDir:Ljava/lang/String;

.field private mCapability:I

.field private mCheckPoint:J

.field private mClearCanvas:Z

.field private mConfig:Lcom/miui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field public mContext:Lcom/miui/maml/ScreenContext;

.field public mController:Lcom/miui/maml/RendererController;

.field private mDarkWallpaperMode:Z

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field private mElements:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/elements/ScreenElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

.field private mFinished:Z

.field private mFontScale:F

.field public mFrameRate:F

.field private mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

.field private mHoverMatrix:Landroid/graphics/Matrix;

.field public mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

.field private mKeepResource:Z

.field private mLoaded:Z

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field private mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMamlSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

.field private mNeedReset:Z

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field public mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private mRendererControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mRootTag:Ljava/lang/String;

.field private mSaveConfigOnlyInPause:Z

.field private mSaveConfigViaProvider:Z

.field private mScale:F

.field private mScaleByDensity:Z

.field private mSelfRender:Z

.field public mShowDebugLayout:Z

.field private mShowFramerate:Z

.field private mSoundManager:Lcom/miui/maml/SoundManager;

.field private mStylesManager:Lcom/miui/maml/StylesManager;

.field private mSupportAccessibilityService:Z

.field private mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mTargetDensity:I

.field public mTargetScreenHeight:I

.field public mTargetScreenWidth:I

.field private mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchX:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchY:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchable:Z

.field private mTransparentSurface:Z

.field private mUseCustomizedDarkModeWallpaper:Z

.field private mUseHardwareCanvas:Z

.field public mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

.field private mVersion:I

.field private mViewManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/util/MamlViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenContext;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 5
    const/high16 v0, 0x41f00000  # 30.0f

    .line 7
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    .line 26
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 31
    new-instance v1, Landroid/graphics/Matrix;

    .line 33
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance v1, Landroid/util/ArrayMap;

    .line 40
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 45
    new-instance v1, Landroid/util/ArrayMap;

    .line 47
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 52
    new-instance v1, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 54
    invoke-direct {v1}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 66
    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 76
    iput-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 78
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 80
    new-instance p1, Lcom/miui/maml/data/VariableUpdaterManager;

    .line 82
    invoke-direct {p1, p0}, Lcom/miui/maml/data/VariableUpdaterManager;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 85
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 87
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 89
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 92
    move-result-object v1

    .line 93
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 95
    const-string v2, "touch_x"

    .line 97
    invoke-direct {p1, v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 100
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchX:Lcom/miui/maml/data/IndexedVariable;

    .line 102
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 104
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 107
    move-result-object v1

    .line 108
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 110
    const-string v2, "touch_y"

    .line 112
    invoke-direct {p1, v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 115
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchY:Lcom/miui/maml/data/IndexedVariable;

    .line 117
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 119
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 122
    move-result-object v1

    .line 123
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 125
    const-string v2, "touch_begin_x"

    .line 127
    invoke-direct {p1, v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 130
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

    .line 132
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 134
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 137
    move-result-object v1

    .line 138
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 140
    const-string v2, "touch_begin_y"

    .line 142
    invoke-direct {p1, v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 145
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

    .line 147
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 149
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 152
    move-result-object v1

    .line 153
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 155
    const-string v2, "touch_begin_time"

    .line 157
    invoke-direct {p1, v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 160
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

    .line 162
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 164
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 167
    move-result-object v1

    .line 168
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 170
    const-string v2, "intercept_sys_touch"

    .line 172
    invoke-direct {p1, v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 175
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

    .line 177
    new-instance p1, Lcom/miui/maml/SoundManager;

    .line 179
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 181
    invoke-direct {p1, v0}, Lcom/miui/maml/SoundManager;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 184
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    .line 186
    new-instance p1, Lcom/miui/maml/SystemCommandListener;

    .line 188
    invoke-direct {p1, p0}, Lcom/miui/maml/SystemCommandListener;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 191
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 193
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 3
    return-object p0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    new-instance v0, Lcom/miui/maml/util/ConfigFile;

    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 3
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 5
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p1}, Lcom/miui/maml/ResourceManager;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V

    .line 7
    :cond_24
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {p1}, Lcom/miui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_2e
    :cond_2e
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 8
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v2, "string"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 9
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_2e

    .line 10
    :cond_50
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v2, "number"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 11
    :try_start_5a
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 12
    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-static {v0, v3, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_69} :catch_2e

    goto :goto_2e

    .line 13
    :cond_6a
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {p1}, Lcom/miui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/Task;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    const-string v4, ".name"

    .line 15
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    const-string v4, ".package"

    .line 18
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v3, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    const-string v4, ".class"

    .line 21
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object v0, v0, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_74

    :cond_c3
    return-void
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1f

    .line 12
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 18
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_5

    .line 32
    :cond_1f
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    const-string v0, "useVariableUpdater"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_12

    .line 13
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 21
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    .line 24
    :goto_17
    new-instance p1, Lcom/miui/maml/data/DarkModeVariableUpdater;

    .line 26
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 28
    invoke-direct {p1, v0}, Lcom/miui/maml/data/DarkModeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 31
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 33
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 36
    return-void
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .registers 10

    .line 1
    const-string v0, "scaleByDensity"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_12

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 19
    :cond_12
    const-string v0, "defaultScreenWidth"

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 28
    if-nez v0, :cond_25

    .line 30
    const-string v0, "screenWidth"

    .line 32
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 38
    :cond_25
    const-string v0, "defaultResourceDensity"

    .line 40
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 46
    if-nez v0, :cond_37

    .line 48
    const-string v0, "resDensity"

    .line 50
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 56
    :cond_37
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 58
    invoke-static {v0}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 64
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 66
    const/16 v3, 0x1e0

    .line 68
    const/16 v4, 0xf0

    .line 70
    if-nez v2, :cond_4e

    .line 72
    if-nez v0, :cond_4e

    .line 74
    iput v3, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 76
    iput v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 78
    goto :goto_5b

    .line 79
    :cond_4e
    if-nez v0, :cond_55

    .line 81
    mul-int/2addr v2, v4

    .line 82
    div-int/2addr v2, v3

    .line 83
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 85
    goto :goto_5b

    .line 86
    :cond_55
    if-nez v2, :cond_5b

    .line 88
    mul-int/2addr v0, v3

    .line 89
    div-int/2addr v0, v4

    .line 90
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 92
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 94
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 96
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 98
    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->setDefaultResourceDensity(I)V

    .line 101
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 103
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 105
    const-string v2, "window"

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/view/WindowManager;

    .line 113
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 116
    move-result-object v0

    .line 117
    new-instance v2, Landroid/graphics/Point;

    .line 119
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 122
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 125
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 128
    move-result v5

    .line 129
    const/4 v6, 0x1

    .line 130
    if-eq v5, v6, :cond_88

    .line 132
    const/4 v7, 0x3

    .line 133
    if-ne v5, v7, :cond_87

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    move v6, v1

    .line 137
    :cond_88
    :goto_88
    if-eqz v6, :cond_8d

    .line 139
    iget v5, v2, Landroid/graphics/Point;->y:I

    .line 141
    goto :goto_8f

    .line 142
    :cond_8d
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 144
    :goto_8f
    iput v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 146
    if-eqz v6, :cond_96

    .line 148
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 150
    goto :goto_98

    .line 151
    :cond_96
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 153
    :goto_98
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 155
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 157
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 165
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 167
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 169
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 178
    move-result-object v0

    .line 179
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 181
    and-int/lit8 v0, v0, 0xf

    .line 183
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 185
    if-nez v2, :cond_be

    .line 187
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 189
    mul-int/2addr v2, v4

    .line 190
    div-int/2addr v2, v3

    .line 191
    :cond_be
    new-instance v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    .line 193
    invoke-direct {v3, p1, v2}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;-><init>(Lorg/w3c/dom/Element;I)V

    .line 196
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 198
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 200
    invoke-virtual {v3, v2, v4, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findResource(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    .line 203
    move-result-object v2

    .line 204
    const-string v4, "findResource: "

    .line 206
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->toString()Ljava/lang/String;

    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v4

    .line 221
    const-string v5, "ScreenElementRoot"

    .line 223
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v4, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 228
    invoke-static {v4}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 231
    move-result v4

    .line 232
    int-to-float v4, v4

    .line 233
    iget v6, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 235
    div-float/2addr v4, v6

    .line 236
    float-to-int v4, v4

    .line 237
    iget-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 239
    iget-object v6, v6, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 241
    iget-object v2, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 243
    invoke-virtual {v6, v2, v4}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 246
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 248
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 250
    invoke-virtual {v3, v2, v4, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findScale(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 253
    move-result-object v0

    .line 254
    const-string v2, "findScale: "

    .line 256
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object v2

    .line 271
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 276
    const/high16 v3, 0x3f800000  # 1.0f

    .line 278
    const/4 v4, 0x0

    .line 279
    if-eqz v2, :cond_13a

    .line 281
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 283
    invoke-static {v2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 286
    move-result v2

    .line 287
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 289
    iget v6, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 291
    cmpg-float v4, v6, v4

    .line 293
    if-gtz v4, :cond_12e

    .line 295
    int-to-float v0, v2

    .line 296
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 298
    int-to-float v2, v2

    .line 299
    div-float/2addr v0, v2

    .line 300
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 302
    goto :goto_159

    .line 303
    :cond_12e
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 305
    int-to-float v2, v2

    .line 306
    mul-float/2addr v2, v3

    .line 307
    iget v0, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 309
    int-to-float v0, v0

    .line 310
    div-float/2addr v2, v0

    .line 311
    mul-float/2addr v2, v6

    .line 312
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 314
    goto :goto_159

    .line 315
    :cond_13a
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 317
    int-to-float v6, v2

    .line 318
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 320
    int-to-float v7, v7

    .line 321
    div-float/2addr v6, v7

    .line 322
    iput v6, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 324
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 326
    int-to-float v7, v7

    .line 327
    mul-float/2addr v7, v6

    .line 328
    float-to-int v6, v7

    .line 329
    iput v6, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 331
    iget v6, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 333
    cmpl-float v4, v6, v4

    .line 335
    if-lez v4, :cond_159

    .line 337
    int-to-float v2, v2

    .line 338
    mul-float/2addr v2, v3

    .line 339
    iget v0, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 341
    int-to-float v0, v0

    .line 342
    div-float/2addr v2, v0

    .line 343
    mul-float/2addr v2, v6

    .line 344
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 346
    :cond_159
    :goto_159
    const-string v0, "set scale: "

    .line 348
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    move-result-object v0

    .line 352
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    move-result-object v0

    .line 361
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 366
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 368
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 370
    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->setTargetDensity(I)V

    .line 373
    const-string v0, "width"

    .line 375
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 378
    move-result v0

    .line 379
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    .line 381
    const-string v0, "height"

    .line 383
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 386
    move-result p1

    .line 387
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    .line 389
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    .line 391
    int-to-float p1, p1

    .line 392
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 394
    mul-float/2addr p1, v0

    .line 395
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 398
    move-result p1

    .line 399
    int-to-float p1, p1

    .line 400
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mWidth:F

    .line 402
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    .line 404
    int-to-float p1, p1

    .line 405
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 407
    mul-float/2addr p1, v0

    .line 408
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 411
    move-result p1

    .line 412
    int-to-float p1, p1

    .line 413
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHeight:F

    .line 415
    return-void
.end method

.method private traverseElements()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$2;

    .line 8
    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$2;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 14
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 9
    return-void
.end method

.method public addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 10
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public addAccessibleList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1f

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 22
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 31
    goto :goto_9

    .line 32
    :cond_1f
    return-void
.end method

.method public addAnimationItem(Ljava/lang/String;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_14

    .line 9
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    goto :goto_21

    .line 21
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_21
    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public addPreTicker(Lcom/miui/maml/elements/ITicker;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public allowScreenRotation()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 3
    return v0
.end method

.method public attachToVsync()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 3
    if-eqz v0, :cond_20

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    if-ge v1, v0, :cond_1f

    .line 14
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 26
    invoke-virtual {v2, v3}, Lcom/miui/maml/RenderVsyncUpdater;->addRendererController(Lcom/miui/maml/RendererController;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    return-void

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    .line 35
    const-string v1, "VsyncUpdater or controller is null, MUST load before attaching"

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method public createFramerateToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public detachFromVsync()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 3
    if-eqz v0, :cond_20

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    if-ge v1, v0, :cond_1f

    .line 14
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 26
    invoke-virtual {v2, v3}, Lcom/miui/maml/RenderVsyncUpdater;->removeRendererController(Lcom/miui/maml/RendererController;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    return-void

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    .line 35
    const-string v1, "VsyncUpdater or controller is null, MUST load before detaching"

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 3
    if-nez v0, :cond_50

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_50

    .line 10
    :cond_9
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 12
    if-eqz v0, :cond_13

    .line 14
    const/4 v0, 0x0

    .line 15
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 22
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->render(Landroid/graphics/Canvas;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_18} :catch_19

    .line 25
    goto :goto_2b

    .line 26
    :catch_19
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "ScreenElementRoot"

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_2b

    .line 40
    :catch_27
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    :goto_2b
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mShowFramerate:Z

    .line 46
    if-eqz v0, :cond_34

    .line 48
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 50
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 53
    :cond_34
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 57
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 59
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 61
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 64
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDarkWallpaperMode:Z

    .line 66
    if-eqz v0, :cond_50

    .line 68
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    .line 70
    if-nez v0, :cond_50

    .line 72
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    .line 74
    if-eqz v0, :cond_50

    .line 76
    const/high16 v0, 0x19000000

    .line 78
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 81
    :cond_50
    :goto_50
    return-void
.end method

.method public doTick(J)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 3
    if-nez v0, :cond_81

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 7
    if-nez v0, :cond_a

    .line 9
    goto/16 :goto_81

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->tick()V

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 23
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    :goto_1e
    if-ge v2, v0, :cond_2e

    .line 33
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/miui/maml/elements/ITicker;

    .line 41
    invoke-interface {v3, p1, p2}, Lcom/miui/maml/elements/ITicker;->tick(J)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_1e

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->tick(J)V

    .line 52
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

    .line 54
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 57
    move-result-wide v2

    .line 58
    const-wide/16 v4, 0x0

    .line 60
    cmpl-double v0, v2, v4

    .line 62
    const/4 v2, 0x1

    .line 63
    if-lez v0, :cond_42

    .line 65
    move v0, v2

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v0, v1

    .line 68
    :goto_43
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 70
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 72
    const-wide/16 v3, 0x0

    .line 74
    if-nez v0, :cond_5a

    .line 76
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 78
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 80
    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 82
    const-string v6, "frame_rate"

    .line 84
    invoke-direct {v0, v6, v5, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 87
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 89
    iput-wide v3, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 91
    :cond_5a
    iget-wide v5, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 93
    cmp-long v0, v5, v3

    .line 95
    if-nez v0, :cond_63

    .line 97
    iput-wide p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 99
    goto :goto_81

    .line 100
    :cond_63
    sub-long v2, p1, v5

    .line 102
    const-wide/16 v4, 0x3e8

    .line 104
    cmp-long v0, v2, v4

    .line 106
    if-ltz v0, :cond_81

    .line 108
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 110
    mul-int/lit16 v0, v0, 0x3e8

    .line 112
    int-to-long v4, v0

    .line 113
    div-long/2addr v4, v2

    .line 114
    long-to-int v0, v4

    .line 115
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 117
    invoke-virtual {v2, v0}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 120
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 122
    int-to-double v3, v0

    .line 123
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 126
    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 128
    iput-wide p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 130
    :cond_81
    :goto_81
    return-void
.end method

.method public doneRender()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 6
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    return-object p1
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .registers 3

    .line 1
    const-string v0, "__root"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object p0

    .line 10
    :cond_9
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->getElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    .line 10
    move-result-object p1

    .line 11
    :goto_a
    return-object p1
.end method

.method public finish()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 3
    if-nez v0, :cond_63

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_63

    .line 10
    :cond_9
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 13
    const-string v0, "ScreenElementRoot"

    .line 15
    const-string v1, "finish"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 22
    const-string v2, "preFinish"

    .line 24
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 29
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 32
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 34
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 39
    if-eqz v0, :cond_37

    .line 41
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    .line 43
    if-nez v1, :cond_37

    .line 45
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 47
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    .line 56
    :cond_37
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 58
    if-eqz v0, :cond_3e

    .line 60
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->finish()V

    .line 63
    :cond_3e
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 65
    if-eqz v0, :cond_45

    .line 67
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 70
    :cond_45
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 72
    if-eqz v0, :cond_4c

    .line 74
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->finish()V

    .line 77
    :cond_4c
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    .line 79
    invoke-virtual {v0}, Lcom/miui/maml/SoundManager;->release()V

    .line 82
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 84
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 86
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 88
    invoke-virtual {v0, v1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 91
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 94
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 97
    invoke-static {}, Lcom/miui/maml/data/Expression$FunctionExpression;->resetFunctions()V

    .line 100
    :cond_63
    :goto_63
    return-void
.end method

.method public getAccessibleElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    return-object p1
.end method

.method public getCacheDir()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCapability(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_7

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    return p1
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 3
    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 3
    return v0
.end method

.method public getElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 9
    if-eqz p1, :cond_11

    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/miui/maml/elements/ScreenElement;

    .line 17
    return-object p1

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public final getFontScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    .line 3
    return v0
.end method

.method public getHeight()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHeight:F

    .line 3
    return v0
.end method

.method public getHoverElement()Lcom/miui/maml/elements/AnimatedScreenElement;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 3
    return-object v0
.end method

.method public getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 3
    return-object v0
.end method

.method public getMamlSurface()Lcom/miui/maml/component/MamlSurface;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/miui/maml/component/MamlSurface;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    return-object p1
.end method

.method public getRendererController()Lcom/miui/maml/RendererController;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 3
    return-object v0
.end method

.method public getResourceDensity()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 3
    return v0
.end method

.method public getRootTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final getScale()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-nez v1, :cond_10

    .line 8
    const-string v0, "ScreenElementRoot"

    .line 10
    const-string v1, "scale not initialized!"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/high16 v0, 0x3f800000  # 1.0f

    .line 17
    :cond_10
    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 3
    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 3
    return v0
.end method

.method public getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mStylesManager:Lcom/miui/maml/StylesManager;

    .line 11
    if-eqz v0, :cond_10

    .line 13
    invoke-virtual {v0, p1}, Lcom/miui/maml/StylesManager;->getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;

    .line 16
    move-result-object v1

    .line 17
    :cond_10
    return-object v1
.end method

.method public getSystemFrameRate()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 3
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 5
    const-string v1, "window"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/WindowManager;

    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public getTargetDensity()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 3
    return v0
.end method

.method public getViewManager()Lcom/miui/maml/util/MamlViewManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/miui/maml/util/MamlViewManager;

    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getWidth()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mWidth:F

    .line 3
    return v0
.end method

.method public haptic(I)V
    .registers 2

    return-void
.end method

.method public init()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 8
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 10
    const-string v1, "__objRoot"

    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 17
    const-string v2, "__objContext"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 25
    const-string v1, "ScreenElementRoot"

    .line 27
    const-string v2, "init"

    .line 29
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 34
    invoke-virtual {p0, v3}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 37
    const/4 v3, -0x1

    .line 38
    iput v3, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 40
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->isShowDebugLayout()Z

    .line 43
    move-result v3

    .line 44
    iput-boolean v3, p0, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 46
    const/4 v3, 0x0

    .line 47
    iput-boolean v3, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 49
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 51
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 53
    invoke-virtual {v4}, Lcom/miui/maml/ResourceManager;->init()V

    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 59
    move-result-object v4

    .line 60
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 69
    move-result-object v4

    .line 70
    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 72
    iput v4, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    .line 74
    float-to-double v4, v4

    .line 75
    const-string v6, "__fontScale"

    .line 77
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 80
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 82
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 91
    move-result-object v4

    .line 92
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 94
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 96
    iget-object v6, v5, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 98
    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 100
    invoke-static {v4, v6, v5}, Lcom/miui/maml/LanguageHelper;->load(Ljava/util/Locale;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/data/Variables;)Z

    .line 103
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 105
    int-to-double v4, v4

    .line 106
    const-string v6, "raw_screen_width"

    .line 108
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 111
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 113
    int-to-double v4, v4

    .line 114
    const-string v6, "raw_screen_height"

    .line 116
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 119
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 121
    int-to-float v4, v4

    .line 122
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 124
    div-float/2addr v4, v5

    .line 125
    float-to-double v4, v4

    .line 126
    const-string v6, "screen_width"

    .line 128
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 131
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 133
    int-to-float v4, v4

    .line 134
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 136
    div-float/2addr v4, v5

    .line 137
    float-to-double v4, v4

    .line 138
    const-string v6, "screen_height"

    .line 140
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 143
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    .line 145
    const-string v5, "view_width"

    .line 147
    if-lez v4, :cond_98

    .line 149
    int-to-double v6, v4

    .line 150
    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 153
    :cond_98
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    .line 155
    const-string v6, "view_height"

    .line 157
    if-lez v4, :cond_a2

    .line 159
    int-to-double v7, v4

    .line 160
    invoke-virtual {v0, v6, v7, v8}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 163
    :cond_a2
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 165
    int-to-float v4, v4

    .line 166
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 168
    div-float/2addr v4, v7

    .line 169
    float-to-double v7, v4

    .line 170
    invoke-virtual {v0, v5, v7, v8}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 173
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 175
    int-to-float v4, v4

    .line 176
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 178
    div-float/2addr v4, v5

    .line 179
    float-to-double v4, v4

    .line 180
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 183
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 185
    int-to-double v4, v4

    .line 186
    const-string v6, "__raw_density"

    .line 188
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 191
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 193
    float-to-double v4, v4

    .line 194
    const-string v6, "__scale_factor"

    .line 196
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 199
    const-wide/high16 v4, 0x4018000000000000L  # 6.0

    .line 201
    const-string v6, "__maml_version"

    .line 203
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 206
    :try_start_cd
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 208
    if-eqz v4, :cond_ec

    .line 210
    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 212
    if-eqz v4, :cond_ec

    .line 214
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 217
    move-result-object v4

    .line 218
    if-eqz v4, :cond_ec

    .line 220
    const-string v5, "com.android.thememanager"

    .line 222
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 225
    move-result-object v4

    .line 226
    if-eqz v4, :cond_ec

    .line 228
    iget v1, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e5} :catch_e7

    .line 230
    move v3, v1

    .line 231
    goto :goto_ec

    .line 232
    :catch_e7
    const-string v4, "thememanager not found"

    .line 234
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_ec
    :goto_ec
    int-to-double v3, v3

    .line 238
    const-string v1, "__thememanager_version"

    .line 240
    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 243
    const-string v1, "ro.miui.ui.version.name"

    .line 245
    invoke-static {v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    move-result-object v1

    .line 249
    const-string v3, "__miui_version_name"

    .line 251
    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    const-string v1, "ro.miui.ui.version.code"

    .line 256
    invoke-static {v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    move-result-object v1

    .line 260
    const-string v3, "__miui_version_code"

    .line 262
    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 267
    const-string v3, "__android_version"

    .line 269
    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 274
    const-string v3, "__system_version"

    .line 276
    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig()V

    .line 282
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 284
    if-eqz v0, :cond_120

    .line 286
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->init()V

    .line 289
    :cond_120
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 291
    if-eqz v0, :cond_127

    .line 293
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->init()V

    .line 296
    :cond_127
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 298
    if-eqz v0, :cond_12e

    .line 300
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 303
    :cond_12e
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 305
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 310
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 313
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 315
    const-string v1, "postInit"

    .line 317
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 322
    const/4 v1, 0x0

    .line 323
    iput-object v1, v0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 325
    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 328
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 330
    invoke-virtual {v1, v0}, Lcom/miui/maml/RendererController;->setNeedReset(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 336
    return-void
.end method

.method public isMamlBlurWindow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    .line 3
    return v0
.end method

.method public isSupportAccessibilityService()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    .line 3
    return v0
.end method

.method public isTransparentSurface()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTransparentSurface:Z

    .line 3
    return v0
.end method

.method public isUseHardwareCanvas()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseHardwareCanvas:Z

    .line 3
    return v0
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 8
    const-string v1, "ScreenElementRoot"

    .line 10
    const-string v2, " "

    .line 12
    if-eqz v0, :cond_38

    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 20
    if-eqz v0, :cond_38

    .line 22
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v3, "issueExternCommand: "

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 59
    if-eqz v0, :cond_67

    .line 61
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 67
    if-eqz v0, :cond_67

    .line 69
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v3, "issueExternCommand to MamlView: "

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_67
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 106
    if-eqz v0, :cond_96

    .line 108
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 114
    if-eqz v0, :cond_96

    .line 116
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v3, "issueExternCommand to MamlSurface: "

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_96
    return-void
.end method

.method public final load()Z
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v1

    .line 8
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 10
    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 12
    invoke-virtual {v3}, Lcom/miui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    .line 15
    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_119

    .line 16
    const-string v4, "ScreenElementRoot"

    .line 18
    if-nez v3, :cond_19

    .line 20
    :try_start_13
    const-string v1, "load error, manifest root is null"

    .line 22
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v0

    .line 26
    :cond_19
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    iput-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    .line 32
    invoke-direct {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 35
    invoke-direct {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 38
    invoke-direct {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 41
    const-string v5, "VariableBinders"

    .line 43
    invoke-static {v3, v5}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 46
    move-result-object v5

    .line 47
    new-instance v6, Lcom/miui/maml/data/VariableBinderManager;

    .line 49
    invoke-direct {v6, v5, p0}, Lcom/miui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 52
    iput-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 54
    const-string v5, "ExternalCommands"

    .line 56
    invoke-static {v3, v5}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_44

    .line 62
    new-instance v6, Lcom/miui/maml/CommandTriggers;

    .line 64
    invoke-direct {v6, v5, p0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 67
    iput-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 69
    :cond_44
    const-string v5, "Styles"

    .line 71
    invoke-static {v3, v5}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 74
    move-result-object v5

    .line 75
    if-eqz v5, :cond_53

    .line 77
    new-instance v6, Lcom/miui/maml/StylesManager;

    .line 79
    invoke-direct {v6, v5}, Lcom/miui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V

    .line 82
    iput-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mStylesManager:Lcom/miui/maml/StylesManager;

    .line 84
    :cond_53
    const-string v5, "selfRender"

    .line 86
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 93
    move-result v5

    .line 94
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mSelfRender:Z

    .line 96
    const-string v5, "transparentSurface"

    .line 98
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 105
    move-result v5

    .line 106
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTransparentSurface:Z

    .line 108
    const-string v5, "frameRate"

    .line 110
    iget v6, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 112
    invoke-static {v3, v5, v6}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 115
    move-result v5

    .line 116
    iput v5, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 118
    const-string v5, "customizedDarkModeWallpaper"

    .line 120
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 127
    move-result v5

    .line 128
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    .line 130
    const-string v5, "clearCanvas"

    .line 132
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v5

    .line 136
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 139
    move-result v5

    .line 140
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 142
    const-string v5, "supportAccessibityService"

    .line 144
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v5

    .line 148
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 151
    move-result v5

    .line 152
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    .line 154
    const-string v5, "allowScreenRotation"

    .line 156
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v5

    .line 160
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 163
    move-result v5

    .line 164
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 166
    const-string v5, "blurWindow"

    .line 168
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v5

    .line 172
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 175
    move-result v5

    .line 176
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    .line 178
    const-string v5, "useHardwareCanvas"

    .line 180
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v5

    .line 184
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 187
    move-result v5

    .line 188
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mUseHardwareCanvas:Z

    .line 190
    new-instance v5, Lcom/miui/maml/RendererController;

    .line 192
    invoke-direct {v5}, Lcom/miui/maml/RendererController;-><init>()V

    .line 195
    iput-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 197
    iget-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mSelfRender:Z

    .line 199
    invoke-virtual {v5, v6}, Lcom/miui/maml/RendererController;->setSelfRender(Z)V

    .line 202
    new-instance v5, Lcom/miui/maml/ScreenElementRoot$InnerGroup;

    .line 204
    invoke-direct {v5, v3, p0}, Lcom/miui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 207
    iput-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 209
    invoke-virtual {v5}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 216
    move-result v5

    .line 217
    if-gtz v5, :cond_e0

    .line 219
    const-string v1, "load error, no element loaded"

    .line 221
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v0

    .line 225
    :cond_e0
    const-string v5, "version"

    .line 227
    const/4 v6, 0x1

    .line 228
    invoke-static {v3, v5, v6}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 231
    move-result v5

    .line 232
    iput v5, p0, Lcom/miui/maml/ScreenElementRoot;->mVersion:I

    .line 234
    invoke-virtual {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    .line 237
    move-result v3

    .line 238
    if-nez v3, :cond_f5

    .line 240
    const-string v1, "load error, onLoad fail"

    .line 242
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v0

    .line 246
    :cond_f5
    invoke-direct {p0}, Lcom/miui/maml/ScreenElementRoot;->traverseElements()V

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    const-string v5, "load finished, spent "

    .line 256
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 262
    move-result-wide v7

    .line 263
    sub-long/2addr v7, v1

    .line 264
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " ms"

    .line 269
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v1

    .line 276
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_118} :catch_119

    .line 281
    return v6

    .line 282
    :catch_119
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    return v0
.end method

.method public loadConfig()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 3
    return v0
.end method

.method public onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/data/DateTimeVariableUpdater;

    .line 3
    invoke-direct {v0, p1}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 9
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$3;

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/ScreenElementRoot$3;-><init>(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->postRunnable(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 16
    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 8
    const-string p1, "orientationChange"

    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 16
    :cond_f
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    const-string v0, "ScreenElementRoot"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 6
    if-nez v2, :cond_16

    .line 8
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 10
    if-eqz v2, :cond_16

    .line 12
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 14
    if-nez v2, :cond_10

    .line 16
    goto :goto_16

    .line 17
    :cond_10
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 19
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    .line 22
    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_16} :catch_17

    .line 23
    :cond_16
    :goto_16
    return v1

    .line 24
    :catch_17
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto :goto_2e

    .line 36
    :catch_23
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_2e
    return v1
.end method

.method public onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 3
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    .line 5
    if-eqz p1, :cond_d

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    :goto_e
    if-eqz p1, :cond_13

    .line 17
    invoke-interface {p1, p2}, Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;->onHoverChange(Ljava/lang/String;)V

    .line 20
    :cond_13
    return-void
.end method

.method public onLoad(Lorg/w3c/dom/Element;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    const-string v0, "ScreenElementRoot"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 6
    if-nez v2, :cond_a8

    .line 8
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 10
    if-eqz v2, :cond_a8

    .line 12
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 14
    if-nez v2, :cond_11

    .line 16
    goto/16 :goto_a8

    .line 18
    :cond_11
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_5c

    .line 23
    invoke-virtual {v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 26
    move-result v2

    .line 27
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 29
    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 32
    move-result v4

    .line 33
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 35
    invoke-virtual {v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 38
    move-result v5

    .line 39
    const/high16 v6, 0x40000000  # 2.0f

    .line 41
    div-float/2addr v2, v6

    .line 42
    add-float/2addr v2, v5

    .line 43
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 45
    invoke-virtual {v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 48
    move-result v5

    .line 49
    div-float/2addr v4, v6

    .line 50
    add-float/2addr v4, v5

    .line 51
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 56
    move-result v6

    .line 57
    sub-float/2addr v2, v6

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 61
    move-result v6

    .line 62
    sub-float/2addr v4, v6

    .line 63
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 66
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 71
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 73
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 79
    move-result v2

    .line 80
    if-eq v2, v3, :cond_58

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 85
    move-result p1

    .line 86
    const/4 v2, 0x3

    .line 87
    if-ne p1, v2, :cond_5b

    .line 89
    :cond_58
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 92
    :cond_5b
    return v3

    .line 93
    :cond_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 96
    move-result v2

    .line 97
    float-to-double v4, v2

    .line 98
    invoke-virtual {p0, v4, v5}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 101
    move-result-wide v4

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 105
    move-result v2

    .line 106
    float-to-double v6, v2

    .line 107
    invoke-virtual {p0, v6, v7}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 110
    move-result-wide v6

    .line 111
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchX:Lcom/miui/maml/data/IndexedVariable;

    .line 113
    invoke-virtual {v2, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 116
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchY:Lcom/miui/maml/data/IndexedVariable;

    .line 118
    invoke-virtual {v2, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_84

    .line 127
    if-eq v2, v3, :cond_81

    .line 129
    goto :goto_9a

    .line 130
    :cond_81
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 132
    goto :goto_9a

    .line 133
    :cond_84
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

    .line 135
    invoke-virtual {v2, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 138
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

    .line 140
    invoke-virtual {v2, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 143
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    move-result-wide v3

    .line 149
    long-to-double v3, v3

    .line 150
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 153
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 155
    :goto_9a
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 157
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_a7

    .line 163
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 165
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->requestUpdate()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a7} :catch_b5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_a7} :catch_a9

    .line 168
    :cond_a7
    return p1

    .line 169
    :cond_a8
    :goto_a8
    return v1

    .line 170
    :catch_a9
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_c0

    .line 182
    :catch_b5
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_c0
    return v1
.end method

.method public onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 9
    const-string v0, "ScreenElementRoot"

    .line 11
    const-string v1, "pause"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 18
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 23
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 26
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/SoundManager;->pause()V

    .line 31
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 33
    if-eqz v0, :cond_25

    .line 35
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->pause()V

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 47
    if-eqz v0, :cond_33

    .line 49
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->pause()V

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 54
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 56
    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->pause()V

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 65
    if-eqz v0, :cond_4d

    .line 67
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 69
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    .line 78
    :cond_4d
    return-void
.end method

.method public pauseAnim(J)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->pauseAnim(J)V

    .line 9
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 19

    .line 1
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 7
    move-wide v2, p1

    .line 8
    move-wide v4, p3

    .line 9
    move-wide v6, p5

    .line 10
    move/from16 v8, p7

    .line 12
    move/from16 v9, p8

    .line 14
    invoke-virtual/range {v1 .. v9}, Lcom/miui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    .line 17
    return-void
.end method

.method public playSound(Ljava/lang/String;)I
    .registers 5

    .line 1
    new-instance v0, Lcom/miui/maml/SoundManager$SoundOptions;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/miui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p1

    return p1
.end method

.method public playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I
    .registers 5

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3
    :cond_8
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/SoundManager;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p1

    return p1

    :cond_15
    return v1
.end method

.method public playSound(ILcom/miui/maml/SoundManager$Command;)V
    .registers 4

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/SoundManager;->playSound(ILcom/miui/maml/SoundManager$Command;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenElementRoot"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 3
    if-nez v0, :cond_10

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_10

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_10
    :goto_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .line 10
    :cond_9
    return-void
.end method

.method public putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    return-object p1
.end method

.method public removeAccessibleElement(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    const/high16 v0, -0x80000000

    .line 8
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 11
    return-void
.end method

.method public removeAllAccessibleElements()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_18

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 19
    const/high16 v2, -0x80000000

    .line 21
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 24
    goto :goto_6

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenContext;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public removeElement(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public removePreTicker(Lcom/miui/maml/elements/ITicker;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public requestFrameRateByCommand(F)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 6
    const/4 v0, 0x0

    .line 7
    cmpl-float p1, p1, v0

    .line 9
    if-lez p1, :cond_d

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 14
    :cond_d
    return-void
.end method

.method public requestUpdate()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 14
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 22
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    return-void
.end method

.method public reset(J)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->reset(J)V

    .line 9
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 9
    const-string v0, "ScreenElementRoot"

    .line 11
    const-string v1, "resume"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->isShowDebugLayout()Z

    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 22
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 24
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 29
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 32
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 34
    if-eqz v0, :cond_26

    .line 36
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->resume()V

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    .line 41
    if-eqz v0, :cond_2d

    .line 43
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 48
    if-eqz v0, :cond_34

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->resume()V

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 55
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 57
    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->resume()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->setSyncInterval()V

    .line 63
    return-void
.end method

.method public resumeAnim(J)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->resumeAnim(J)V

    .line 9
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez v0, :cond_c

    const-string p1, "ScreenElementRoot"

    const-string p2, "fail to saveVar, config file is null"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-nez p2, :cond_14

    const-string p2, "null"

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 4
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    :goto_1b
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez v0, :cond_c

    const-string p1, "ScreenElementRoot"

    const-string p2, "fail to saveVar, config file is null"

    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_c
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selfFinish()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->finish()V

    .line 10
    :cond_9
    return-void
.end method

.method public selfInit()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->init()V

    .line 10
    :cond_9
    return-void
.end method

.method public selfPause()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_17

    .line 10
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 18
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->selfPause()V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    return-void
.end method

.method public selfResume()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_17

    .line 10
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 18
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->selfResume()V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    .line 3
    return-void
.end method

.method public setBgColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCapability(IZ)V
    .registers 3

    .line 1
    if-eqz p2, :cond_8

    .line 3
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 5
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 8
    goto :goto_e

    .line 9
    :cond_8
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 15
    :goto_e
    return-void
.end method

.method public setClearCanvas(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    .line 3
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    .line 3
    if-eqz v0, :cond_66

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 7
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 9
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 11
    int-to-double v1, v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "orientation"

    .line 18
    invoke-static {v2, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/Double;)V

    .line 21
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 23
    const/4 v1, 0x1

    .line 24
    const-string v2, "screen_height"

    .line 26
    const-string v3, "screen_width"

    .line 28
    const-string v4, "raw_screen_height"

    .line 30
    const-string v5, "raw_screen_width"

    .line 32
    if-eq p1, v1, :cond_46

    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq p1, v1, :cond_25

    .line 37
    goto :goto_66

    .line 38
    :cond_25
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 40
    int-to-double v6, p1

    .line 41
    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 44
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 46
    int-to-double v5, p1

    .line 47
    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 50
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 52
    int-to-float p1, p1

    .line 53
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 55
    div-float/2addr p1, v1

    .line 56
    float-to-double v4, p1

    .line 57
    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 60
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 62
    int-to-float p1, p1

    .line 63
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 65
    div-float/2addr p1, v1

    .line 66
    float-to-double v3, p1

    .line 67
    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 70
    goto :goto_66

    .line 71
    :cond_46
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 73
    int-to-double v6, p1

    .line 74
    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 77
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 79
    int-to-double v5, p1

    .line 80
    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 83
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 85
    int-to-float p1, p1

    .line 86
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 88
    div-float/2addr p1, v1

    .line 89
    float-to-double v4, p1

    .line 90
    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 93
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 95
    int-to-float p1, p1

    .line 96
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 98
    div-float/2addr p1, v1

    .line 99
    float-to-double v3, p1

    .line 100
    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 103
    :cond_66
    :goto_66
    return-void
.end method

.method public setDarkWallpaperMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mDarkWallpaperMode:Z

    .line 3
    return-void
.end method

.method public setDefaultFramerate(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 3
    return-void
.end method

.method public final setKeepResource(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 3
    return-void
.end method

.method public setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 3
    return-void
.end method

.method public setMamlSurface(Lcom/miui/maml/component/MamlSurface;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public setMamlSurfaceOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
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
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method

.method public setMamlViewOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
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
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
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
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method

.method public setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public setRenderControllerListener(Lcom/miui/maml/RendererController$Listener;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    new-instance v0, Lcom/miui/maml/SingleRootListener;

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/SingleRootListener;-><init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RendererController$IRenderable;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 13
    :cond_c
    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    .line 3
    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    .line 3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public setScaleByDensity(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 3
    return-void
.end method

.method public setSyncInterval()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getSystemFrameRate()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/16 v1, 0x3e8

    .line 10
    div-int/2addr v1, v0

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/16 v1, 0x10

    .line 14
    :goto_d
    const/4 v0, 0x1

    .line 15
    if-ge v1, v0, :cond_11

    .line 17
    move v1, v0

    .line 18
    :cond_11
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lcom/miui/maml/RenderVsyncUpdater;->setSyncInterval(I)V

    .line 25
    return-void
.end method

.method public setTouchable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 3
    return-void
.end method

.method public setViewManager(Lcom/miui/maml/util/MamlViewManager;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public shouldPlaySound()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 6
    return-void
.end method

.method public showFramerate(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mShowFramerate:Z

    .line 3
    return-void
.end method

.method public tick(J)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 3
    if-eqz v0, :cond_19

    .line 5
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$1;

    .line 7
    invoke-direct {v0, p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot$1;-><init>(Lcom/miui/maml/ScreenElementRoot;J)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 13
    const-string v0, "init"

    .line 15
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 21
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 23
    invoke-virtual {v1, v0}, Lcom/miui/maml/RendererController;->setNeedReset(Z)V

    .line 26
    :cond_19
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot;->doTick(J)V

    .line 29
    return-void
.end method

.method public update(J)J
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const-wide v1, 0x7fffffffffffffffL

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_c
    if-ge v3, v0, :cond_2f

    .line 15
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/miui/maml/RendererController;

    .line 23
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_23

    .line 29
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_23

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    invoke-virtual {v4, p1, p2}, Lcom/miui/maml/RendererController;->update(J)J

    .line 39
    move-result-wide v4

    .line 40
    cmp-long v6, v4, v1

    .line 42
    if-gez v6, :cond_2c

    .line 44
    move-wide v1, v4

    .line 45
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_c

    .line 48
    :cond_2f
    return-wide v1
.end method

.method public updateIfNeeded(J)J
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const-wide v1, 0x7fffffffffffffffL

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_c
    if-ge v3, v0, :cond_2f

    .line 15
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/miui/maml/RendererController;

    .line 23
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_23

    .line 29
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_23

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    invoke-virtual {v4, p1, p2}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    .line 39
    move-result-wide v4

    .line 40
    cmp-long v6, v4, v1

    .line 42
    if-gez v6, :cond_2c

    .line 44
    move-wide v1, v4

    .line 45
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_c

    .line 48
    :cond_2f
    return-wide v1
.end method

.method public final version()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVersion:I

    .line 3
    return v0
.end method
