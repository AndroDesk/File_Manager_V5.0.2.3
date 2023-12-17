.class public Lmiuix/appcompat/app/DatePickerDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private final mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

.field private mLunarModePanel:Landroid/view/View;

.field private mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 8

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 4
    new-instance p1, Lmiuix/appcompat/app/DatePickerDialog$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/DatePickerDialog$1;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    .line 5
    iput-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    .line 6
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x104000a

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p3, Lmiuix/appcompat/app/DatePickerDialog$2;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/DatePickerDialog$2;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p2, v0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    const-string p3, "layout_inflater"

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 12
    sget p3, Lmiuix/appcompat/R$layout;->miuix_appcompat_date_picker_dialog:I

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 14
    sget p3, Lmiuix/appcompat/R$id;->datePicker:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/pickerwidget/widget/DatePicker;

    iput-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p3, p4, p5, p6, v0}, Lmiuix/pickerwidget/widget/DatePicker;->init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V

    .line 16
    invoke-direct {p0, p4, p5, p6}, Lmiuix/appcompat/app/DatePickerDialog;->updateTitle(III)V

    .line 17
    sget p3, Lmiuix/appcompat/R$id;->lunarModePanel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    .line 18
    sget p3, Lmiuix/appcompat/R$id;->datePickerLunar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 19
    new-instance p3, Lmiuix/appcompat/app/e;

    invoke-direct {p3, p0, p2}, Lmiuix/appcompat/app/e;-><init>(Lmiuix/appcompat/app/AlertDialog;I)V

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/DatePickerDialog;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/DatePickerDialog;III)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/app/DatePickerDialog;->updateTitle(III)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/DatePickerDialog;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/DatePickerDialog;->tryNotifyDateSet()V

    .line 4
    return-void
.end method

.method public static synthetic d(Lmiuix/appcompat/app/DatePickerDialog;Landroid/widget/CompoundButton;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/DatePickerDialog;->lambda$new$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 3
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/DatePicker;->setLunarMode(Z)V

    .line 6
    return-void
.end method

.method private tryNotifyDateSet()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    .line 3
    if-eqz v0, :cond_20

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 14
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DatePicker;->getYear()I

    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 20
    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/DatePicker;->getMonth()I

    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 26
    invoke-virtual {v4}, Lmiuix/pickerwidget/widget/DatePicker;->getDayOfMonth()I

    .line 29
    move-result v4

    .line 30
    invoke-interface {v0, v1, v2, v3, v4}, Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lmiuix/pickerwidget/widget/DatePicker;III)V

    .line 33
    :cond_20
    return-void
.end method

.method private updateTitle(III)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 9
    const/4 v0, 0x5

    .line 10
    invoke-virtual {p1, v0, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 15
    const/16 p2, 0x9

    .line 17
    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 26
    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 29
    move-result-wide p2

    .line 30
    const/16 v0, 0x3780

    .line 32
    invoke-static {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getDatePicker()Lmiuix/pickerwidget/widget/DatePicker;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 3
    return-object v0
.end method

.method public setLunarMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

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

.method public setTitle(I)V
    .registers 2

    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/app/q;->setTitle(I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public switchLunarState(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->setLunarMode(Z)V

    .line 11
    return-void
.end method

.method public updateDate(III)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->updateDate(III)V

    .line 6
    return-void
.end method
