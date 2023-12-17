.class Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OvalShapeWithPadding"
.end annotation


# instance fields
.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;->mViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;->mViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$OvalShapeWithPadding;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_26

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    move-result v0

    .line 27
    sub-int/2addr v1, v2

    .line 28
    sub-int/2addr v1, v0

    .line 29
    div-int/lit8 v1, v1, 0x2

    .line 31
    add-int/2addr v2, v1

    .line 32
    add-int/2addr v3, v1

    .line 33
    int-to-float v0, v2

    .line 34
    int-to-float v2, v3

    .line 35
    int-to-float v1, v1

    .line 36
    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 39
    :cond_26
    return-void
.end method
