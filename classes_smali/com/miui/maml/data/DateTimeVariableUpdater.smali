.class public Lcom/miui/maml/data/DateTimeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"

.field private static final fields:[I

.field private static sCalendar:Lmiuix/pickerwidget/date/Calendar;


# instance fields
.field private mAmPm:Lcom/miui/maml/data/IndexedVariable;

.field public mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private mCurrentTime:J

.field private mDate:Lcom/miui/maml/data/IndexedVariable;

.field private mDateLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

.field private volatile mFinished:Z

.field private mHour12:Lcom/miui/maml/data/IndexedVariable;

.field private mHour24:Lcom/miui/maml/data/IndexedVariable;

.field private mLastUpdatedTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMinute:Lcom/miui/maml/data/IndexedVariable;

.field private mMonth:Lcom/miui/maml/data/IndexedVariable;

.field private mMonth1:Lcom/miui/maml/data/IndexedVariable;

.field private mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

.field private mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lcom/miui/maml/data/IndexedVariable;

.field private mTime:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeAccuracy:J

.field private mTimeAccuracyField:I

.field private mTimeFormat:I

.field private mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeSys:Lcom/miui/maml/data/IndexedVariable;

.field private mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lcom/miui/maml/data/IndexedVariable;

.field private mYearLunar:Lcom/miui/maml/data/IndexedVariable;

.field private mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_a

    .line 7
    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->fields:[I

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_a
    .array-data 4
        0x16
        0x15
        0x14
        0x12
        0x9
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .registers 4

    .line 13
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 16
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 17
    invoke-direct {p0, p2}, Lcom/miui/maml/data/DateTimeVariableUpdater;->initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .registers 8

    .line 2
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Lcom/miui/maml/data/TimeUpdater;

    invoke-direct {p1, p0}, Lcom/miui/maml/data/TimeUpdater;-><init>(Lcom/miui/maml/data/DateTimeVariableUpdater;)V

    iput-object p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3c

    .line 8
    invoke-static {}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v1, :cond_3c

    aget-object v3, p1, v2

    .line 9
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    move-object v0, v3

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3c
    if-nez v0, :cond_56

    .line 10
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid accuracy tag:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DateTimeVariableUpdater"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_56
    invoke-direct {p0, v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public static formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 7
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 10
    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 12
    :cond_b
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 14
    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 17
    sget-object p1, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 19
    invoke-static {}, Lcom/miui/maml/util/Utils;->getAppContext()Landroid/content/Context;

    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2, p0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private initInner(Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .registers 7

    .line 1
    const-string v0, "init with accuracy:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DateTimeVariableUpdater"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$com$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result p1

    .line 29
    aget p1, v0, p1

    .line 31
    const/4 v0, 0x1

    .line 32
    if-eq p1, v0, :cond_4c

    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq p1, v1, :cond_42

    .line 37
    const/4 v1, 0x3

    .line 38
    const/16 v2, 0x14

    .line 40
    const-wide/32 v3, 0xea60

    .line 43
    if-eq p1, v1, :cond_3d

    .line 45
    const/4 v1, 0x4

    .line 46
    if-eq p1, v1, :cond_34

    .line 48
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 50
    iput v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 52
    goto :goto_55

    .line 53
    :cond_34
    const-wide/16 v1, 0x3e8

    .line 55
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 57
    const/16 p1, 0x15

    .line 59
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 61
    goto :goto_55

    .line 62
    :cond_3d
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 64
    iput v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 66
    goto :goto_55

    .line 67
    :cond_42
    const-wide/32 v1, 0x36ee80

    .line 70
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 72
    const/16 p1, 0x12

    .line 74
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 76
    goto :goto_55

    .line 77
    :cond_4c
    const-wide/32 v1, 0x5265c00

    .line 80
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 82
    const/16 p1, 0x9

    .line 84
    iput p1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 86
    :goto_55
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 92
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 94
    const-string v2, "year"

    .line 96
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 99
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYear:Lcom/miui/maml/data/IndexedVariable;

    .line 101
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 103
    const-string v2, "month"

    .line 105
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 108
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth:Lcom/miui/maml/data/IndexedVariable;

    .line 110
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 112
    const-string v2, "month1"

    .line 114
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 117
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth1:Lcom/miui/maml/data/IndexedVariable;

    .line 119
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 121
    const-string v2, "date"

    .line 123
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 126
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDate:Lcom/miui/maml/data/IndexedVariable;

    .line 128
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 130
    const-string v2, "year_lunar"

    .line 132
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 135
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 137
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 139
    const-string v2, "year_lunar1864"

    .line 141
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 144
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;

    .line 146
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 148
    const-string v2, "month_lunar"

    .line 150
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 153
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 155
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 157
    const-string v2, "month_lunar_leap"

    .line 159
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 162
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

    .line 164
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 166
    const-string v2, "date_lunar"

    .line 168
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 171
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 173
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 175
    const-string v2, "day_of_week"

    .line 177
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 180
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

    .line 182
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 184
    const-string v2, "ampm"

    .line 186
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 189
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mAmPm:Lcom/miui/maml/data/IndexedVariable;

    .line 191
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 193
    const-string v2, "hour12"

    .line 195
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 198
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour12:Lcom/miui/maml/data/IndexedVariable;

    .line 200
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 202
    const-string v2, "hour24"

    .line 204
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 207
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour24:Lcom/miui/maml/data/IndexedVariable;

    .line 209
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 211
    const-string v2, "minute"

    .line 213
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 216
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMinute:Lcom/miui/maml/data/IndexedVariable;

    .line 218
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 220
    const-string v2, "second"

    .line 222
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 225
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mSecond:Lcom/miui/maml/data/IndexedVariable;

    .line 227
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 229
    const-string v2, "time"

    .line 231
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 234
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTime:Lcom/miui/maml/data/IndexedVariable;

    .line 236
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 238
    const-string v2, "time_sys"

    .line 240
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 243
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 248
    move-result-wide v2

    .line 249
    long-to-double v2, v2

    .line 250
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 253
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 255
    const/4 v2, 0x0

    .line 256
    const-string v3, "next_alarm_time"

    .line 258
    invoke-direct {v1, v3, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 261
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

    .line 263
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 265
    const-string v2, "time_format"

    .line 267
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 270
    iput-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 272
    return-void
.end method

.method private refreshAlarm()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "next_alarm_formatted"

    .line 13
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lcom/miui/maml/data/IndexedVariable;

    .line 19
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method private updateTime()V
    .registers 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    long-to-double v3, v0

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 11
    const-wide/16 v2, 0x3e8

    .line 13
    div-long v2, v0, v2

    .line 15
    iget-wide v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 17
    cmp-long v4, v2, v4

    .line 19
    if-eqz v4, :cond_e6

    .line 21
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 23
    invoke-virtual {v4, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 26
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 32
    move-result v0

    .line 33
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 35
    const/4 v5, 0x5

    .line 36
    invoke-virtual {v4, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 39
    move-result v4

    .line 40
    iget-object v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 42
    const/16 v6, 0x9

    .line 44
    invoke-virtual {v5, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 47
    move-result v5

    .line 48
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mAmPm:Lcom/miui/maml/data/IndexedVariable;

    .line 50
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 52
    const/16 v8, 0x11

    .line 54
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 57
    move-result v7

    .line 58
    int-to-double v7, v7

    .line 59
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 62
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour24:Lcom/miui/maml/data/IndexedVariable;

    .line 64
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 66
    const/16 v8, 0x12

    .line 68
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 71
    move-result v7

    .line 72
    int-to-double v9, v7

    .line 73
    invoke-virtual {v6, v9, v10}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 76
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 78
    invoke-virtual {v6, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 81
    move-result v6

    .line 82
    rem-int/lit8 v6, v6, 0xc

    .line 84
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mHour12:Lcom/miui/maml/data/IndexedVariable;

    .line 86
    if-nez v6, :cond_5a

    .line 88
    const-wide/high16 v8, 0x4028000000000000L  # 12.0

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    int-to-double v8, v6

    .line 92
    :goto_5b
    invoke-virtual {v7, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 95
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMinute:Lcom/miui/maml/data/IndexedVariable;

    .line 97
    iget-object v7, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 99
    const/16 v8, 0x14

    .line 101
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 104
    move-result v7

    .line 105
    int-to-double v7, v7

    .line 106
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 109
    iget-object v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYear:Lcom/miui/maml/data/IndexedVariable;

    .line 111
    int-to-double v7, v0

    .line 112
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 115
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth:Lcom/miui/maml/data/IndexedVariable;

    .line 117
    int-to-double v6, v4

    .line 118
    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 121
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonth1:Lcom/miui/maml/data/IndexedVariable;

    .line 123
    add-int/2addr v4, v1

    .line 124
    int-to-double v6, v4

    .line 125
    invoke-virtual {v0, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 128
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDate:Lcom/miui/maml/data/IndexedVariable;

    .line 130
    int-to-double v4, v5

    .line 131
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 134
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lcom/miui/maml/data/IndexedVariable;

    .line 136
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 138
    const/16 v4, 0xe

    .line 140
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 143
    move-result v1

    .line 144
    int-to-double v4, v1

    .line 145
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 148
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mSecond:Lcom/miui/maml/data/IndexedVariable;

    .line 150
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 152
    const/16 v4, 0x15

    .line 154
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 157
    move-result v1

    .line 158
    int-to-double v4, v1

    .line 159
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 162
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 164
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 166
    const/4 v4, 0x2

    .line 167
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 170
    move-result v1

    .line 171
    int-to-double v4, v1

    .line 172
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 175
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 177
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 179
    const/4 v4, 0x6

    .line 180
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 183
    move-result v1

    .line 184
    int-to-double v4, v1

    .line 185
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 188
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lcom/miui/maml/data/IndexedVariable;

    .line 190
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 192
    const/16 v4, 0xa

    .line 194
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 197
    move-result v1

    .line 198
    int-to-double v4, v1

    .line 199
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 202
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lcom/miui/maml/data/IndexedVariable;

    .line 204
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 206
    const/4 v4, 0x4

    .line 207
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 210
    move-result v1

    .line 211
    int-to-double v4, v1

    .line 212
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 215
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lcom/miui/maml/data/IndexedVariable;

    .line 217
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 219
    const/16 v4, 0x8

    .line 221
    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 224
    move-result v1

    .line 225
    int-to-double v4, v1

    .line 226
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 229
    iput-wide v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 231
    :cond_e6
    return-void
.end method


# virtual methods
.method public checkUpdateTime()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    .line 3
    if-nez v0, :cond_81

    .line 5
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-boolean v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    .line 10
    if-eqz v1, :cond_d

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    move-result-wide v1

    .line 31
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 33
    invoke-virtual {v3, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 36
    sget-object v3, Lcom/miui/maml/data/DateTimeVariableUpdater;->fields:[I

    .line 38
    array-length v4, v3

    .line 39
    const/4 v5, 0x0

    .line 40
    move v6, v5

    .line 41
    :goto_28
    if-ge v6, v4, :cond_39

    .line 43
    aget v7, v3, v6

    .line 45
    iget v8, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 47
    if-ne v7, v8, :cond_31

    .line 49
    goto :goto_39

    .line 50
    :cond_31
    iget-object v8, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 52
    invoke-virtual {v8, v7, v5}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 57
    goto :goto_28

    .line 58
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 61
    move-result-object v3

    .line 62
    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_46

    .line 70
    const/4 v5, 0x1

    .line 71
    :cond_46
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 73
    invoke-virtual {v3}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    .line 76
    move-result-wide v3

    .line 77
    iget-wide v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 79
    cmp-long v6, v6, v3

    .line 81
    if-nez v6, :cond_56

    .line 83
    iget v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 85
    if-eq v6, v5, :cond_6c

    .line 87
    :cond_56
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 89
    iget-wide v6, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 91
    add-long/2addr v3, v6

    .line 92
    iput-wide v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 94
    iput v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 96
    iget-object v3, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 98
    int-to-double v4, v5

    .line 99
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 102
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 109
    :cond_6c
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 116
    move-result-object v3

    .line 117
    iget-object v4, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 119
    iget-wide v5, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 121
    sub-long/2addr v5, v1

    .line 122
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    monitor-exit v0

    .line 126
    goto :goto_81

    .line 127
    :catchall_7e
    move-exception v1

    .line 128
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7 .. :try_end_80} :catchall_7e

    .line 129
    throw v1

    .line 130
    :cond_81
    :goto_81
    return-void
.end method

.method public finish()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->finish()V

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    .line 10
    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 14
    const/4 v1, 0x0

    .line 15
    sput-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    .line 34
    throw v1
.end method

.method public init()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->init()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 7
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 13
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 7
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->pause()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getContext()Lcom/miui/maml/ScreenContext;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public resetCalendar()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 8
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 10
    if-eqz v0, :cond_12

    .line 12
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 14
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 17
    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 19
    :cond_12
    return-void
.end method

.method public resume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/NotifierVariableUpdater;->resume()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 13
    return-void
.end method

.method public tick(J)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/VariableUpdater;->tick(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/data/DateTimeVariableUpdater;->mTime:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    long-to-double p1, p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 10
    invoke-direct {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 13
    return-void
.end method
