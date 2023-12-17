.class Lcom/google/android/material/datepicker/MaterialCalendar$5;
.super Lm0/a;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 3
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 6
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$500(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_18

    .line 16
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 18
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_year_selection:I

    .line 20
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_20

    .line 25
    :cond_18
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 27
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_day_selection:I

    .line 29
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    :goto_20
    invoke-virtual {p2, p1}, Ln0/c;->m(Ljava/lang/String;)V

    .line 36
    return-void
.end method
