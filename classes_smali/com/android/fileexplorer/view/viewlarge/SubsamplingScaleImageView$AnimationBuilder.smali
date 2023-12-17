.class public final Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AnimationBuilder"
.end annotation


# instance fields
.field private duration:J

.field private easing:I

.field private interruptible:Z

.field private panLimited:Z

.field private final targetSCenter:Landroid/graphics/PointF;

.field private final targetScale:F

.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

.field private final vFocus:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)V
    .registers 5

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 14
    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    .line 18
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;)V
    .registers 6

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 22
    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 p1, 0x2

    .line 23
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    .line 25
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    .line 26
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    .line 27
    iput-object p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 7

    .line 29
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 30
    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 p1, 0x2

    .line 31
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    .line 33
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    .line 34
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    .line 35
    iput-object p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    .line 36
    iput-object p4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLandroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FLcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)V

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)V
    .registers 5

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    .line 11
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->withPanLimited(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private withPanLimited(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    .line 3
    return-object p0
.end method


# virtual methods
.method public start()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 18
    move-result v2

    .line 19
    sub-int/2addr v1, v2

    .line 20
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 29
    add-int/2addr v1, v0

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v0

    .line 36
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    div-int/lit8 v2, v2, 0x2

    .line 58
    add-int/2addr v2, v0

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 61
    iget v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    .line 63
    invoke-static {v0, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2700(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F

    .line 66
    move-result v0

    .line 67
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    .line 69
    if-eqz v3, :cond_58

    .line 71
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 73
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    .line 75
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 77
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 79
    new-instance v6, Landroid/graphics/PointF;

    .line 81
    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 84
    invoke-static {v3, v5, v4, v0, v6}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 87
    move-result-object v3

    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    .line 91
    :goto_5a
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 93
    new-instance v5, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 95
    invoke-direct {v5}, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;-><init>()V

    .line 98
    invoke-static {v4, v5}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2902(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/struct/Anim;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 101
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 103
    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 106
    move-result-object v4

    .line 107
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 109
    invoke-static {v5}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F

    .line 112
    move-result v5

    .line 113
    iput v5, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleStart:F

    .line 115
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 117
    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 120
    move-result-object v4

    .line 121
    iput v0, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->scaleEnd:F

    .line 123
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 125
    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 128
    move-result-object v4

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    move-result-wide v5

    .line 133
    iput-wide v5, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->time:J

    .line 135
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 137
    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 140
    move-result-object v4

    .line 141
    iput-object v3, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEndRequested:Landroid/graphics/PointF;

    .line 143
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 145
    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 148
    move-result-object v4

    .line 149
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 151
    invoke-virtual {v5}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    .line 154
    move-result-object v5

    .line 155
    iput-object v5, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterStart:Landroid/graphics/PointF;

    .line 157
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 159
    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 162
    move-result-object v4

    .line 163
    iput-object v3, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterEnd:Landroid/graphics/PointF;

    .line 165
    iget-object v4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 167
    invoke-static {v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 170
    move-result-object v4

    .line 171
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 173
    invoke-virtual {v5, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 176
    move-result-object v3

    .line 177
    iput-object v3, v4, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusStart:Landroid/graphics/PointF;

    .line 179
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 181
    invoke-static {v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 184
    move-result-object v3

    .line 185
    new-instance v4, Landroid/graphics/PointF;

    .line 187
    int-to-float v1, v1

    .line 188
    int-to-float v2, v2

    .line 189
    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 192
    iput-object v4, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusEnd:Landroid/graphics/PointF;

    .line 194
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 196
    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 199
    move-result-object v1

    .line 200
    iget-wide v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    .line 202
    iput-wide v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    .line 204
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 206
    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 209
    move-result-object v1

    .line 210
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    .line 212
    iput-boolean v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->interruptible:Z

    .line 214
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 216
    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 219
    move-result-object v1

    .line 220
    iget v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    .line 222
    iput v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    .line 224
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 226
    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 229
    move-result-object v1

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 233
    move-result-wide v2

    .line 234
    iput-wide v2, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->time:J

    .line 236
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    .line 238
    if-eqz v1, :cond_13a

    .line 240
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 242
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 244
    invoke-static {v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 247
    move-result-object v2

    .line 248
    iget-object v2, v2, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterStart:Landroid/graphics/PointF;

    .line 250
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 252
    mul-float/2addr v2, v0

    .line 253
    sub-float/2addr v1, v2

    .line 254
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    .line 256
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 258
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 260
    invoke-static {v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 263
    move-result-object v3

    .line 264
    iget-object v3, v3, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->sCenterStart:Landroid/graphics/PointF;

    .line 266
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 268
    mul-float/2addr v3, v0

    .line 269
    sub-float/2addr v2, v3

    .line 270
    new-instance v3, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;

    .line 272
    new-instance v4, Landroid/graphics/PointF;

    .line 274
    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 277
    invoke-direct {v3, v0, v4}, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;)V

    .line 280
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 282
    const/4 v4, 0x1

    .line 283
    invoke-static {v0, v4, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$3000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ZLcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;)V

    .line 286
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 288
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2900(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Lcom/android/fileexplorer/view/viewlarge/struct/Anim;

    .line 291
    move-result-object v0

    .line 292
    new-instance v4, Landroid/graphics/PointF;

    .line 294
    iget-object v5, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    .line 296
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 298
    iget-object v3, v3, Lcom/android/fileexplorer/view/viewlarge/struct/ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    .line 300
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 302
    sub-float/2addr v7, v1

    .line 303
    add-float/2addr v7, v6

    .line 304
    iget v1, v5, Landroid/graphics/PointF;->y:F

    .line 306
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 308
    sub-float/2addr v3, v2

    .line 309
    add-float/2addr v3, v1

    .line 310
    invoke-direct {v4, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 313
    iput-object v4, v0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->vFocusEnd:Landroid/graphics/PointF;

    .line 315
    :cond_13a
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 320
    return-void
.end method

.method public withDuration(J)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    .line 3
    return-object p0
.end method

.method public withEasing(I)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2600()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_11

    .line 15
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    .line 17
    return-object p0

    .line 18
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v1, "Unknown easing type: "

    .line 22
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method public withInterruptible(Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    .line 3
    return-object p0
.end method
