.class public Lcom/android/fileexplorer/view/HeaderSpringBackLayout;
.super Lmiuix/springback/view/SpringBackLayout;
.source "HeaderSpringBackLayout.java"


# static fields
.field private static final INVALID_ID:I

.field private static final TAG:Ljava/lang/String; = "HeaderSpringBackLayout"


# instance fields
.field private mHeader:Landroid/view/View;

.field private mHeaderId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->INVALID_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/fileexplorer/R$styleable;->HeaderSpringBackLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeaderId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lmiuix/springback/view/SpringBackLayout;->onFinishInflate()V

    iget v0, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeaderId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeader:Landroid/view/View;

    :cond_e
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeader:Landroid/view/View;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_1b
    invoke-super/range {p0 .. p5}, Lmiuix/springback/view/SpringBackLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/HeaderSpringBackLayout;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_7
    invoke-super {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;->onMeasure(II)V

    return-void
.end method
