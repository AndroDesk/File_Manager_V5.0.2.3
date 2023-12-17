.class Lcom/google/android/material/datepicker/MaterialCalendar$7;
.super Ljava/lang/Object;
.source "MaterialCalendar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->toggleVisibleSelector()V

    .line 6
    return-void
.end method
