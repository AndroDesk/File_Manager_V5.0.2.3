.class Lcom/google/android/material/datepicker/RangeDateSelector$2;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object p6, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p7, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p8, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/DateFormatTextWatcher;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method public onInvalidDate()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$202(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    return-void
.end method

.method public onValidDate(Ljava/lang/Long;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$202(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->this$0:Lcom/google/android/material/datepicker/RangeDateSelector;

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$startTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$endTextInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$2;->val$listener:Lcom/google/android/material/datepicker/OnSelectionChangedListener;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->access$100(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)V

    return-void
.end method
