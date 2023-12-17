.class Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;
.super Ljava/lang/Object;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/DateTimeScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateFormatter"
.end annotation


# instance fields
.field private mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field private mCurDay:I

.field private mLunarDate:Ljava/lang/String;

.field private mOldFormat:Ljava/lang/String;

.field private mPreValue:J

.field private mText:Ljava/lang/String;

.field private mTextFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mTimeZoneExp:Lcom/miui/maml/data/Expression;

.field private mValueExp:Lcom/miui/maml/data/Expression;

.field public final synthetic this$0:Lcom/miui/maml/elements/DateTimeScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V
    .registers 5

    .line 2
    iput-object p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lcom/miui/maml/elements/DateTimeScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    .line 5
    iput-object p2, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 6
    iput-object p3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lcom/miui/maml/data/Expression;

    .line 7
    iput-object p4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTextFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 3
    const-string v1, ""

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-object v1

    .line 8
    :cond_7
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return-object v1

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mValueExp:Lcom/miui/maml/data/Expression;

    .line 17
    if-eqz v1, :cond_1a

    .line 19
    iget-object v2, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lcom/miui/maml/elements/DateTimeScreenElement;

    .line 21
    invoke-virtual {v2, v1}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 24
    move-result-wide v1

    .line 25
    double-to-long v1, v1

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    move-result-wide v1

    .line 31
    :goto_1e
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    .line 33
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_37

    .line 39
    iget-wide v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    .line 41
    sub-long v3, v1, v3

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 46
    move-result-wide v3

    .line 47
    const-wide/16 v5, 0xc8

    .line 49
    cmp-long v3, v3, v5

    .line 51
    if-gez v3, :cond_37

    .line 53
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    .line 55
    return-object v0

    .line 56
    :cond_37
    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mOldFormat:Ljava/lang/String;

    .line 58
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 60
    invoke-virtual {v3, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 63
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    .line 65
    if-eqz v3, :cond_55

    .line 67
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_55

    .line 77
    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 79
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    .line 86
    :cond_55
    iget-object v3, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->this$0:Lcom/miui/maml/elements/DateTimeScreenElement;

    .line 88
    invoke-virtual {v3}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 91
    move-result-object v3

    .line 92
    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 94
    const-string v4, "NNNN"

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_b6

    .line 102
    iget-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 104
    const/16 v6, 0x9

    .line 106
    invoke-virtual {v5, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 109
    move-result v5

    .line 110
    iget v7, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    .line 112
    if-eq v5, v7, :cond_b0

    .line 114
    iget-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 116
    const-string v7, "N月e"

    .line 118
    invoke-virtual {v5, v3, v7}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 121
    move-result-object v5

    .line 122
    iput-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 124
    iget-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 126
    const-string v7, "t"

    .line 128
    invoke-virtual {v5, v3, v7}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 131
    move-result-object v5

    .line 132
    if-eqz v5, :cond_94

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iget-object v8, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 141
    const-string v9, " "

    .line 143
    invoke-static {v7, v8, v9, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v5

    .line 147
    iput-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 149
    :cond_94
    iget-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 151
    invoke-virtual {v5, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 154
    move-result v5

    .line 155
    iput v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCurDay:I

    .line 157
    const-string v5, "get lunar date:"

    .line 159
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    move-result-object v5

    .line 163
    iget-object v6, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v5

    .line 172
    const-string v6, "DateTimeScreenElement"

    .line 174
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_b0
    iget-object v5, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mLunarDate:Ljava/lang/String;

    .line 179
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    :cond_b6
    iget-object v4, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 185
    invoke-virtual {v4, v3, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mText:Ljava/lang/String;

    .line 191
    iput-wide v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mPreValue:J

    .line 193
    return-object v0
.end method

.method public resetCalendar()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 8
    return-void
.end method
