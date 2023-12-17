.class public final Lcom/google/android/material/datepicker/MaterialCalendar;
.super Lcom/google/android/material/datepicker/PickerFragment;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;,
        Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/PickerFragment<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final CURRENT_MONTH_KEY:Ljava/lang/String; = "CURRENT_MONTH_KEY"

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field public static final MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

.field public static final NAVIGATION_NEXT_TAG:Ljava/lang/Object;

.field public static final NAVIGATION_PREV_TAG:Ljava/lang/Object;

.field public static final SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

.field private static final SMOOTH_SCROLL_MAX:I = 0x3

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field private calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field private current:Lcom/google/android/material/datepicker/Month;

.field private dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private dayFrame:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private themeResId:I

.field private yearFrame:Landroid/view/View;

.field private yearSelector:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    .line 3
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 5
    const-string v0, "NAVIGATION_PREV_TAG"

    .line 7
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 9
    const-string v0, "NAVIGATION_NEXT_TAG"

    .line 11
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 13
    const-string v0, "SELECTOR_TOGGLE_TAG"

    .line 15
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/PickerFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 3
    return-object p1
.end method

.method private addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V
    .registers 7

    .line 1
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 9
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$5;

    .line 16
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$5;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 19
    invoke-static {v0, v1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 22
    sget v1, Lcom/google/android/material/R$id;->month_navigation_previous:I

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 30
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    sget v2, Lcom/google/android/material/R$id;->month_navigation_next:I

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 43
    sget-object v3, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    sget v3, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    .line 50
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v3

    .line 54
    iput-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 56
    sget v3, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    .line 58
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 64
    sget-object p1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 71
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->getLongName()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    new-instance v3, Lcom/google/android/material/datepicker/MaterialCalendar$6;

    .line 82
    invoke-direct {v3, p0, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar$6;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/button/MaterialButton;)V

    .line 85
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 88
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendar$7;

    .line 90
    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$7;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendar$8;

    .line 98
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$8;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 101
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendar$9;

    .line 106
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$9;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 109
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$4;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$4;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 6
    return-object v0
.end method

.method public static getDayHeight(Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v2, "THEME_RES_ID_KEY"

    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const-string p1, "GRID_SELECTOR_KEY"

    .line 18
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    .line 23
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lcom/google/android/material/datepicker/Month;

    .line 29
    move-result-object p0

    .line 30
    const-string p1, "CURRENT_MONTH_KEY"

    .line 32
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method

.method private postSmoothRecyclerViewScroll(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$10;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method


# virtual methods
.method public getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    return-object v0
.end method

.method public getCalendarStyle()Lcom/google/android/material/datepicker/CalendarStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 3
    return-object v0
.end method

.method public getCurrentMonth()Lcom/google/android/material/datepicker/Month;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 3
    return-object v0
.end method

.method public getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 3
    return-object v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    if-nez p1, :cond_9

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    const-string v0, "THEME_RES_ID_KEY"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 18
    const-string v0, "GRID_SELECTOR_KEY"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    .line 26
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 28
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 36
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 38
    const-string v0, "CURRENT_MONTH_KEY"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    .line 46
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 9
    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    .line 14
    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 19
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {p3}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v1, :cond_28

    .line 37
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    .line 39
    move v9, v2

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    .line 43
    move v9, v3

    .line 44
    :goto_2b
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Landroid/widget/GridView;

    .line 56
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$1;

    .line 58
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 61
    invoke-static {p2, v1}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 64
    new-instance v1, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;

    .line 66
    invoke-direct {v1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>()V

    .line 69
    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 74
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 77
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    iput-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    new-instance p2, Lcom/google/android/material/datepicker/MaterialCalendar$2;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v6

    .line 96
    const/4 v8, 0x0

    .line 97
    move-object v4, p2

    .line 98
    move-object v5, p0

    .line 99
    move v7, v9

    .line 100
    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/datepicker/MaterialCalendar$2;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Landroid/content/Context;IZI)V

    .line 103
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    new-instance p2, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 117
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 119
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 121
    new-instance v4, Lcom/google/android/material/datepicker/MaterialCalendar$3;

    .line 123
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$3;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 126
    invoke-direct {p2, p3, v0, v1, v4}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 137
    move-result-object v0

    .line 138
    sget v1, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 143
    move-result v0

    .line 144
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    if-eqz v1, :cond_bb

    .line 156
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 159
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 163
    invoke-direct {v4, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 166
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    new-instance v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 173
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/YearGridAdapter;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 176
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 188
    :cond_bb
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_c6

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 199
    :cond_c6
    invoke-static {p3}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    .line 202
    move-result p3

    .line 203
    if-nez p3, :cond_d6

    .line 205
    new-instance p3, Landroidx/recyclerview/widget/l;

    .line 207
    invoke-direct {p3}, Landroidx/recyclerview/widget/l;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/v;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 215
    :cond_d6
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 219
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    .line 222
    move-result p2

    .line 223
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 226
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 6
    const-string v1, "THEME_RES_ID_KEY"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 13
    const-string v1, "GRID_SELECTOR_KEY"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 20
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 27
    const-string v1, "CURRENT_MONTH_KEY"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    return-void
.end method

.method public setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    .line 18
    move-result v0

    .line 19
    sub-int v0, v1, v0

    .line 21
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x3

    .line 28
    if-le v2, v5, :cond_1f

    .line 30
    move v2, v3

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v2, v4

    .line 33
    :goto_20
    if-lez v0, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v3, v4

    .line 37
    :goto_24
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 39
    if-eqz v2, :cond_35

    .line 41
    if-eqz v3, :cond_35

    .line 43
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    add-int/lit8 v0, v1, -0x3

    .line 47
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 50
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 53
    goto :goto_45

    .line 54
    :cond_35
    if-eqz v2, :cond_42

    .line 56
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    add-int/lit8 v0, v1, 0x3

    .line 60
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 63
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 66
    goto :goto_45

    .line 67
    :cond_42
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 70
    :goto_45
    return-void
.end method

.method public setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 3
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 5
    const/16 v1, 0x8

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v0, :cond_2d

    .line 10
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 24
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 26
    iget v3, v3, Lcom/google/android/material/datepicker/Month;->year:I

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 35
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    goto :goto_40

    .line 46
    :cond_2d
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 48
    if-ne p1, v0, :cond_40

    .line 50
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public toggleVisibleSelector()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 3
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 5
    if-ne v0, v1, :cond_c

    .line 7
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 15
    if-ne v0, v2, :cond_13

    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method
