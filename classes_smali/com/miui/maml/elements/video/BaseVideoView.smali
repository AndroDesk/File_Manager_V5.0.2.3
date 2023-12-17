.class public abstract Lcom/miui/maml/elements/video/BaseVideoView;
.super Landroid/view/SurfaceView;
.source "BaseVideoView.java"


# static fields
.field private static final DURATION:Ljava/lang/String; = ".duration"

.field private static final PLAY_STATE:Ljava/lang/String; = ".playState"

.field private static final POSITION:Ljava/lang/String; = ".position"

.field public static final SCALE_MODE_FIT_CROP:I = 0x2

.field public static final SCALE_MODE_FIT_START:I = 0x3

.field public static final SCALE_MODE_FIT_XY:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseVideoView"


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field public mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDataSource:Landroid/media/MediaDataSource;

.field private mDurationVar:Lcom/miui/maml/data/IndexedVariable;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mLooping:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mName:Ljava/lang/String;

.field private mPositionVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field public mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field public mScaleMode:I

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateVar:Lcom/miui/maml/data/IndexedVariable;

.field public mSurface:Landroid/view/Surface;

.field private mTargetState:I

.field public mVideoHeight:I

.field public mVideoWidth:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 13
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 15
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 17
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 19
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$1;

    .line 21
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$1;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 24
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 26
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$2;

    .line 28
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$2;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 31
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 33
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$3;

    .line 35
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$3;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 38
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 40
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$4;

    .line 42
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$4;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 45
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 47
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$5;

    .line 49
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$5;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 52
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 54
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$6;

    .line 56
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$6;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 59
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 61
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$7;

    .line 63
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$7;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 66
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 68
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mContext:Landroid/content/Context;

    .line 70
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 72
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 74
    const-string v0, "audio"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/media/AudioManager;

    .line 82
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 84
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 86
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 88
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateDurationVar(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->openVideo()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/miui/maml/elements/video/BaseVideoView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    .line 3
    return p0
.end method

.method private checkAudioFocus()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 12
    goto :goto_19

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    if-eqz v0, :cond_19

    .line 17
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 21
    const/4 v2, 0x3

    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method private getStateName(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1c

    const-string p1, ""

    return-object p1

    :pswitch_6  #0x5
    const-string p1, "state_playback_completed"

    return-object p1

    :pswitch_9  #0x4
    const-string p1, "state_paused"

    return-object p1

    :pswitch_c  #0x3
    const-string p1, "state_playing"

    return-object p1

    :pswitch_f  #0x2
    const-string p1, "state_prepared"

    return-object p1

    :pswitch_12  #0x1
    const-string p1, "state_preparing"

    return-object p1

    :pswitch_15  #0x0
    const-string p1, "state_idle"

    return-object p1

    :pswitch_18  #0xffffffff
    const-string p1, "state_error"

    return-object p1

    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_18  #ffffffff
        :pswitch_15  #00000000
        :pswitch_12  #00000001
        :pswitch_f  #00000002
        :pswitch_c  #00000003
        :pswitch_9  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method

.method private initIndexedVariable(Lcom/miui/maml/data/Variables;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4f

    .line 9
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 18
    const-string v3, ".duration"

    .line 20
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 28
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 30
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 39
    const-string v4, ".position"

    .line 41
    invoke-static {v1, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 48
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 50
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 59
    const-string v3, ".playState"

    .line 61
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 69
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 71
    iget p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getStateName(I)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 80
    :cond_4f
    return-void
.end method

.method private openVideo()V
    .registers 8

    .line 1
    const-string v0, "Unable to open content: "

    .line 3
    const-string v1, "BaseVideoView"

    .line 5
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 7
    if-eqz v2, :cond_a2

    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 11
    if-eqz v2, :cond_a2

    .line 13
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_14

    .line 19
    goto/16 :goto_a2

    .line 21
    :cond_14
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, -0x1

    .line 27
    :try_start_1a
    new-instance v5, Landroid/media/MediaPlayer;

    .line 29
    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    .line 32
    iput-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 34
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 36
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 39
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 41
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 43
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 46
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 50
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 53
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 55
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 57
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 60
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 62
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 64
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 67
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 69
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 71
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 74
    iget v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 76
    const/4 v6, 0x2

    .line 77
    if-ne v5, v6, :cond_53

    .line 79
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 81
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 84
    :cond_53
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 86
    const/4 v6, 0x3

    .line 87
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 90
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 92
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 95
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 97
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 99
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 102
    invoke-direct {p0, v3}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_68} :catch_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_68} :catch_69

    .line 105
    return-void

    .line 106
    :catch_69
    move-exception v5

    .line 107
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v0

    .line 111
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 113
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    iput v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 125
    iput v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 127
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 129
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 131
    invoke-interface {v0, v1, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 134
    return-void

    .line 135
    :catch_86
    move-exception v5

    .line 136
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move-result-object v0

    .line 140
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 142
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    iput v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 154
    iput v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 156
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 158
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 160
    invoke-interface {v0, v1, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 163
    :cond_a2
    :goto_a2
    return-void
.end method

.method private updateDurationVar(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    int-to-double v1, p1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 9
    :cond_8
    return-void
.end method

.method private updatePositionVar(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    int-to-double v1, p1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 9
    :cond_8
    return-void
.end method

.method private updateStateVar(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getStateName(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public abstract addSurfaceHolderCallback()V
.end method

.method public doTick()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isPlaying()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->getCurrentPosition()I

    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V

    .line 14
    :cond_d
    return-void
.end method

.method public getCurrentPosition()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getDuration()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, -0x1

    .line 15
    return v0
.end method

.method public init(Lcom/miui/maml/data/Variables;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->addSurfaceHolderCallback()V

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->initIndexedVariable(Lcom/miui/maml/data/Variables;)V

    .line 7
    return-void
.end method

.method public isInPlaybackState()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_f

    .line 6
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_f

    .line 11
    if-eqz v0, :cond_f

    .line 13
    if-eq v0, v1, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :goto_10
    return v1
.end method

.method public isPlaying()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    .line 5
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 8
    return-void
.end method

.method public abstract onSurfaceCreated(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract onSurfaceDestroyed()V
.end method

.method public pause()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_17

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_17

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 21
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 24
    :cond_17
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 26
    return-void
.end method

.method public releaseMedia(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 14
    if-eqz p1, :cond_11

    .line 16
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 18
    :cond_11
    iget p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 20
    if-eqz p1, :cond_1a

    .line 22
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 27
    :cond_1a
    return-void
.end method

.method public seekTo(I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_28

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    const/16 v1, 0x1a

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lt v0, v1, :cond_20

    .line 14
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 16
    const/4 v1, 0x4

    .line 17
    if-ne v0, v1, :cond_19

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 21
    int-to-long v3, p1

    .line 22
    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/x;->o(Landroid/media/MediaPlayer;J)V

    .line 25
    goto :goto_25

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    int-to-long v3, p1

    .line 29
    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/x;->C(Landroid/media/MediaPlayer;J)V

    .line 32
    goto :goto_25

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 35
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 38
    :goto_25
    iput v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 43
    :goto_2a
    return-void
.end method

.method public abstract setFormat(I)V
.end method

.method public setLooping(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    .line 3
    if-eq v0, p1, :cond_d

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 12
    :cond_b
    iput-boolean p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    .line 14
    :cond_d
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setScaleMode(I)V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-gt p1, v0, :cond_8

    .line 4
    const/4 v0, 0x1

    .line 5
    if-lt p1, v0, :cond_8

    .line 7
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 9
    :cond_8
    return-void
.end method

.method public setVideoDataSource(Landroid/media/MediaDataSource;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->openVideo()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    return-void
.end method

.method public setVolume(F)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 4
    const/high16 v2, 0x3f800000  # 1.0f

    .line 6
    if-gez v1, :cond_9

    .line 8
    move p1, v0

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    cmpl-float v1, p1, v2

    .line 12
    if-lez v1, :cond_e

    .line 14
    move p1, v2

    .line 15
    :cond_e
    :goto_e
    cmpl-float v0, p1, v0

    .line 17
    if-nez v0, :cond_14

    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x1

    .line 22
    :goto_15
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 24
    if-eq v0, v1, :cond_1b

    .line 26
    iput v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 28
    :cond_1b
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->checkAudioFocus()V

    .line 31
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    .line 33
    cmpl-float v0, v0, p1

    .line 35
    if-eqz v0, :cond_2d

    .line 37
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    if-eqz v0, :cond_2b

    .line 41
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 44
    :cond_2b
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    .line 46
    :cond_2d
    return-void
.end method

.method public start()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eqz v0, :cond_12

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->checkAudioFocus()V

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 16
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 19
    :cond_12
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 21
    return-void
.end method

.method public stopPlayback()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 20
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 27
    :cond_1a
    return-void
.end method

.method public abstract updateVideoSize()V
.end method
