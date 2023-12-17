.class Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;
.super Landroid/graphics/drawable/Drawable;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyHolder"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 6
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    .line 10
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 13
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mPaint:Landroid/graphics/Paint;

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->this$0:Lmiuix/miuixbasewidget/widget/FloatingActionButton;

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v0, v1

    .line 26
    sub-int/2addr v0, v3

    .line 27
    div-int/lit8 v0, v0, 0x2

    .line 29
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    mul-int/lit8 v0, v0, 0x2

    .line 33
    add-int v4, v1, v0

    .line 35
    add-int/2addr v0, v2

    .line 36
    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FloatingActionButton$EmptyHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    return-void
.end method
