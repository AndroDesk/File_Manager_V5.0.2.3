.class Lmiuix/pickerwidget/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/pickerwidget/widget/NumberPicker;->initInputText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .line 1
    if-eqz p2, :cond_c

    .line 3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 5
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 12
    goto :goto_1b

    .line 13
    :cond_c
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 15
    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 23
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$3;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 25
    invoke-static {p2, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$500(Lmiuix/pickerwidget/widget/NumberPicker;Landroid/view/View;)V

    .line 28
    :goto_1b
    return-void
.end method
