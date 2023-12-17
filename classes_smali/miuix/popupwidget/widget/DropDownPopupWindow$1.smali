.class Lmiuix/popupwidget/widget/DropDownPopupWindow$1;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$000(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 19
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 27
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 33
    invoke-static {v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$200(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerView;

    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v1, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onAnimationUpdate(Landroid/view/View;F)V

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 42
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$300(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3e

    .line 48
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 50
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$300(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$ContentController;

    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 56
    invoke-static {v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$400(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onAnimationUpdate(Landroid/view/View;F)V

    .line 63
    :cond_3e
    return-void
.end method
