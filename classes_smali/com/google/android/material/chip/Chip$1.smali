.class Lcom/google/android/material/chip/Chip$1;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 2

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_17

    .line 13
    iget-object p2, p0, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    .line 15
    invoke-static {p2}, Lcom/google/android/material/chip/Chip;->access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    .line 22
    move-result-object p2

    .line 23
    goto :goto_1d

    .line 24
    :cond_17
    iget-object p2, p0, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    .line 26
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 29
    move-result-object p2

    .line 30
    :goto_1d
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 38
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 43
    return-void
.end method
