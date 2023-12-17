.class Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/slider/BaseSlider;

.field public virtualViewId:I


# direct methods
.method private constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->this$0:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->virtualViewId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/slider/BaseSlider;Lcom/google/android/material/slider/BaseSlider$1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->this$0:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/slider/BaseSlider;->access$300(Lcom/google/android/material/slider/BaseSlider;)Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->virtualViewId:I

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v0, v1, v2}, Lr0/a;->sendEventForVirtualView(II)Z

    .line 13
    return-void
.end method

.method public setVirtualViewId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->virtualViewId:I

    .line 3
    return-void
.end method
