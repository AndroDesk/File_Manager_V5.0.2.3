.class Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;
.super Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;
.source "DropDownSingleChoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 3
    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 3
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$100(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V

    .line 6
    return-void
.end method

.method public onShow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 3
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 11
    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;->onShow()V

    .line 18
    :cond_11
    return-void
.end method
