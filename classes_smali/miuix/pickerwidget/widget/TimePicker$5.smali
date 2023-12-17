.class Lmiuix/pickerwidget/widget/TimePicker$5;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/pickerwidget/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/TimePicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/TimePicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$5;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 4
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$5;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 6
    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$000(Lmiuix/pickerwidget/widget/TimePicker;)Z

    .line 9
    move-result p2

    .line 10
    xor-int/lit8 p2, p2, 0x1

    .line 12
    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/TimePicker;->access$002(Lmiuix/pickerwidget/widget/TimePicker;Z)Z

    .line 15
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$5;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 17
    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$100(Lmiuix/pickerwidget/widget/TimePicker;)V

    .line 20
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$5;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 22
    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$200(Lmiuix/pickerwidget/widget/TimePicker;)V

    .line 25
    return-void
.end method
