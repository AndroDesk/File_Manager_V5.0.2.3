.class Lmiuix/popupwidget/widget/DropDownPopupWindow$3;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_11

    .line 7
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 9
    invoke-static {v0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$900(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)Landroid/graphics/Rect;

    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    .line 15
    invoke-static {v0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$1000(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/graphics/Rect;)V

    .line 18
    :cond_11
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
