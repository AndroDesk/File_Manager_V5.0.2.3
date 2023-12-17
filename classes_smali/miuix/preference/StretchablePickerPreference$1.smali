.class Lmiuix/preference/StretchablePickerPreference$1;
.super Ljava/lang/Object;
.source "StretchablePickerPreference.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/StretchablePickerPreference;->updateTime(Lmiuix/pickerwidget/widget/DateTimePicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/StretchablePickerPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/StretchablePickerPreference;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDateTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;J)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 3
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$000(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/pickerwidget/date/Calendar;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 10
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 12
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$100(Lmiuix/preference/StretchablePickerPreference;)Z

    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->access$200(Lmiuix/preference/StretchablePickerPreference;ZJ)V

    .line 19
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 21
    invoke-static {p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->access$302(Lmiuix/preference/StretchablePickerPreference;J)J

    .line 24
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 26
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$400(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;

    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2e

    .line 32
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 34
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$400(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;

    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 40
    invoke-static {p2}, Lmiuix/preference/StretchablePickerPreference;->access$300(Lmiuix/preference/StretchablePickerPreference;)J

    .line 43
    move-result-wide p2

    .line 44
    invoke-interface {p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;->onDateTimeChanged(J)J

    .line 47
    :cond_2e
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 49
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$500(Lmiuix/preference/StretchablePickerPreference;)V

    .line 52
    return-void
.end method
