.class public Lcom/android/fileexplorer/view/HeaderSpringBackLayout;
.super Lmiuix/springback/view/SpringBackLayout;
.source "HeaderSpringBackLayout.java"


# static fields
.field private static final INVALID_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HeaderSpringBackLayout"


# instance fields
.field private mHeader:Landroid/view/View;

.field private mHeaderId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/android/fileexplorer/R$styleable;->HeaderSpringBackLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeaderId:I

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/springback/view/SpringBackLayout;->onFinishInflate()V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeaderId:I

    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_e

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeader:Landroid/view/View;

    .line 15
    :cond_e
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeader:Landroid/view/View;

    .line 11
    if-eqz v2, :cond_1b

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, v0

    .line 18
    iget-object v4, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeader:Landroid/view/View;

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    move-result v4

    .line 24
    add-int/2addr v4, v1

    .line 25
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 28
    :cond_1b
    invoke-super/range {p0 .. p5}, Lmiuix/springback/view/SpringBackLayout;->onLayout(ZIIII)V

    .line 31
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeader:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 8
    :cond_7
    invoke-super {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->onMeasure(II)V

    .line 11
    return-void
.end method
