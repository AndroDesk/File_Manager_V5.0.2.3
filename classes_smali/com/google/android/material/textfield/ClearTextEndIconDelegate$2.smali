.class Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/ClearTextEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    .line 1
    check-cast p1, Landroid/widget/EditText;

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    xor-int/2addr p1, v0

    .line 13
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 15
    if-eqz p1, :cond_13

    .line 17
    if-eqz p2, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->access$100(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Z)V

    .line 24
    return-void
.end method
