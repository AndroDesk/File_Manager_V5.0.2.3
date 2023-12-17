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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-static {v0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$900(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$3;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-static {v0, p1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->access$1000(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/graphics/Rect;)V

    :cond_11
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
