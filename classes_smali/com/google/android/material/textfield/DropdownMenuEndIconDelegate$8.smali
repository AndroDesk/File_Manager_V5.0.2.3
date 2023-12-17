.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior(Landroid/widget/AutoCompleteTextView;)V
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
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$202(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v0, v1, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1302(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;J)J

    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;->this$0:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$100(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)V

    .line 22
    return-void
.end method
