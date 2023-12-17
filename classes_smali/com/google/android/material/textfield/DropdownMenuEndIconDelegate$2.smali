.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 3
    iget-object p1, p1, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    .line 8
    if-nez p2, :cond_14

    .line 10
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$100(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)V

    .line 16
    iget-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$202(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z

    .line 21
    :cond_14
    return-void
.end method
