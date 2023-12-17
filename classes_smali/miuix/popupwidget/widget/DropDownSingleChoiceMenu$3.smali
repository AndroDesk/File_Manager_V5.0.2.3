.class Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;
.super Ljava/lang/Object;
.source "DropDownSingleChoiceMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 3
    invoke-static {p1, p3}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$202(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)I

    .line 6
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 8
    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_18

    .line 14
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 16
    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 22
    invoke-interface {p1, p2, p3}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;->onItemSelected(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)V

    .line 25
    :cond_18
    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 27
    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    .line 30
    return-void
.end method
