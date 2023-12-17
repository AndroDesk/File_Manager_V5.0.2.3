.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;
.super Landroid/view/ViewOutlineProvider;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_53

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_53

    .line 14
    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 37
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 42
    move-result v2

    .line 43
    add-int/2addr v2, v1

    .line 44
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 46
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 51
    move-result v2

    .line 52
    sub-int/2addr v1, v2

    .line 53
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 55
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 60
    move-result p1

    .line 61
    add-int/2addr p1, v1

    .line 62
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 64
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object p1

    .line 74
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_round_corners:I

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 79
    move-result p1

    .line 80
    int-to-float p1, p1

    .line 81
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 84
    :cond_53
    :goto_53
    return-void
.end method
