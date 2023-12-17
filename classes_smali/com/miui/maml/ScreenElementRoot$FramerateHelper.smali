.class Lcom/miui/maml/ScreenElementRoot$FramerateHelper;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FramerateHelper"
.end annotation


# instance fields
.field private mFramerateText:Ljava/lang/String;

.field private mPaint:Landroid/text/TextPaint;

.field private mRealFrameRate:I

.field private mShowingFramerate:I

.field private mTextX:I

.field private mTextY:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/high16 v0, -0x10000

    const/16 v1, 0xe

    const/16 v2, 0xa

    .line 1
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mTextX:I

    .line 7
    iput p4, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mTextY:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    .line 7
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    .line 9
    if-eq v0, v1, :cond_20

    .line 11
    :cond_a
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    .line 13
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    aput-object v0, v1, v2

    .line 25
    const-string v0, "FPS %d"

    .line 27
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    .line 35
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mTextX:I

    .line 37
    int-to-float v1, v1

    .line 38
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mTextY:I

    .line 40
    int-to-float v2, v2

    .line 41
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    .line 43
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 46
    return-void
.end method

.method public set(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    .line 3
    return-void
.end method
