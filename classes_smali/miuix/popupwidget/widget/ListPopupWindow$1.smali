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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$1;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    :cond_13
    return-void
.end method
