.class public final Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEEP_COPY_VALIDATOR_KEY:Ljava/lang/String; = "DEEP_COPY_VALIDATOR_KEY"

.field public static final DEFAULT_END:J

.field public static final DEFAULT_START:J


# instance fields
.field private end:J

.field private openAt:Ljava/lang/Long;

.field private start:J

.field private validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x76c

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    .line 7
    move-result-object v0

    .line 8
    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    .line 16
    const/16 v0, 0x834

    .line 18
    const/16 v1, 0xb

    .line 20
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    .line 23
    move-result-object v0

    .line 24
    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    .line 26
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    .line 29
    move-result-wide v0

    .line 30
    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 3
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 7
    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 9
    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->access$100(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 10
    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->access$200(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 11
    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->access$300(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 12
    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->access$400(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/datepicker/CalendarConstraints;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 3
    if-nez v0, :cond_1c

    .line 5
    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker;->thisMonthInUtcMilliseconds()J

    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 11
    cmp-long v4, v2, v0

    .line 13
    if-gtz v4, :cond_15

    .line 15
    iget-wide v4, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 17
    cmp-long v4, v0, v4

    .line 19
    if-gtz v4, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move-wide v0, v2

    .line 23
    :goto_16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 29
    :cond_1c
    new-instance v0, Landroid/os/Bundle;

    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 36
    const-string v2, "DEEP_COPY_VALIDATOR_KEY"

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    new-instance v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 43
    iget-wide v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 45
    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    .line 48
    move-result-object v4

    .line 49
    iget-wide v5, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 51
    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    .line 54
    move-result-object v5

    .line 55
    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 57
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 60
    move-result-wide v6

    .line 61
    invoke-static {v6, v7}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 68
    move-result-object v0

    .line 69
    move-object v7, v0

    .line 70
    check-cast v7, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 72
    const/4 v8, 0x0

    .line 73
    move-object v3, v1

    .line 74
    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/CalendarConstraints$1;)V

    .line 77
    return-object v1
.end method

.method public setEnd(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 3
    return-object p0
.end method

.method public setOpenAt(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public setStart(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 3
    return-object p0
.end method

.method public setValidator(Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 3
    return-object p0
.end method
