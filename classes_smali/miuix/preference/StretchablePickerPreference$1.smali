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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/preference/StretchablePickerPreference;)V
    .registers 2

    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;J)V
    .registers 5

    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$000(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/pickerwidget/date/Calendar;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$100(Lmiuix/preference/StretchablePickerPreference;)Z

    move-result v0

    invoke-static {p1, v0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->access$200(Lmiuix/preference/StretchablePickerPreference;ZJ)V

    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    invoke-static {p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->access$302(Lmiuix/preference/StretchablePickerPreference;J)J

    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$400(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$400(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;

    move-result-object p1

    iget-object p2, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    invoke-static {p2}, Lmiuix/preference/StretchablePickerPreference;->access$300(Lmiuix/preference/StretchablePickerPreference;)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference$OnTimeChangeListener;->onDateTimeChanged(J)J

    :cond_2e
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$1;->this$0:Lmiuix/preference/StretchablePickerPreference;

    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->access$500(Lmiuix/preference/StretchablePickerPreference;)V

    return-void
.end method
