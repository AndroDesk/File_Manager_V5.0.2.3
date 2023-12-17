.class Lmiuix/popupwidget/widget/ListPopupWindow$1;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 3
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_13

    .line 15
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 17
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    .line 20
    :cond_13
    return-void
.end method
