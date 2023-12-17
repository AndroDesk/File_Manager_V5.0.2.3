.class Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 3
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 11
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    .line 14
    :cond_d
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->dismiss(Z)V

    .line 7
    return-void
.end method
