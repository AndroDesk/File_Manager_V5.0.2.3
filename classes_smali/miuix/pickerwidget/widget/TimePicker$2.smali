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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/pickerwidget/widget/TimePicker;)V
    .registers 2

    iput-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 5

    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    move-result p1

    if-nez p1, :cond_24

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_10

    if-eq p3, p1, :cond_14

    :cond_10
    if-ne p2, p1, :cond_24

    if-ne p3, v0, :cond_24

    :cond_14
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$000(Lmiuix/pickerwidget/widget/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/TimePicker;->access$002(Lmiuix/pickerwidget/widget/TimePicker;Z)Z

    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$100(Lmiuix/pickerwidget/widget/TimePicker;)V

    :cond_24
    iget-object p1, p0, Lmiuix/pickerwidget/widget/TimePicker$2;->this$0:Lmiuix/pickerwidget/widget/TimePicker;

    invoke-static {p1}, Lmiuix/pickerwidget/widget/TimePicker;->access$200(Lmiuix/pickerwidget/widget/TimePicker;)V

    return-void
.end method
