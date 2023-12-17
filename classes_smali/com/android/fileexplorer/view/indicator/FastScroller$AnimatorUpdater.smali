.class Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/indicator/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;Lcom/android/fileexplorer/view/indicator/FastScroller$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 11
    const/high16 v0, 0x437f0000  # 255.0f

    .line 13
    mul-float/2addr v0, p1

    .line 14
    float-to-int v0, v0

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 17
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$600(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z

    .line 20
    move-result v1

    .line 21
    const/high16 v2, 0x3f800000  # 1.0f

    .line 23
    if-eqz v1, :cond_5a

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 27
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$700(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_29

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 35
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$700(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 42
    :cond_29
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 44
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$800(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_3a

    .line 50
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 52
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$800(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 59
    :cond_3a
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 61
    sub-float v3, v2, p1

    .line 63
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1000(Lcom/android/fileexplorer/view/indicator/FastScroller;)I

    .line 66
    move-result v4

    .line 67
    int-to-float v4, v4

    .line 68
    mul-float/2addr v3, v4

    .line 69
    float-to-int v3, v3

    .line 70
    invoke-static {v1, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$902(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    .line 73
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 75
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1100(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5a

    .line 81
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 83
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$900(Lcom/android/fileexplorer/view/indicator/FastScroller;)I

    .line 86
    move-result v3

    .line 87
    neg-int v3, v3

    .line 88
    invoke-static {v1, v3}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$902(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    .line 91
    :cond_5a
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 93
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1200(Lcom/android/fileexplorer/view/indicator/FastScroller;)Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_91

    .line 99
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 101
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1300(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_73

    .line 107
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 109
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1300(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 116
    :cond_73
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 118
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1400(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;

    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_84

    .line 124
    iget-object v1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 126
    invoke-static {v1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1400(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/graphics/drawable/Drawable;

    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 133
    :cond_84
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 135
    sub-float/2addr v2, p1

    .line 136
    invoke-static {v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1600(Lcom/android/fileexplorer/view/indicator/FastScroller;)I

    .line 139
    move-result p1

    .line 140
    int-to-float p1, p1

    .line 141
    mul-float/2addr v2, p1

    .line 142
    float-to-int p1, v2

    .line 143
    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$1502(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    .line 146
    :cond_91
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorUpdater;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 148
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$500(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    .line 151
    return-void
.end method
