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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_33

    if-ltz p1, :cond_2c

    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-static {p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$1100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    if-ge p1, p2, :cond_2c

    if-ltz v0, :cond_2c

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$1100(Lmiuix/popupwidget/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lt v0, p1, :cond_33

    :cond_2c
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_33
    const/4 p1, 0x0

    return p1
.end method
