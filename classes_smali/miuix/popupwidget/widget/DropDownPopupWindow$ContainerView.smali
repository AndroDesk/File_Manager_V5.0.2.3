.class Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;
.super Lmiuix/smooth/SmoothFrameLayout2;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerView"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 10
    sget p2, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_radius:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 19
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 6
    invoke-static {v0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$800(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/content/res/Configuration;)V

    .line 9
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_10

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x1

    .line 9
    if-ne p1, p2, :cond_10

    .line 11
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 13
    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    .line 16
    return p2

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_12

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result p1

    .line 12
    if-ne p1, v1, :cond_12

    .line 14
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 16
    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    .line 19
    :cond_12
    return v1
.end method
