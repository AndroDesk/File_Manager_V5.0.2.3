.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapperOnClickListener"
.end annotation


# instance fields
.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 10
    invoke-static {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$400(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method
