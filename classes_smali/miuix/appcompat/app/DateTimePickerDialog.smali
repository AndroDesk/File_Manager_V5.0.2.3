.class public Lmiuix/appcompat/app/DateTimePickerDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "DateTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private mLunarModePanel:Landroid/view/View;

.field private mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mTimeListener:Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

.field private mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;I)V
    .registers 4

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimeListener:Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

    .line 4
    invoke-direct {p0, p3}, Lmiuix/appcompat/app/DateTimePickerDialog;->init(I)V

    .line 5
    sget p1, Lmiuix/appcompat/R$string;->date_time_picker_dialog_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->setTitle(I)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimeListener:Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/pickerwidget/widget/DateTimePicker;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lmiuix/appcompat/app/DateTimePickerDialog;Landroid/widget/CompoundButton;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/DateTimePickerDialog;->lambda$init$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private init(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x104000a

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lmiuix/appcompat/app/DateTimePickerDialog$1;

    .line 14
    invoke-direct {v1, p0}, Lmiuix/appcompat/app/DateTimePickerDialog$1;-><init>(Lmiuix/appcompat/app/DateTimePickerDialog;)V

    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {p0, v2, v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    const/high16 v1, 0x1040000

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, -0x2

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "layout_inflater"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_datetime_picker_dialog:I

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 57
    sget v1, Lmiuix/appcompat/R$id;->dateTimePicker:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 65
    iput-object v1, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 67
    invoke-virtual {v1, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinuteInterval(I)V

    .line 70
    sget p1, Lmiuix/appcompat/R$id;->lunarModePanel:I

    .line 72
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mLunarModePanel:Landroid/view/View;

    .line 78
    sget p1, Lmiuix/appcompat/R$id;->datePickerLunar:I

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 86
    iput-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 88
    new-instance v0, Lmiuix/appcompat/app/e;

    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/e;-><init>(Lmiuix/appcompat/app/AlertDialog;I)V

    .line 94
    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    return-void
.end method

.method private synthetic lambda$init$0(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setLunarMode(Z)V

    .line 6
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public setLunarMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mLunarModePanel:Landroid/view/View;

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/16 p1, 0x8

    .line 9
    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method

.method public setMaxDateTime(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMaxDateTime(J)V

    .line 6
    return-void
.end method

.method public setMinDateTime(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinDateTime(J)V

    .line 6
    return-void
.end method

.method public switchLunarState(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->setLunarMode(Z)V

    .line 11
    return-void
.end method

.method public update(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->update(J)V

    .line 6
    return-void
.end method
