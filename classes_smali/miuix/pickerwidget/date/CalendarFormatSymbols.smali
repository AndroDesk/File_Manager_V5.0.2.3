.class public Lmiuix/pickerwidget/date/CalendarFormatSymbols;
.super Ljava/lang/Object;
.source "CalendarFormatSymbols.java"


# static fields
.field private static INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/pickerwidget/date/CalendarFormatSymbols;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/pickerwidget/date/CalendarFormatSymbols;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->updateResource(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;
    .registers 2

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;

    .line 7
    invoke-direct {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;-><init>()V

    .line 10
    sput-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 12
    :cond_b
    sget-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 14
    invoke-virtual {v0, p0}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 20
    return-object p0
.end method

.method private updateResource(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 7
    return-void
.end method


# virtual methods
.method public getAmPms()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->am_pms:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getChineseDays()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->chinese_days:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getChineseDigits()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->chinese_digits:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getChineseLeapMonths()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->chinese_leap_months:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getChineseMonths()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->chinese_months:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getChineseSymbolAnimals()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->chinese_symbol_animals:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDetailedAmPms()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->detailed_am_pms:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEarthlyBranches()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->earthly_branches:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->eras:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getHeavenlyStems()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->heavenly_stems:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->months:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->months_short:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getShortWeekDays()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->week_days_short:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getShortestMonths()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->months_shortest:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getShortestWeekDays()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->week_days_shortest:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSolarTerms()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->solar_terms:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getWeekDays()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 3
    sget v1, Lmiuix/pickerwidget/R$array;->week_days:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
