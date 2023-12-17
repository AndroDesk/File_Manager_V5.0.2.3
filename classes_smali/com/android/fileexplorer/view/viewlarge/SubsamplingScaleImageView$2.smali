.class Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->val$context:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1100(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d2

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$500(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_d2

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$600(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_d2

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 27
    iget-object v0, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 29
    if-eqz v0, :cond_21

    .line 31
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->val$context:Landroid/content/Context;

    .line 38
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1200(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 43
    iget-object v0, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 45
    if-eqz v0, :cond_31

    .line 47
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 52
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1300(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z

    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    if-eqz v0, :cond_ae

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 61
    new-instance v2, Landroid/graphics/PointF;

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 66
    move-result v3

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 70
    move-result p1

    .line 71
    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 74
    invoke-static {v0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1402(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 77
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 79
    new-instance v0, Landroid/graphics/PointF;

    .line 81
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 83
    invoke-static {v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$600(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 86
    move-result-object v2

    .line 87
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 89
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 91
    invoke-static {v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$600(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 94
    move-result-object v3

    .line 95
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 97
    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 100
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1502(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 103
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 105
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F

    .line 108
    move-result v0

    .line 109
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1602(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F

    .line 112
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 114
    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1702(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z

    .line 117
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 119
    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$702(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z

    .line 122
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 124
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1400(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 131
    move-result-object v0

    .line 132
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1802(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 135
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 137
    const/high16 v0, -0x40800000  # -1.0f

    .line 139
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1902(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;F)F

    .line 142
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 144
    new-instance v0, Landroid/graphics/PointF;

    .line 146
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 148
    invoke-static {v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 151
    move-result-object v1

    .line 152
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 154
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 156
    invoke-static {v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$1800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 159
    move-result-object v2

    .line 160
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 162
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 165
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2002(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 168
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 170
    const/4 v0, 0x0

    .line 171
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2102(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Z)Z

    .line 174
    return v0

    .line 175
    :cond_ae
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 177
    new-instance v2, Landroid/graphics/PointF;

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 182
    move-result v3

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 186
    move-result v4

    .line 187
    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 193
    move-result-object v2

    .line 194
    new-instance v3, Landroid/graphics/PointF;

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 199
    move-result v4

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 203
    move-result p1

    .line 204
    invoke-direct {v3, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 207
    invoke-static {v0, v2, v3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$2200(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 210
    return v1

    .line 211
    :cond_d2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 214
    move-result p1

    .line 215
    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$400(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_bf

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$500(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_bf

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$600(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_bf

    .line 25
    if-eqz p1, :cond_bf

    .line 27
    if-eqz p2, :cond_bf

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    move-result v0

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 36
    move-result v1

    .line 37
    sub-float/2addr v0, v1

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 41
    move-result v0

    .line 42
    const/high16 v1, 0x42480000  # 50.0f

    .line 44
    cmpl-float v0, v0, v1

    .line 46
    if-gtz v0, :cond_40

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 55
    move-result v2

    .line 56
    sub-float/2addr v0, v2

    .line 57
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 60
    move-result v0

    .line 61
    cmpl-float v0, v0, v1

    .line 63
    if-lez v0, :cond_bf

    .line 65
    :cond_40
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 68
    move-result v0

    .line 69
    const/high16 v1, 0x43fa0000  # 500.0f

    .line 71
    cmpl-float v0, v0, v1

    .line 73
    if-gtz v0, :cond_52

    .line 75
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 78
    move-result v0

    .line 79
    cmpl-float v0, v0, v1

    .line 81
    if-lez v0, :cond_bf

    .line 83
    :cond_52
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 85
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$700(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_bf

    .line 91
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 93
    iget-object p1, p1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    .line 95
    if-eqz p1, :cond_63

    .line 97
    invoke-interface {p1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onMove()V

    .line 100
    :cond_63
    new-instance p1, Landroid/graphics/PointF;

    .line 102
    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 104
    invoke-static {p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$600(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 107
    move-result-object p2

    .line 108
    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 110
    const/high16 v0, 0x3e800000  # 0.25f

    .line 112
    mul-float/2addr p3, v0

    .line 113
    add-float/2addr p3, p2

    .line 114
    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 116
    invoke-static {p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$600(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    .line 119
    move-result-object p2

    .line 120
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 122
    mul-float/2addr p4, v0

    .line 123
    add-float/2addr p4, p2

    .line 124
    invoke-direct {p1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 127
    iget-object p2, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 132
    move-result p2

    .line 133
    div-int/lit8 p2, p2, 0x2

    .line 135
    int-to-float p2, p2

    .line 136
    iget p3, p1, Landroid/graphics/PointF;->x:F

    .line 138
    sub-float/2addr p2, p3

    .line 139
    iget-object p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 141
    invoke-static {p3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F

    .line 144
    move-result p3

    .line 145
    div-float/2addr p2, p3

    .line 146
    iget-object p3, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 148
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 151
    move-result p3

    .line 152
    div-int/lit8 p3, p3, 0x2

    .line 154
    int-to-float p3, p3

    .line 155
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 157
    sub-float/2addr p3, p1

    .line 158
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 160
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$800(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)F

    .line 163
    move-result p1

    .line 164
    div-float/2addr p3, p1

    .line 165
    new-instance p1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 167
    iget-object p4, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 169
    new-instance v0, Landroid/graphics/PointF;

    .line 171
    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 174
    const/4 p2, 0x0

    .line 175
    invoke-direct {p1, p4, v0, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;)V

    .line 178
    const/4 p2, 0x1

    .line 179
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->withEasing(I)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 182
    move-result-object p1

    .line 183
    const/4 p3, 0x0

    .line 184
    invoke-static {p1, p3}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->access$1000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;Z)Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;

    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$AnimationBuilder;->start()V

    .line 191
    return p2

    .line 192
    :cond_bf
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 195
    move-result p1

    .line 196
    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$2;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
