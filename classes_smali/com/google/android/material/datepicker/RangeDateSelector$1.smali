.class Lcom/google/android/material/datepicker/RangeDateSelector$1;
.super Lcom/google/android/material/datepicker/DateFormatTextWatcher;
.source "RangeDateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/RangeDateSelector;->onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

.field public final synthetic val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

.field public final synthetic val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    .line 3
    iput-object p6, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    iput-object p7, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    iput-object p8, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 9
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    .line 12
    return-void
.end method


# virtual methods
.method public onInvalidDate()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$002(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    .line 9
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    .line 18
    return-void
.end method

.method public onValidDate(Ljava/lang/Long;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$002(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    .line 8
    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    .line 17
    return-void
.end method
