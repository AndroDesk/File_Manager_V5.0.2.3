.class Lmiuix/pickerwidget/widget/TimePicker$2;
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
    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 3
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_24

    .line 9
    const/16 p1, 0xc

    .line 11
    const/16 v0, 0xb

    .line 13
    if-ne p2, v0, :cond_10

    .line 15
    if-eq p3, p1, :cond_14

    .line 17
    :cond_10
    if-ne p2, p1, :cond_24

    .line 19
    if-ne p3, v0, :cond_24

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 23
    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$000(Lmiuix/pickerwidget/widget/TimePicker;)Z

    .line 26
    move-result p2

    .line 27
    xor-int/lit8 p2, p2, 0x1

    .line 29
    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/TimePicker;->access$002(Lmiuix/pickerwidget/widget/TimePicker;Z)Z

    .line 32
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 34
    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$100(Lmiuix/pickerwidget/widget/TimePicker;)V

    .line 37
    :cond_24
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    .line 39
    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$200(Lmiuix/pickerwidget/widget/TimePicker;)V

    .line 42
    return-void
.end method
