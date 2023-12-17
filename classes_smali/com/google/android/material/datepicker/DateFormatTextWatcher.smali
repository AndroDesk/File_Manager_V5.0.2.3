.class abstract Lcom/google/android/material/datepicker/DateFormatTextWatcher;
.super Ljava/lang/Object;
.source "DateFormatTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private final dateFormat:Ljava/text/DateFormat;

.field private final formatHint:Ljava/lang/String;

.field private final outOfRange:Ljava/lang/String;

.field private final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->formatHint:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->dateFormat:Ljava/text/DateFormat;

    .line 8
    iput-object p3, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    iput-object p4, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    sget p2, Lcom/google/android/material/R$string;->mtrl_picker_out_of_range:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->outOfRange:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onInvalidDate()V
    .registers 1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    if-eqz p2, :cond_10

    .line 8
    iget-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onValidDate(Ljava/lang/Long;)V

    .line 16
    return-void

    .line 17
    :cond_10
    const/4 p2, 0x0

    .line 18
    const/4 p4, 0x1

    .line 19
    :try_start_12
    iget-object v0, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->dateFormat:Ljava/text/DateFormat;

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 31
    invoke-virtual {v0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 37
    move-result-wide v0

    .line 38
    iget-object p3, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 40
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 43
    move-result-object p3

    .line 44
    invoke-interface {p3, v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_46

    .line 50
    iget-object p3, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->constraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 52
    invoke-virtual {p3, v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->isWithinBounds(J)Z

    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_46

    .line 58
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 61
    move-result-wide v0

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onValidDate(Ljava/lang/Long;)V

    .line 69
    goto/16 :goto_c8

    .line 71
    :cond_46
    iget-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    iget-object p3, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->outOfRange:Ljava/lang/String;

    .line 75
    new-array v2, p4, [Ljava/lang/Object;

    .line 77
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateStrings;->getDateString(J)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    aput-object v0, v2, p2

    .line 83
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onInvalidDate()V
    :try_end_5c
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_5c} :catch_5d

    .line 93
    goto :goto_c8

    .line 94
    :catch_5d
    iget-object p1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    move-result-object p1

    .line 100
    sget p3, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format:I

    .line 102
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    iget-object p3, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 108
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    move-result-object p3

    .line 112
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format_use:I

    .line 114
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object p3

    .line 118
    new-array v0, p4, [Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->formatHint:Ljava/lang/String;

    .line 122
    aput-object v1, v0, p2

    .line 124
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object p3

    .line 128
    iget-object v0, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    move-result-object v0

    .line 134
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_invalid_format_example:I

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    new-array p4, p4, [Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->dateFormat:Ljava/text/DateFormat;

    .line 144
    new-instance v2, Ljava/util/Date;

    .line 146
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 153
    move-result-wide v3

    .line 154
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 157
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    aput-object v1, p4, p2

    .line 163
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    move-result-object p2

    .line 167
    iget-object p4, p0, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string p1, "\n"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p4, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;->onInvalidDate()V

    .line 201
    :goto_c8
    return-void
.end method

.method public abstract onValidDate(Ljava/lang/Long;)V
.end method
