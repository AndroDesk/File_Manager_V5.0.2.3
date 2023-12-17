.class public Lcom/android/fileexplorer/view/viewlarge/struct/Anim;
.super Ljava/lang/Object;
.source "Anim.java"


# instance fields
.field public duration:J

.field public easing:I

.field public interruptible:Z

.field public sCenterEnd:Landroid/graphics/PointF;

.field public sCenterEndRequested:Landroid/graphics/PointF;

.field public sCenterStart:Landroid/graphics/PointF;

.field public scaleEnd:F

.field public scaleStart:F

.field public time:J

.field public vFocusEnd:Landroid/graphics/PointF;

.field public vFocusStart:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x1f4

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->duration:J

    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->interruptible:Z

    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->easing:I

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/fileexplorer/view/viewlarge/struct/Anim;->time:J

    .line 20
    return-void
.end method
