.class Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PickerValueChangeListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/DateTimePicker;


# direct methods
.method private constructor <init>(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/pickerwidget/widget/DateTimePicker;Lmiuix/pickerwidget/widget/DateTimePicker$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    return-void
.end method

.method private notifyTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 9
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1300(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1d

    .line 15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 17
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1300(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 23
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 26
    move-result-wide v1

    .line 27
    invoke-interface {v0, p1, v1, v2}, Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;->onDateTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;J)V

    .line 30
    :cond_1d
    return-void
.end method


# virtual methods
.method public onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 5

    .line 1
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$300(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 6
    move-result-object p2

    .line 7
    if-ne p1, p2, :cond_31

    .line 9
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 12
    move-result p2

    .line 13
    iget-object p3, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 15
    invoke-static {p3}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$400(Lmiuix/pickerwidget/widget/DateTimePicker;)I

    .line 18
    move-result p3

    .line 19
    sub-int/2addr p2, p3

    .line 20
    add-int/lit8 p2, p2, 0x5

    .line 22
    rem-int/lit8 p2, p2, 0x5

    .line 24
    const/4 p3, 0x1

    .line 25
    if-ne p2, p3, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 p3, -0x1

    .line 29
    :goto_1c
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 31
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$500(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 34
    move-result-object p2

    .line 35
    const/16 v0, 0xc

    .line 37
    invoke-virtual {p2, v0, p3}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 40
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 42
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 45
    move-result p1

    .line 46
    invoke-static {p2, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$402(Lmiuix/pickerwidget/widget/DateTimePicker;I)I

    .line 49
    goto :goto_73

    .line 50
    :cond_31
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 52
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$600(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 55
    move-result-object p2

    .line 56
    if-ne p1, p2, :cond_4f

    .line 58
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 60
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$500(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 63
    move-result-object p1

    .line 64
    const/16 p2, 0x12

    .line 66
    iget-object p3, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 68
    invoke-static {p3}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$600(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 75
    move-result p3

    .line 76
    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 79
    goto :goto_73

    .line 80
    :cond_4f
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 82
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$700(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 85
    move-result-object p2

    .line 86
    if-ne p1, p2, :cond_73

    .line 88
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 90
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$500(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 93
    move-result-object p1

    .line 94
    const/16 p2, 0x14

    .line 96
    iget-object p3, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 98
    invoke-static {p3}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$800(Lmiuix/pickerwidget/widget/DateTimePicker;)I

    .line 101
    move-result p3

    .line 102
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 104
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$700(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 111
    move-result v0

    .line 112
    mul-int/2addr v0, p3

    .line 113
    invoke-virtual {p1, p2, v0}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 116
    :cond_73
    :goto_73
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 118
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$900(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 121
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 123
    const/4 p2, 0x0

    .line 124
    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1000(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    .line 127
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 129
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1100(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 132
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 134
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1200(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 137
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 139
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->notifyTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 142
    return-void
.end method
