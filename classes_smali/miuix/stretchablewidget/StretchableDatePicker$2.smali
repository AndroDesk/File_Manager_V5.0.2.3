.class Lmiuix/stretchablewidget/StretchableDatePicker$2;
.super Ljava/lang/Object;
.source "StretchableDatePicker.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/stretchablewidget/StretchableDatePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lmiuix/stretchablewidget/StretchableDatePicker;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 3
    iput-object p2, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->val$context:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDateTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;J)V
    .registers 6

    .line 1
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 3
    invoke-static {p1}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$300(Lmiuix/stretchablewidget/StretchableDatePicker;)Lmiuix/pickerwidget/date/Calendar;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 10
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 12
    invoke-static {p1}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$200(Lmiuix/stretchablewidget/StretchableDatePicker;)Z

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->val$context:Landroid/content/Context;

    .line 18
    invoke-static {p1, v0, v1}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$100(Lmiuix/stretchablewidget/StretchableDatePicker;ZLandroid/content/Context;)V

    .line 21
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 23
    invoke-static {p1, p2, p3}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$402(Lmiuix/stretchablewidget/StretchableDatePicker;J)J

    .line 26
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 28
    invoke-static {p1}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$500(Lmiuix/stretchablewidget/StretchableDatePicker;)Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;

    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_2a

    .line 34
    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableDatePicker$2;->this$0:Lmiuix/stretchablewidget/StretchableDatePicker;

    .line 36
    invoke-static {p1}, Lmiuix/stretchablewidget/StretchableDatePicker;->access$500(Lmiuix/stretchablewidget/StretchableDatePicker;)Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;

    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1, p2, p3}, Lmiuix/stretchablewidget/StretchableDatePicker$OnTimeChangeListener;->onDateTimeChanged(J)J

    .line 43
    :cond_2a
    return-void
.end method
