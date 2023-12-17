.class Lmiuix/popupwidget/widget/DropDownPopupWindow$2;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private tryDismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$500(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 11
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$600(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;->tryDismiss()V

    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;->tryDismiss()V

    .line 4
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$500(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_19

    .line 9
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 11
    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$700(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_19

    .line 17
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$2;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 19
    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$700(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 26
    :cond_19
    return-void
.end method
