.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettleRunnable"
.end annotation


# instance fields
.field private isPosted:Z

.field public targetState:I

.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 8
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 10
    return-void
.end method

.method public static synthetic access$300(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    .line 3
    return p1
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lr0/c;

    .line 5
    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {v0}, Lr0/c;->h()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 15
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 23
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 28
    :goto_1b
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    .line 31
    return-void
.end method
