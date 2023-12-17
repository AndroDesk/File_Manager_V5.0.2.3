.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSystemGestureInsets(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lm0/r0;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Lm0/r0;
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    iget-object p3, p2, Lm0/r0;->a:Lm0/r0$k;

    .line 5
    invoke-virtual {p3}, Lm0/r0$k;->g()Lf0/f;

    .line 8
    move-result-object p3

    .line 9
    iget p3, p3, Lf0/f;->d:I

    .line 11
    invoke-static {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 14
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-static {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    .line 20
    return-object p2
.end method
