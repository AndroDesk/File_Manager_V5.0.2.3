.class public Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewContentController"
.end annotation


# instance fields
.field private mContent:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    .line 5
    iput p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p1, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setContentController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->initContent()V

    .line 4
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    .line 6
    return-object v0
.end method

.method public initContent()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    .line 3
    if-nez v0, :cond_16

    .line 5
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->mLayoutId:I

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    .line 20
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->onContentInit(Landroid/view/View;)V

    .line 23
    :cond_16
    return-void
.end method

.method public onAnimationUpdate(Landroid/view/View;F)V
    .registers 5

    .line 1
    if-eqz p1, :cond_f

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    neg-int v0, v0

    .line 8
    int-to-float v0, v0

    .line 9
    const/high16 v1, 0x3f800000  # 1.0f

    .line 11
    sub-float/2addr v1, p2

    .line 12
    mul-float/2addr v1, v0

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 16
    :cond_f
    return-void
.end method

.method public onContentInit(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method
