.class Lmiuix/popupwidget/widget/DropDownPopupWindow$4;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;->show()V
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
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_33

    .line 17
    if-ltz p1, :cond_2c

    .line 19
    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 21
    invoke-static {p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$1100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 28
    move-result p2

    .line 29
    if-ge p1, p2, :cond_2c

    .line 31
    if-ltz v0, :cond_2c

    .line 33
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 35
    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$1100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 42
    move-result p1

    .line 43
    if-lt v0, p1, :cond_33

    .line 45
    :cond_2c
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 47
    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_33
    const/4 p1, 0x0

    .line 53
    return p1
.end method
