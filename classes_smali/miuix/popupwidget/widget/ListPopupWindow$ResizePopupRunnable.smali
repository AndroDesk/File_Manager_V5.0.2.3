.class Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 3
    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3b

    .line 9
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 11
    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 21
    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result v1

    .line 29
    if-le v0, v1, :cond_3b

    .line 31
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 33
    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 43
    iget v2, v1, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 45
    if-gt v0, v2, :cond_3b

    .line 47
    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 55
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 57
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    .line 60
    :cond_3b
    return-void
.end method
