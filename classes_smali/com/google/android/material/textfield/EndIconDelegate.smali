.class abstract Lcom/google/android/material/textfield/EndIconDelegate;
.super Ljava/lang/Object;
.source "EndIconDelegate.java"


# instance fields
.field public context:Landroid/content/Context;

.field public endIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field public textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract initialize()V
.end method

.method public isBoxBackgroundModeSupported(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onSuffixVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public shouldTintIconOnError()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
