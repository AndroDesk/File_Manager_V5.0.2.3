.class Lmiuix/pickerwidget/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/pickerwidget/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/DatePicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/DatePicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 3
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DatePicker;->access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 9
    invoke-static {v1}, Lmiuix/pickerwidget/widget/DatePicker;->access$000(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 16
    move-result-wide v1

    .line 17
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 19
    invoke-static {v3}, Lmiuix/pickerwidget/widget/DatePicker;->access$100(Lmiuix/pickerwidget/widget/DatePicker;)Z

    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 26
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 28
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DatePicker;->access$300(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v2, 0x5

    .line 34
    const/16 v3, 0x9

    .line 36
    if-ne p1, v0, :cond_3c

    .line 38
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 40
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DatePicker;->access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 43
    move-result-object v0

    .line 44
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 46
    invoke-static {v4}, Lmiuix/pickerwidget/widget/DatePicker;->access$100(Lmiuix/pickerwidget/widget/DatePicker;)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_36

    .line 52
    const/16 v4, 0xa

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v4, v3

    .line 56
    :goto_37
    sub-int/2addr p3, p2

    .line 57
    invoke-virtual {v0, v4, p3}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 60
    goto :goto_76

    .line 61
    :cond_3c
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 63
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DatePicker;->access$400(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 66
    move-result-object v0

    .line 67
    if-ne p1, v0, :cond_5a

    .line 69
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 71
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DatePicker;->access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 74
    move-result-object v0

    .line 75
    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 77
    invoke-static {v4}, Lmiuix/pickerwidget/widget/DatePicker;->access$100(Lmiuix/pickerwidget/widget/DatePicker;)Z

    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_54

    .line 83
    const/4 v4, 0x6

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move v4, v2

    .line 86
    :goto_55
    sub-int/2addr p3, p2

    .line 87
    invoke-virtual {v0, v4, p3}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 90
    goto :goto_76

    .line 91
    :cond_5a
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 93
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DatePicker;->access$500(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 96
    move-result-object p2

    .line 97
    if-ne p1, p2, :cond_af

    .line 99
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 101
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DatePicker;->access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 104
    move-result-object p2

    .line 105
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 107
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DatePicker;->access$100(Lmiuix/pickerwidget/widget/DatePicker;)Z

    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_72

    .line 113
    const/4 v0, 0x2

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    move v0, v1

    .line 116
    :goto_73
    invoke-virtual {p2, v0, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 119
    :goto_76
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 121
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DatePicker;->access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 124
    move-result-object p3

    .line 125
    invoke-virtual {p3, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 128
    move-result p3

    .line 129
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 131
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DatePicker;->access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 138
    move-result v0

    .line 139
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 141
    invoke-static {v1}, Lmiuix/pickerwidget/widget/DatePicker;->access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 148
    move-result v1

    .line 149
    invoke-static {p2, p3, v0, v1}, Lmiuix/pickerwidget/widget/DatePicker;->access$600(Lmiuix/pickerwidget/widget/DatePicker;III)V

    .line 152
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 154
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DatePicker;->access$500(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 157
    move-result-object p2

    .line 158
    if-ne p1, p2, :cond_a4

    .line 160
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 162
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker;->access$700(Lmiuix/pickerwidget/widget/DatePicker;)V

    .line 165
    :cond_a4
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 167
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker;->access$800(Lmiuix/pickerwidget/widget/DatePicker;)V

    .line 170
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker$1;->this$0:Lmiuix/pickerwidget/widget/DatePicker;

    .line 172
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker;->access$900(Lmiuix/pickerwidget/widget/DatePicker;)V

    .line 175
    return-void

    .line 176
    :cond_af
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 178
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 181
    throw p1
.end method
