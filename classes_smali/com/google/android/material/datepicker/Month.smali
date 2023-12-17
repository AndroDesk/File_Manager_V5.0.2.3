.class final Lcom/google/android/material/datepicker/Month;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/datepicker/Month;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/Month;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final daysInMonth:I

.field public final daysInWeek:I

.field private final firstOfMonth:Ljava/util/Calendar;

.field private final longName:Ljava/lang/String;

.field public final month:I

.field public final timeInMillis:J

.field public final year:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/Month$1;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/datepicker/Month$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/material/datepicker/Month;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x5

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 9
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 19
    move-result v2

    .line 20
    iput v2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 22
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    .line 41
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getYearMonthFormat()Ljava/text/SimpleDateFormat;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    .line 61
    return-void
.end method

.method public static create(II)Lcom/google/android/material/datepicker/Month;
    .registers 4

    .line 4
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 6
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 7
    new-instance p0, Lcom/google/android/material/datepicker/Month;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static create(J)Lcom/google/android/material/datepicker/Month;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    new-instance p0, Lcom/google/android/material/datepicker/Month;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static current()Lcom/google/android/material/datepicker/Month;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/Month;

    .line 3
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/material/datepicker/Month;)I
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    iget-object p1, p1, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result p1

    return p1
.end method

.method public daysFromStartOfWeekToFirstOfMonth()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 10
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    if-gez v0, :cond_13

    .line 17
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 19
    add-int/2addr v0, v1

    .line 20
    :cond_13
    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/datepicker/Month;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    .line 13
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 15
    iget v3, p1, Lcom/google/android/material/datepicker/Month;->month:I

    .line 17
    if-ne v1, v3, :cond_19

    .line 19
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 21
    iget p1, p1, Lcom/google/android/material/datepicker/Month;->year:I

    .line 23
    if-ne v1, p1, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v0, v2

    .line 27
    :goto_1a
    return v0
.end method

.method public getDay(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public getLongName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->longName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getStableId()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public monthsLater(I)Lcom/google/android/material/datepicker/Month;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 11
    new-instance p1, Lcom/google/android/material/datepicker/Month;

    .line 13
    invoke-direct {p1, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 16
    return-object p1
.end method

.method public monthsUntil(Lcom/google/android/material/datepicker/Month;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 3
    instance-of v0, v0, Ljava/util/GregorianCalendar;

    .line 5
    if-eqz v0, :cond_14

    .line 7
    iget v0, p1, Lcom/google/android/material/datepicker/Month;->year:I

    .line 9
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 11
    sub-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0xc

    .line 14
    iget p1, p1, Lcom/google/android/material/datepicker/Month;->month:I

    .line 16
    iget v1, p0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 18
    sub-int/2addr p1, v1

    .line 19
    add-int/2addr p1, v0

    .line 20
    return p1

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string v0, "Only Gregorian calendars are supported."

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    return-void
.end method
