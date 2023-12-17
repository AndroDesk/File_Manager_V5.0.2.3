.class public Lmiuix/appcompat/app/TimePickerDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "miuix:hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "miuix:is24hour"

.field private static final MINUTE:Ljava/lang/String; = "miuix:minute"


# instance fields
.field private final mCallback:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

.field public mInitialHourOfDay:I

.field public mInitialMinute:I

.field public mIs24HourView:Z

.field private final mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 7

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p3, p0, Lmiuix/appcompat/app/TimePickerDialog;->mCallback:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    .line 4
    iput p4, p0, Lmiuix/appcompat/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 5
    iput p5, p0, Lmiuix/appcompat/app/TimePickerDialog;->mInitialMinute:I

    .line 6
    iput-boolean p6, p0, Lmiuix/appcompat/app/TimePickerDialog;->mIs24HourView:Z

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    .line 8
    sget p1, Lmiuix/appcompat/R$string;->time_picker_dialog_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->setTitle(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x104000a

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p3, Lmiuix/appcompat/app/TimePickerDialog$1;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/TimePickerDialog$1;-><init>(Lmiuix/appcompat/app/TimePickerDialog;)V

    const/4 p4, -0x1

    invoke-virtual {p0, p4, p2, p3}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x2

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p2, p4}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "layout_inflater"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 13
    sget p2, Lmiuix/appcompat/R$layout;->miuix_appcompat_time_picker_dialog:I

    invoke-virtual {p1, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 15
    sget p2, Lmiuix/appcompat/R$id;->timePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/TimePicker;

    iput-object p1, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 16
    iget-boolean p2, p0, Lmiuix/appcompat/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/TimePicker;->set24HourView(Ljava/lang/Boolean;)V

    .line 17
    iget p2, p0, Lmiuix/appcompat/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 18
    iget p2, p0, Lmiuix/appcompat/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 19
    invoke-virtual {p1, p4}, Lmiuix/pickerwidget/widget/TimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;ILmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/TimePickerDialog;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/TimePickerDialog;->tryNotifyTimeSet()V

    .line 4
    return-void
.end method

.method private tryNotifyTimeSet()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/TimePickerDialog;->mCallback:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    .line 3
    if-eqz v0, :cond_22

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/TimePickerDialog;->mCallback:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 14
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 24
    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v3

    .line 32
    invoke-interface {v0, v1, v2, v3}, Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V

    .line 35
    :cond_22
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    const-string v0, "miuix:hour"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    const-string v1, "miuix:minute"

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 18
    const-string v3, "miuix:is24hour"

    .line 20
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v2, p1}, Lmiuix/pickerwidget/widget/TimePicker;->set24HourView(Ljava/lang/Boolean;)V

    .line 31
    iget-object p1, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 40
    iget-object p1, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 49
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 7
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v1

    .line 15
    const-string v2, "miuix:hour"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 22
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v1

    .line 30
    const-string v2, "miuix:minute"

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    iget-object v1, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 37
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/TimePicker;->is24HourView()Z

    .line 40
    move-result v1

    .line 41
    const-string v2, "miuix:is24hour"

    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    return-object v0
.end method

.method public updateTime(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/app/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 19
    return-void
.end method
