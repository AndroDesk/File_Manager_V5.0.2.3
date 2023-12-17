.class public Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "MonthsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MonthsPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final monthTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 4
    sget v0, Lcom/google/android/material/R$id;->month_title:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthTitle:Landroid/widget/TextView;

    .line 14
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 16
    new-instance v1, Lm0/f0;

    .line 18
    sget v2, Lc0/b;->tag_accessibility_heading:I

    .line 20
    invoke-direct {v1, v2}, Lm0/f0;-><init>(I)V

    .line 23
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v1, v0, v2}, Lm0/g0$b;->e(Landroid/view/View;Ljava/lang/Object;)V

    .line 28
    sget v1, Lcom/google/android/material/R$id;->month_grid:I

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 36
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 38
    if-nez p2, :cond_2c

    .line 40
    const/16 p1, 0x8

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_2c
    return-void
.end method
