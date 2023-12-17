.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;
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
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$302(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Z)Z

    .line 7
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$002(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    .line 13
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 15
    invoke-static {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$400(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 22
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
