.class Lmiuix/popupwidget/widget/DropDownPopupWindow$5;
.super Landroid/view/ViewOutlineProvider;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

.field public final synthetic val$contentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$5;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    iput-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$5;->val$contentView:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_24

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_d

    .line 13
    goto :goto_24

    .line 14
    :cond_d
    const p1, 0x3f333333  # 0.7f

    .line 17
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 20
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$5;->val$contentView:Landroid/view/View;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_24

    .line 28
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$5;->val$contentView:Landroid/view/View;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method
