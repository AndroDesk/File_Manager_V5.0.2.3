.class Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 13
    move-result p2

    .line 14
    float-to-int p2, p2

    .line 15
    if-nez p1, :cond_52

    .line 17
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 19
    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_52

    .line 25
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 27
    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_52

    .line 37
    if-ltz v0, :cond_52

    .line 39
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 41
    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentWidth()I

    .line 48
    move-result v1

    .line 49
    if-ge v0, v1, :cond_52

    .line 51
    if-ltz p2, :cond_52

    .line 53
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 55
    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentHeight()I

    .line 62
    move-result v0

    .line 63
    if-ge p2, v0, :cond_52

    .line 65
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 67
    invoke-static {p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$1000(Lmiuix/popupwidget/widget/ListPopupWindow;)Landroid/os/Handler;

    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 73
    invoke-static {p2}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    .line 76
    move-result-object p2

    .line 77
    const-wide/16 v0, 0xfa

    .line 79
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    goto :goto_64

    .line 83
    :cond_52
    const/4 p2, 0x1

    .line 84
    if-ne p1, p2, :cond_64

    .line 86
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 88
    invoke-static {p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$1000(Lmiuix/popupwidget/widget/ListPopupWindow;)Landroid/os/Handler;

    .line 91
    move-result-object p1

    .line 92
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 94
    invoke-static {p2}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    :cond_64
    :goto_64
    const/4 p1, 0x0

    .line 102
    return p1
.end method
