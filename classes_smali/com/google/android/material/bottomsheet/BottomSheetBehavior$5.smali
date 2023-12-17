.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ln0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ln0/c$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public final synthetic val$state:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->val$state:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Ln0/g$a;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->val$state:I

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method
